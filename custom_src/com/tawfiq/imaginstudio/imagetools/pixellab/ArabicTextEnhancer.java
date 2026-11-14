package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Enhanced Arabic Line Justification & Kashida Engine for PixelLab.
 * Exact 1:1 port of Madd calligraphic engine + Sub-pixel Micro-tuning for Millimeter Precision.
 */
public class ArabicTextEnhancer {

    public static final int ACTION_JUSTIFY_LINES = 0x77; // 119
    public static final char TATWEEL = '\u0640';

    // 1. Dual-Joining (Left-Connecting) Letters (30 chars)
    public static final String DUAL_JOINING = "بتثجحخسشصضطظعغفقكلمنهيئپچگکیڤٹ";

    // 2. Right-Only Joining Letters (14 chars)
    public static final String RIGHT_ONLY = "ادذرزوؤإأآٱةىژ";

    // 3. Alef Variants for Lam-Alef Ligature Protection (5 chars)
    public static final String ALEF_VARIANTS = "اأإآٱ";

    // 4. Sacred Excluded Words (never stretched)
    public static final Set<String> SACRED_WORDS = new HashSet<String>(Arrays.asList(
        "الله", "لله", "والله", "بالله", "تالله", "فالله", "اللهم"
    ));

    // 5. Special Maqsura Words
    public static final Set<String> SPECIAL_MAQSURA = new HashSet<String>(Arrays.asList(
        "حتى", "متى"
    ));

    // 6. Final Yeh variants
    public static final String FINAL_YEH = "يىیئ";

    // 7. Pre-Final Yeh Avoidance Letters
    public static final String PRE_FINAL_YEH_AVOID = "برمنخ";

    // 8. Final Teh-Marbuta / Heh Set
    public static final String FINAL_TEH_HEH = "ةه";

    // 9. High-priority calligraphic connection teeth/loops
    public static final String HIGH_PRIORITY_AFTER = "سشصضطظعغفقكبتحثمهي";

    public static int dp(Context context, int dp) {
        if (context == null) return dp;
        return (int) TypedValue.applyDimension(
            TypedValue.COMPLEX_UNIT_DIP, dp, context.getResources().getDisplayMetrics());
    }

    public static Activity getActivity(Context context) {
        if (context == null) return null;
        if (context instanceof Activity) return (Activity) context;
        if (context instanceof ContextWrapper) {
            Context base = ((ContextWrapper) context).getBaseContext();
            return getActivity(base);
        }
        return null;
    }

    public static boolean containsArabic(String text) {
        if (text == null) return false;
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if ((c >= 0x0600 && c <= 0x06FF) || (c >= 0x0750 && c <= 0x077F) || (c >= 0x08A0 && c <= 0x08FF)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isHaraka(char c) {
        return (c >= 0x064B && c <= 0x065F) || c == 0x0670;
    }

    public static boolean isDualJoining(char c) {
        return DUAL_JOINING.indexOf(c) != -1;
    }

    public static boolean isRightConnecting(char c) {
        return DUAL_JOINING.indexOf(c) != -1 || RIGHT_ONLY.indexOf(c) != -1;
    }

    public static boolean isAlefVariant(char c) {
        return ALEF_VARIANTS.indexOf(c) != -1;
    }

    public static boolean isSacred(String plainWord) {
        if (plainWord == null) return false;
        if (SACRED_WORDS.contains(plainWord)) return true;
        if (plainWord.length() >= 4 && (plainWord.endsWith("الله") || plainWord.endsWith("لله"))) return true;
        return false;
    }

    public static String cleanTatweel(String text) {
        if (text == null) return "";
        return text.replace(String.valueOf(TATWEEL), "")
                   .replace("\u200A", "")
                   .replace("\u2009", "")
                   .replace("\u2006", "");
    }

    public static class Candidate {
        public final int insertBeforeIndex;
        public final int score;

        public Candidate(int idx, int score) {
            this.insertBeforeIndex = idx;
            this.score = score;
        }
    }

    public static void sortCandidatesByScore(List<Candidate> list) {
        if (list == null || list.size() <= 1) return;
        for (int i = 1; i < list.size(); i++) {
            Candidate key = list.get(i);
            int j = i - 1;
            while (j >= 0 && list.get(j).score < key.score) {
                list.set(j + 1, list.get(j));
                j--;
            }
            list.set(j + 1, key);
        }
    }

    public static void sortSlotsByIndexDescending(List<int[]> list) {
        if (list == null || list.size() <= 1) return;
        for (int i = 1; i < list.size(); i++) {
            int[] key = list.get(i);
            int j = i - 1;
            while (j >= 0 && list.get(j)[0] < key[0]) {
                list.set(j + 1, list.get(j));
                j--;
            }
            list.set(j + 1, key);
        }
    }

    /**
     * Exact MaddCore algorithm for finding calligraphic insertion points and scoring.
     */
    public static List<Candidate> findInsertionPoints(String cleanWord) {
        if (cleanWord == null || cleanWord.length() < 2) return Collections.emptyList();

        List<Integer> baseIndices = new ArrayList<Integer>();
        StringBuilder plainBuilder = new StringBuilder();

        for (int i = 0; i < cleanWord.length(); i++) {
            char c = cleanWord.charAt(i);
            if (!isHaraka(c) && isRightConnecting(c)) {
                baseIndices.add(i);
                plainBuilder.append(c);
            }
        }

        if (plainBuilder.length() < 2) return Collections.emptyList();
        String plainWord = plainBuilder.toString();
        if (isSacred(plainWord)) return Collections.emptyList();

        if (SPECIAL_MAQSURA.contains(plainWord) && baseIndices.size() >= 2) {
            return Collections.singletonList(new Candidate(baseIndices.get(1), 20));
        }

        List<Candidate> candidates = new ArrayList<Candidate>();
        int n = baseIndices.size();

        for (int k = 0; k < n - 1; k++) {
            int idxA = baseIndices.get(k);
            int idxB = baseIndices.get(k + 1);
            char charA = cleanWord.charAt(idxA);
            char charB = cleanWord.charAt(idxB);

            if (!isDualJoining(charA) || !isRightConnecting(charB)) continue;

            // 1. Lam-Alef ligature protection
            if (charA == 'ل' && isAlefVariant(charB)) continue;

            // 2. Avoid pre-final Yeh avoidance
            boolean isLastPair = (k == n - 2);
            if (isLastPair && FINAL_YEH.indexOf(charB) != -1 && PRE_FINAL_YEH_AVOID.indexOf(charA) != -1) {
                continue;
            }

            // 3. Calligraphic priority scoring
            int score = HIGH_PRIORITY_AFTER.indexOf(charA) != -1 ? 12 : 6;
            if (isLastPair && FINAL_TEH_HEH.indexOf(charB) != -1) score += 6;
            if (k >= n / 2) score += 4;
            if (isLastPair && FINAL_YEH.indexOf(charB) != -1) score -= 2;

            candidates.add(new Candidate(idxB, score));
        }

        sortCandidatesByScore(candidates);
        return candidates;
    }

    /**
     * Stretches a single word by distributing tatweels using Madd multi-slot thresholds.
     */
    public static String stretchWord(String word, int count) {
        String clean = cleanTatweel(word);
        if (count <= 0) return clean;
        List<Candidate> pts = findInsertionPoints(clean);
        if (pts.isEmpty()) return clean;

        int maxSlots = 1;
        if (count >= 15) maxSlots = 4;
        else if (count >= 11) maxSlots = 3;
        else if (count >= 7) maxSlots = 2;

        int numSlots = Math.min(pts.size(), maxSlots);
        List<Candidate> selected = pts.subList(0, numSlots);

        int[] slotCounts = new int[numSlots];
        int baseCount = count / numSlots;
        int rem = count % numSlots;
        for (int r = 0; r < numSlots; r++) {
            slotCounts[r] = baseCount + (r < rem ? 1 : 0);
        }

        List<int[]> indexed = new ArrayList<int[]>();
        for (int i = 0; i < numSlots; i++) {
            indexed.add(new int[]{selected.get(i).insertBeforeIndex, slotCounts[i]});
        }
        sortSlotsByIndexDescending(indexed);

        StringBuilder sb = new StringBuilder(clean);
        for (int[] entry : indexed) {
            int pos = entry[0];
            int cnt = entry[1];
            if (cnt > 0) {
                char[] tArr = new char[cnt];
                Arrays.fill(tArr, TATWEEL);
                sb.insert(pos, tArr);
            }
        }
        return sb.toString();
    }

    /**
     * Stretches a single line by distributing tatweels across its stretchable words.
     */
    public static String stretchLineWords(String cleanLine, int totalTatweels) {
        if (totalTatweels <= 0 || cleanLine == null) return cleanLine;
        String[] tokens = cleanLine.split("(?<=\\s)|(?=\\s)");
        List<Integer> stretchableIndices = new ArrayList<Integer>();
        for (int i = 0; i < tokens.length; i++) {
            String tok = tokens[i];
            if (tok.trim().length() > 0 && !findInsertionPoints(tok).isEmpty()) {
                stretchableIndices.add(i);
            }
        }
        if (stretchableIndices.isEmpty()) return cleanLine;

        int numWords = stretchableIndices.size();
        int baseCount = totalTatweels / numWords;
        int rem = totalTatweels % numWords;

        for (int idx = 0; idx < numWords; idx++) {
            int tokenIdx = stretchableIndices.get(idx);
            int count = baseCount + (idx < rem ? 1 : 0);
            tokens[tokenIdx] = stretchWord(tokens[tokenIdx], count);
        }

        StringBuilder res = new StringBuilder();
        for (String tok : tokens) {
            res.append(tok);
        }
        return res.toString();
    }

    /**
     * Applies automatic Kashida across all words with given intensity.
     */
    public static String applyAutoKashida(String rawText, int kashidaLength) {
        if (rawText == null || rawText.isEmpty()) return "";
        String cleanText = cleanTatweel(rawText);
        if (kashidaLength <= 0) return cleanText;

        String[] lines = cleanText.split("\n", -1);
        StringBuilder sb = new StringBuilder();
        for (int l = 0; l < lines.length; l++) {
            String line = lines[l];
            String[] tokens = line.split("(?<=\\s)|(?=\\s)");
            for (String tok : tokens) {
                if (tok.trim().isEmpty()) {
                    sb.append(tok);
                } else {
                    sb.append(stretchWord(tok, kashidaLength));
                }
            }
            if (l < lines.length - 1) sb.append("\n");
        }
        return sb.toString();
    }

    /**
     * Measures the exact width of a single Tatweel character in the active font.
     */
    public static float measureTatweelWidth(TextPaint paint) {
        if (paint == null) return 15f;
        float wBB = paint.measureText("بب");
        float wBtB = paint.measureText("بـب");
        float diff = wBtB - wBB;
        if (diff > 0.5f) {
            return diff;
        }
        float iso = paint.measureText(String.valueOf(TATWEEL));
        if (iso > 0.5f) {
            return iso;
        }
        return Math.max(2.0f, paint.getTextSize() * 0.35f);
    }

    /**
     * Exact 1:1 port of Madd justifyLines (com.a7ahmed.Madd KashidaEngine).
     * Pure Arabic Tatweel (ـ) only — 0% hair spaces, 0% space stretching.
     * Balances every shorter line to match the widest line in the block.
     */
    public static String justifyLines(String rawText, TextPaint paint, Float explicitTargetWidth) {
        if (rawText == null || rawText.trim().isEmpty()) return rawText;
        String[] rawLines = rawText.split("\n", -1);
        List<Integer> nonEmpty = new ArrayList<Integer>();
        for (int i = 0; i < rawLines.length; i++) {
            if (rawLines[i].trim().length() > 0) {
                nonEmpty.add(i);
            }
        }
        if (nonEmpty.size() <= 1) return rawText;

        String[] cleanLines = new String[rawLines.length];
        float[] currentWidths = new float[rawLines.length];
        float targetW = 0f;

        for (int idx : nonEmpty) {
            cleanLines[idx] = cleanTatweel(rawLines[idx]);
            if (paint != null) {
                currentWidths[idx] = paint.measureText(rawLines[idx]);
            } else {
                currentWidths[idx] = (float) rawLines[idx].length() * 20f;
            }
            if (currentWidths[idx] > targetW) {
                targetW = currentWidths[idx];
            }
        }

        if (explicitTargetWidth != null && explicitTargetWidth > targetW) {
            targetW = explicitTargetWidth;
        }

        float measuredTatweel = measureTatweelWidth(paint);
        String[] outLines = Arrays.copyOf(rawLines, rawLines.length);

        for (int idx : nonEmpty) {
            String rawLine = rawLines[idx];
            float w0 = currentWidths[idx];

            if (Math.abs(targetW - w0) <= measuredTatweel * 0.45f) {
                outLines[idx] = rawLine;
                continue;
            }

            String clean = cleanLines[idx];
            float cleanW = (paint != null) ? paint.measureText(clean) : ((float) clean.length() * 20f);
            float deficit = targetW - cleanW;

            if (deficit <= measuredTatweel * 0.45f) {
                outLines[idx] = rawLine;
                continue;
            }

            int count = Math.max(1, Math.min(400, Math.round(deficit / measuredTatweel)));
            String bestCand = stretchLineWords(clean, count);
            if (bestCand.equals(clean)) {
                outLines[idx] = rawLine;
                continue;
            }
            float bestCandW = (paint != null) ? paint.measureText(bestCand) : (bestCand.length() * 20f);
            float bestDiff = Math.abs(bestCandW - targetW);

            int searchRange = Math.max(6, Math.min(24, Math.round(count * 0.25f)));
            for (int delta = -searchRange; delta <= searchRange; delta++) {
                int c = Math.max(1, Math.min(400, count + delta));
                String cand = stretchLineWords(clean, c);
                float cw = (paint != null) ? paint.measureText(cand) : (cand.length() * 20f);
                float diff = Math.abs(cw - targetW);
                if (cw <= targetW + measuredTatweel * 0.65f && diff < bestDiff) {
                    bestDiff = diff;
                    bestCand = cand;
                }
            }
            outLines[idx] = bestCand;
        }

        StringBuilder result = new StringBuilder();
        for (int i = 0; i < outLines.length; i++) {
            result.append(outLines[i]);
            if (i < outLines.length - 1) result.append("\n");
        }
        return result.toString();
    }

    /**
     * Exact 1:1 port of Madd fillWidth (com.a7ahmed.Madd KashidaEngine).
     * Pure Arabic Tatweel (ـ) only — Expands lines iteratively up to target width.
     */
    public static String fillWidth(String rawText, TextPaint paint, float targetLineWidth) {
        if (rawText == null || rawText.trim().isEmpty()) return rawText;
        String[] lines = rawText.split("\n", -1);

        float measuredTatweel = measureTatweelWidth(paint);

        StringBuilder result = new StringBuilder();
        for (int i = 0; i < lines.length; i++) {
            String rawLine = lines[i];
            if (rawLine.trim().isEmpty()) {
                result.append(rawLine);
                if (i < lines.length - 1) result.append("\n");
                continue;
            }

            String cleanLine = cleanTatweel(rawLine);
            float baseW = (paint != null) ? paint.measureText(cleanLine) : (cleanLine.length() * 20f);
            float deficit = targetLineWidth - baseW;

            if (deficit <= measuredTatweel * 0.5f) {
                result.append(rawLine);
                if (i < lines.length - 1) result.append("\n");
                continue;
            }

            int count = Math.max(1, Math.min(400, Math.round(deficit / measuredTatweel)));
            String candidate = stretchLineWords(cleanLine, count);
            if (candidate.equals(cleanLine)) {
                result.append(rawLine);
                if (i < lines.length - 1) result.append("\n");
                continue;
            }
            float w = (paint != null) ? paint.measureText(candidate) : (candidate.length() * 20f);

            int steps = 0;
            while (w < targetLineWidth - measuredTatweel * 0.6f && count < 400 && steps < 48) {
                int nextCount = count + 1;
                String nextCand = stretchLineWords(cleanLine, nextCount);
                float nextW = (paint != null) ? paint.measureText(nextCand) : (nextCand.length() * 20f);
                if (nextW > targetLineWidth) break;
                count = nextCount;
                candidate = nextCand;
                w = nextW;
                steps++;
            }
            while (w > targetLineWidth && count > 1 && steps < 96) {
                count--;
                candidate = stretchLineWords(cleanLine, count);
                w = (paint != null) ? paint.measureText(candidate) : (candidate.length() * 20f);
                steps++;
            }

            result.append(candidate);
            if (i < lines.length - 1) result.append("\n");
        }
        return result.toString();
    }

    /**
     * Splits text into individual words preserving order.
     */
    public static List<String> extractWords(String text) {
        String clean = cleanTatweel(text);
        List<String> words = new ArrayList<String>();
        String[] tokens = clean.split("\\s+");
        for (String t : tokens) {
            String trimmed = t.trim();
            if (trimmed.length() > 0) {
                words.add(trimmed);
            }
        }
        return words;
    }

    /**
     * Applies word-by-word Madd overrides.
     */
    public static String applyWordKashidaOverrides(String rawText, int[] overrides) {
        if (overrides == null || overrides.length == 0) return rawText;
        String clean = cleanTatweel(rawText);
        String[] lines = clean.split("\n", -1);
        StringBuilder sb = new StringBuilder();
        int wordIdx = 0;

        for (int l = 0; l < lines.length; l++) {
            String line = lines[l];
            String[] tokens = line.split("(?<=\\s)|(?=\\s)");
            for (String tok : tokens) {
                if (tok.trim().isEmpty()) {
                    sb.append(tok);
                } else {
                    int kCount = (wordIdx < overrides.length) ? overrides[wordIdx] : 0;
                    if (kCount > 0) {
                        sb.append(stretchWord(tok, kCount));
                    } else {
                        sb.append(tok);
                    }
                    wordIdx++;
                }
            }
            if (l < lines.length - 1) sb.append("\n");
        }
        return sb.toString();
    }

    public static String justifyLines(String text) {
        return justifyLines(text, null, null);
    }

    public static String addKashidaFixed(String text, int amount) {
        return applyAutoKashida(text, amount);
    }

    public static void showKashidaDialog(final Context context, final EditText editArea) {
        if (editArea == null || context == null) return;
        final Activity act = getActivity(context);
        final Context dialogContext = act != null ? act : context;
        final String currentText = editArea.getText() != null ? editArea.getText().toString() : "";

        CharSequence[] options = new CharSequence[]{
            "✨ تسوية وتنسيق الأسطر (Madd Engine Pro)",
            "ـ مد خفيف (ـ)",
            "ــ مد متوسط (ــ)",
            "ـــ مد عريض (ـــ)",
            "❌ إزالة جميع المدود"
        };

        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(dialogContext);
            builder.setTitle("خيارات مد وتسويه الأسطر");
            builder.setItems(options, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    String textToProcess = editArea.getText() != null ? editArea.getText().toString() : currentText;
                    String newText = textToProcess;
                    switch (which) {
                        case 0:
                            newText = justifyLines(textToProcess);
                            Toast.makeText(dialogContext, "✨ تم تسوية الأسطر بالملي", Toast.LENGTH_SHORT).show();
                            break;
                        case 1:
                            newText = justifyLines(addKashidaFixed(cleanTatweel(textToProcess), 1));
                            Toast.makeText(dialogContext, "تم تطبيق مد خفيف متوازن", Toast.LENGTH_SHORT).show();
                            break;
                        case 2:
                            newText = justifyLines(addKashidaFixed(cleanTatweel(textToProcess), 2));
                            Toast.makeText(dialogContext, "تم تطبيق مد متوسط متوازن", Toast.LENGTH_SHORT).show();
                            break;
                        case 3:
                            newText = justifyLines(addKashidaFixed(cleanTatweel(textToProcess), 4));
                            Toast.makeText(dialogContext, "تم تطبيق مد عريض متوازن", Toast.LENGTH_SHORT).show();
                            break;
                        case 4:
                            newText = cleanTatweel(textToProcess);
                            Toast.makeText(dialogContext, "تمت إزالة جميع المدود", Toast.LENGTH_SHORT).show();
                            break;
                    }
                    editArea.setText(newText);
                    try {
                        editArea.setSelection(newText.length());
                    } catch (Exception ignored) {}
                }
            });
            builder.setNegativeButton("إلغاء", null);
            AlertDialog d = builder.create();
            d.show();
        } catch (Throwable t) {
            t.printStackTrace();
            String justified = justifyLines(currentText);
            editArea.setText(justified);
        }
    }

    public static boolean handleSwitchClick(Context context, EditText editArea) {
        if (editArea == null) return false;
        String text = editArea.getText() != null ? editArea.getText().toString() : "";
        if (containsArabic(text)) {
            showKashidaDialog(context, editArea);
            return true;
        }
        return false;
    }

    // Dynamic addition to the bottom text toolbar (محل القوائم والتكبير والتصغير)
    public static void addJustifyOptionToTextTab(ViewGroup container) {
        if (container == null) return;
        try {
            final Context context = container.getContext();
            int insertIndex = -1;

            for (int i = 0; i < container.getChildCount(); i++) {
                View child = container.getChildAt(i);
                try {
                    Field f = child.getClass().getField("actionDo");
                    int act = f.getInt(child);
                    if (act == ACTION_JUSTIFY_LINES) {
                        return; // already added
                    }
                    if (act == 4) { // Size action is 4
                        insertIndex = i + 1;
                    }
                } catch (Exception ignored) {}
            }

            Class<?> optClass = Class.forName("com.tawfiq.imaginstudio.imagetools.pixellab/controls/widgets/option_ui".replace('/', '.'));
            Constructor<?> ctor = optClass.getConstructor(Context.class, AttributeSet.class);
            final View opt = (View) ctor.newInstance(context, null);

            Field fAction = optClass.getField("actionDo");
            fAction.setInt(opt, ACTION_JUSTIFY_LINES);

            ImageButton iconShow = (ImageButton) opt.findViewById(0x7f0a01c6);
            if (iconShow != null) {
                iconShow.setImageResource(0x7f08012a); // controls_align icon
                iconShow.setColorFilter(Color.WHITE);
            }

            TextView labelShow = (TextView) opt.findViewById(0x7f0a01c7);
            if (labelShow != null) {
                labelShow.setText("تسوية الأسطر");
                labelShow.setVisibility(View.VISIBLE);
            }

            View.OnClickListener clickListener = new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        Activity act = getActivity(context);
                        if (act != null) {
                            Method mDoAction = act.getClass().getMethod("doActionFor", int.class, Class.forName("com.tawfiq.imaginstudio.imagetools.pixellab.undo.History$ComponentType"));
                            Class<?> compEnum = Class.forName("com.tawfiq.imaginstudio.imagetools.pixellab.undo.History$ComponentType");
                            Object textType = Enum.valueOf((Class<Enum>) compEnum, "text");
                            mDoAction.invoke(act, ACTION_JUSTIFY_LINES, textType);
                        }
                    } catch (Throwable t) {
                        t.printStackTrace();
                    }
                }
            };

            opt.setOnClickListener(clickListener);
            if (iconShow != null) iconShow.setOnClickListener(clickListener);
            if (labelShow != null) labelShow.setOnClickListener(clickListener);

            if (insertIndex < 0 || insertIndex > container.getChildCount()) {
                insertIndex = Math.min(6, container.getChildCount());
            }

            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            container.addView(opt, insertIndex, lp);

        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    private static Object findTextComponent(Object optionExpandFragment) {
        if (optionExpandFragment == null) return null;
        try {
            try {
                Method mGet = optionExpandFragment.getClass().getDeclaredMethod("getSelectedText");
                mGet.setAccessible(true);
                Object comp = mGet.invoke(optionExpandFragment);
                if (comp != null) return comp;
            } catch (Exception ignored) {}

            Field fCallback = optionExpandFragment.getClass().getDeclaredField("callback");
            fCallback.setAccessible(true);
            Object activity = fCallback.get(optionExpandFragment);
            if (activity == null) {
                try {
                    Method mAct = optionExpandFragment.getClass().getMethod("getActivity");
                    activity = mAct.invoke(optionExpandFragment);
                } catch (Exception ignored) {}
            }
            if (activity != null) {
                Field fTextContain = activity.getClass().getDeclaredField("textContain");
                fTextContain.setAccessible(true);
                Object textContain = fTextContain.get(activity);
                if (textContain != null) {
                    Method mGetCurr = textContain.getClass().getMethod("getCurrentText");
                    Object comp = mGetCurr.invoke(textContain);
                    if (comp != null) return comp;

                    Field fTexts = textContain.getClass().getDeclaredField("texts");
                    fTexts.setAccessible(true);
                    Map<?, ?> map = (Map<?, ?>) fTexts.get(textContain);
                    if (map != null && !map.isEmpty()) {
                        for (Object val : map.values()) {
                            if (val != null) return val;
                        }
                    }
                }
            }
        } catch (Throwable t) {
            t.printStackTrace();
        }
        return null;
    }

    private static GradientDrawable makeBg(int color, float radiusDp, Context ctx) {
        GradientDrawable gd = new GradientDrawable();
        gd.setColor(color);
        gd.setCornerRadius(dp(ctx, (int) radiusDp));
        return gd;
    }

    private static TextView createButton(Context ctx, String text, int bgColor, int textColor, int hPadDp, int vPadDp) {
        TextView tv = new TextView(ctx);
        tv.setText(text);
        tv.setTextColor(textColor);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
        tv.setGravity(Gravity.CENTER);
        tv.setBackground(makeBg(bgColor, 6, ctx));
        tv.setPadding(dp(ctx, hPadDp), dp(ctx, vPadDp), dp(ctx, hPadDp), dp(ctx, vPadDp));
        return tv;
    }

    /**
     * Builds the dedicated Madd Pro line justification & kashida studio panel inside optionExpand.
     */
    public static void buildJustifyPanel(final Object optionExpandFragment) {
        if (optionExpandFragment == null) return;
        try {
            Field fLayout = optionExpandFragment.getClass().getDeclaredField("controlsLayout");
            fLayout.setAccessible(true);
            final LinearLayout controlsLayout = (LinearLayout) fLayout.get(optionExpandFragment);
            if (controlsLayout == null) return;
            controlsLayout.removeAllViews();
            final Context context = controlsLayout.getContext();

            final Object textComp = findTextComponent(optionExpandFragment);
            if (textComp == null) {
                TextView noTextTv = new TextView(context);
                noTextTv.setText("⚠️ يرجى تحديد نص أولاً لتطبيق تسوية الأسطر");
                noTextTv.setTextColor(Color.parseColor("#FFA726"));
                noTextTv.setTextSize(14f);
                noTextTv.setGravity(Gravity.CENTER);
                noTextTv.setPadding(dp(context, 16), dp(context, 20), dp(context, 16), dp(context, 20));
                controlsLayout.addView(noTextTv);
                return;
            }

            // Save undo history before modifications
            try {
                Field fCallback = optionExpandFragment.getClass().getDeclaredField("callback");
                fCallback.setAccessible(true);
                Object act = fCallback.get(optionExpandFragment);
                if (act != null) {
                    Method mSave = act.getClass().getMethod("saveCurrTextState", textComp.getClass());
                    mSave.invoke(act, textComp);
                }
            } catch (Throwable ignored) {}

            Method mReturnText = textComp.getClass().getMethod("returnText");
            final String originalText = (String) mReturnText.invoke(textComp);
            if (originalText == null || originalText.trim().isEmpty()) {
                TextView emptyTv = new TextView(context);
                emptyTv.setText("⚠️ الطبقة النصية المحددة فارغة، اكتب نصاً أولاً");
                emptyTv.setTextColor(Color.parseColor("#FFA726"));
                emptyTv.setTextSize(14f);
                emptyTv.setGravity(Gravity.CENTER);
                emptyTv.setPadding(dp(context, 16), dp(context, 20), dp(context, 16), dp(context, 20));
                controlsLayout.addView(emptyTv);
                return;
            }

            final String baseCleanText = cleanTatweel(originalText);

            // Store original alignment and justify state for clean cancel
            final int[] originalAlign = new int[]{5}; // Default right
            final boolean[] originalJustify = new boolean[]{false};
            try {
                Method mGetAlign = textComp.getClass().getMethod("getTextAlign");
                originalAlign[0] = (Integer) mGetAlign.invoke(textComp);
            } catch (Throwable ignored) {}
            try {
                Field fDraw = textComp.getClass().getDeclaredField("textDraw");
                fDraw.setAccessible(true);
                Object td = fDraw.get(textComp);
                if (td != null) {
                    Field fJ = td.getClass().getDeclaredField("justifyAlign");
                    fJ.setAccessible(true);
                    originalJustify[0] = fJ.getBoolean(td);
                }
            } catch (Throwable ignored) {}

            // Extract TextPaint, Custom Typeface and exact TextSize from TextComponent
            TextPaint paint = null;
            try {
                Field fDraw = textComp.getClass().getDeclaredField("textDraw");
                fDraw.setAccessible(true);
                final Object textDraw = fDraw.get(textComp);
                if (textDraw != null) {
                    Method mGetPaint = textDraw.getClass().getMethod("getPaint");
                    paint = (TextPaint) mGetPaint.invoke(textDraw);
                }
            } catch (Throwable ignored) {}
            if (paint == null) {
                paint = new TextPaint();
            } else {
                paint = new TextPaint(paint); // Clone paint so we don't interfere with view's internal state
            }

            // 1. Set exact custom Typeface from TextComponent (e.g. Adobe Naskh, Andalus, etc.)
            try {
                Method mGetFont = textComp.getClass().getMethod("getMainFont");
                Object tfObj = mGetFont.invoke(textComp);
                if (tfObj instanceof android.graphics.Typeface) {
                    paint.setTypeface((android.graphics.Typeface) tfObj);
                }
            } catch (Throwable ignored) {}

            // 2. Set exact user text size from TextComponent
            try {
                Method mGetSize = textComp.getClass().getMethod("getTextSize");
                Object szObj = mGetSize.invoke(textComp);
                if (szObj instanceof Float && ((Float) szObj) > 1f) {
                    paint.setTextSize((Float) szObj);
                }
            } catch (Throwable ignored) {}

            final TextPaint textPaint = paint;

            final Method mSetText = textComp.getClass().getMethod("setText", String.class, boolean.class);

            // Register cancel action to revert changes completely
            try {
                Field fCancel = optionExpandFragment.getClass().getDeclaredField("cancelAction");
                fCancel.setAccessible(true);
                fCancel.set(optionExpandFragment, new Runnable() {
                    @Override
                    public void run() {
                        try {
                            mSetText.invoke(textComp, originalText, false);
                            Method mAlign = textComp.getClass().getMethod("setTextAlign", int.class);
                            mAlign.invoke(textComp, originalAlign[0]);
                            Method mJustify = textComp.getClass().getMethod("setJustify", boolean.class);
                            mJustify.invoke(textComp, originalJustify[0]);
                        } catch (Throwable ignored) {}
                    }
                });
            } catch (Throwable ignored) {}

            // Register positive action (Done) to commit changes to history
            try {
                Field fPositive = optionExpandFragment.getClass().getDeclaredField("positiveAction");
                fPositive.setAccessible(true);
                fPositive.set(optionExpandFragment, new Runnable() {
                    @Override
                    public void run() {
                        try {
                            Field fCallback = optionExpandFragment.getClass().getDeclaredField("callback");
                            fCallback.setAccessible(true);
                            Object act = fCallback.get(optionExpandFragment);
                            if (act != null) {
                                Method mSave = act.getClass().getMethod("saveCurrTextState", textComp.getClass());
                                mSave.invoke(act, textComp);
                            }
                        } catch (Throwable ignored) {}
                    }
                });
            } catch (Throwable ignored) {}

            // Extract individual words for Word-by-word Madd
            final List<String> words = extractWords(baseCleanText);
            final int[] wordOverrides = new int[words.size()];

            // Root panel layout
            LinearLayout root = new LinearLayout(context);
            root.setOrientation(LinearLayout.VERTICAL);
            root.setLayoutParams(new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
            root.setPadding(dp(context, 10), dp(context, 6), dp(context, 10), dp(context, 6));

            // Section 1: Header (Title + Dynamic Status Badge)
            LinearLayout headerLayout = new LinearLayout(context);
            headerLayout.setOrientation(LinearLayout.HORIZONTAL);
            headerLayout.setGravity(Gravity.CENTER_VERTICAL);
            LinearLayout.LayoutParams headerParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            headerParams.bottomMargin = dp(context, 6);
            headerLayout.setLayoutParams(headerParams);

            final TextView titleTv = new TextView(context);
            titleTv.setText("✨ تسوية وموازنة الأسطر بالملي (Madd Pro)");
            titleTv.setTextColor(Color.WHITE);
            titleTv.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            titleTv.setLayoutParams(new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            headerLayout.addView(titleTv);

            final TextView statusBadge = new TextView(context);
            statusBadge.setText("جاهز للموازنة");
            statusBadge.setTextColor(Color.parseColor("#FAB852")); // Madd Gold
            statusBadge.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
            statusBadge.setBackground(makeBg(Color.parseColor("#1A232C"), 6, context));
            statusBadge.setPadding(dp(context, 8), dp(context, 3), dp(context, 8), dp(context, 3));
            headerLayout.addView(statusBadge);

            root.addView(headerLayout);

            // Progress tracking references
            final int[] currentSliderPercent = new int[]{0};
            final View[] progressFillRef = new View[1];
            final FrameLayout[] trackLayoutRef = new FrameLayout[1];

            // Section 2: Main Action Buttons (Madd App Core Features)
            HorizontalScrollView hsvActions = new HorizontalScrollView(context);
            hsvActions.setHorizontalScrollBarEnabled(false);
            LinearLayout actionsRow = new LinearLayout(context);
            actionsRow.setOrientation(LinearLayout.HORIZONTAL);
            actionsRow.setGravity(Gravity.CENTER_VERTICAL);

            // 1. Justify Lines (تسوية الأسطر بدقة ميزان أطول سطر بالملي)
            TextView btnJustify = createButton(context, "📐 تسوية متوازنة بالملي", Color.parseColor("#00838F"), Color.WHITE, 12, 7);
            LinearLayout.LayoutParams lpJustify = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(context, 34));
            lpJustify.rightMargin = dp(context, 6);
            btnJustify.setLayoutParams(lpJustify);
            btnJustify.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        String current = baseCleanText;
                        try {
                            current = (String) mReturnText.invoke(textComp);
                        } catch (Throwable ignored) {}
                        String justified = justifyLines(current, textPaint, null);
                        mSetText.invoke(textComp, justified, false);

                        // Ensure PixelLab's Latin space justify is disabled so it doesn't distort spaces!
                        try {
                            Method mJustify = textComp.getClass().getMethod("setJustify", boolean.class);
                            mJustify.invoke(textComp, false);
                        } catch (Throwable ignored) {}

                        try {
                            Method mReq = textComp.getClass().getMethod("requestLayout");
                            mReq.invoke(textComp);
                            Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                            mRedraw.invoke(textComp);
                        } catch (Throwable ignored) {}

                        statusBadge.setText("متوازن بالملي 100% ✓");
                        statusBadge.setTextColor(Color.parseColor("#4DD0E1"));
                        Toast.makeText(context, "✨ تم ضبط كافة الأسطر بميزان أطول سطر بالمليمتر", Toast.LENGTH_SHORT).show();
                    } catch (Throwable t) {
                        t.printStackTrace();
                    }
                }
            });
            actionsRow.addView(btnJustify);

            // 2. Fill Width (املأ العرض بالكامل)
            TextView btnFillWidth = createButton(context, "↔️ املأ العرض", Color.parseColor("#1565C0"), Color.WHITE, 12, 7);
            LinearLayout.LayoutParams lpFill = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(context, 34));
            lpFill.rightMargin = dp(context, 6);
            btnFillWidth.setLayoutParams(lpFill);
            btnFillWidth.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        float targetW = 0f;
                        Field fCallback = optionExpandFragment.getClass().getDeclaredField("callback");
                        fCallback.setAccessible(true);
                        Object act = fCallback.get(optionExpandFragment);
                        if (act != null) {
                            Field fTextContain = act.getClass().getDeclaredField("textContain");
                            fTextContain.setAccessible(true);
                            View textContain = (View) fTextContain.get(act);
                            if (textContain != null && textContain.getWidth() > 0) {
                                targetW = textContain.getWidth() * 0.90f;
                            } else {
                                Field fDispW = act.getClass().getDeclaredField("displayWidth");
                                fDispW.setAccessible(true);
                                targetW = fDispW.getInt(act) * 0.90f;
                            }
                        }
                        if (targetW <= 100f) targetW = 800f;

                        String current = baseCleanText;
                        try {
                            current = (String) mReturnText.invoke(textComp);
                        } catch (Throwable ignored) {}
                        String clean = cleanTatweel(current);

                        String filled = fillWidth(clean, textPaint, targetW);
                        mSetText.invoke(textComp, filled, false);

                        // Ensure PixelLab's Latin space justify is disabled so it doesn't distort spaces!
                        try {
                            Method mJustify = textComp.getClass().getMethod("setJustify", boolean.class);
                            mJustify.invoke(textComp, false);
                        } catch (Throwable ignored) {}

                        try {
                            Method mReq = textComp.getClass().getMethod("requestLayout");
                            mReq.invoke(textComp);
                            Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                            mRedraw.invoke(textComp);
                        } catch (Throwable ignored) {}

                        statusBadge.setText("ممتلئ للعرض بالملي ✓");
                        statusBadge.setTextColor(Color.parseColor("#64B5F6"));
                        Toast.makeText(context, "↔️ تم ملء العرض وموازنة الحواف بدقة", Toast.LENGTH_SHORT).show();
                    } catch (Throwable t) {
                        t.printStackTrace();
                    }
                }
            });
            actionsRow.addView(btnFillWidth);

            // 3. Smart Auto Madd (مد متوازن)
            TextView btnSmartMadd = createButton(context, "✨ مد كشيدة", Color.parseColor("#37474F"), Color.WHITE, 12, 7);
            LinearLayout.LayoutParams lpSmart = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(context, 34));
            lpSmart.rightMargin = dp(context, 6);
            btnSmartMadd.setLayoutParams(lpSmart);
            btnSmartMadd.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        String current = baseCleanText;
                        try {
                            current = (String) mReturnText.invoke(textComp);
                        } catch (Throwable ignored) {}
                        String clean = cleanTatweel(current);
                        String madded = applyAutoKashida(clean, 2);
                        String justified = justifyLines(madded, textPaint, null);
                        mSetText.invoke(textComp, justified, false);

                        try {
                            Method mReq = textComp.getClass().getMethod("requestLayout");
                            mReq.invoke(textComp);
                            Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                            mRedraw.invoke(textComp);
                        } catch (Throwable ignored) {}

                        statusBadge.setText("مد كشيدة");
                        statusBadge.setTextColor(Color.parseColor("#FAB852"));
                    } catch (Throwable t) {
                        t.printStackTrace();
                    }
                }
            });
            actionsRow.addView(btnSmartMadd);

            // 4. Remove all Madd (إزالة المدود)
            TextView btnClear = createButton(context, "❌ إزالة المدود", Color.parseColor("#C62828"), Color.WHITE, 10, 7);
            LinearLayout.LayoutParams lpClear = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(context, 34));
            btnClear.setLayoutParams(lpClear);
            btnClear.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        Arrays.fill(wordOverrides, 0);
                        currentSliderPercent[0] = 0;
                        String current = baseCleanText;
                        try {
                            current = (String) mReturnText.invoke(textComp);
                        } catch (Throwable ignored) {}
                        String clean = cleanTatweel(current);
                        mSetText.invoke(textComp, clean, false);
                        try {
                            Method mJustify = textComp.getClass().getMethod("setJustify", boolean.class);
                            mJustify.invoke(textComp, false);
                        } catch (Throwable ignored) {}
                        try {
                            Method mReq = textComp.getClass().getMethod("requestLayout");
                            mReq.invoke(textComp);
                            Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                            mRedraw.invoke(textComp);
                        } catch (Throwable ignored) {}
                        statusBadge.setText("نص خام");
                        statusBadge.setTextColor(Color.WHITE);
                        Toast.makeText(context, "تمت إزالة جميع المدود", Toast.LENGTH_SHORT).show();
                    } catch (Throwable t) {
                        t.printStackTrace();
                    }
                }
            });
            actionsRow.addView(btnClear);

            hsvActions.addView(actionsRow);
            root.addView(hsvActions);

            // Section 3: Word-by-word Madd Controls (المد بالكلمات الفردية - ميزة تطبيق مد)
            if (!words.isEmpty()) {
                TextView wordSecTitle = new TextView(context);
                wordSecTitle.setText("التحكم بمد كل كلمة على حدة (+ لمد الكلمة، − لتقصيرها):");
                wordSecTitle.setTextColor(Color.parseColor("#B0BEC5"));
                wordSecTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
                LinearLayout.LayoutParams wordSecParams = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                wordSecParams.topMargin = dp(context, 8);
                wordSecParams.bottomMargin = dp(context, 4);
                wordSecTitle.setLayoutParams(wordSecParams);
                root.addView(wordSecTitle);

                HorizontalScrollView hsvWords = new HorizontalScrollView(context);
                hsvWords.setHorizontalScrollBarEnabled(false);
                LinearLayout wordsRow = new LinearLayout(context);
                wordsRow.setOrientation(LinearLayout.HORIZONTAL);
                wordsRow.setGravity(Gravity.CENTER_VERTICAL);

                final TextView[] wordLabels = new TextView[words.size()];

                for (int i = 0; i < words.size(); i++) {
                    final int wordIndex = i;
                    final String wordStr = words.get(i);

                    LinearLayout pill = new LinearLayout(context);
                    pill.setOrientation(LinearLayout.HORIZONTAL);
                    pill.setGravity(Gravity.CENTER_VERTICAL);
                    pill.setBackground(makeBg(Color.parseColor("#1E2732"), 14, context));
                    pill.setPadding(dp(context, 4), dp(context, 2), dp(context, 4), dp(context, 2));
                    LinearLayout.LayoutParams pillParams = new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.WRAP_CONTENT, dp(context, 32));
                    pillParams.rightMargin = dp(context, 6);
                    pill.setLayoutParams(pillParams);

                    // Minus button (−)
                    TextView minusBtn = createButton(context, "−", Color.parseColor("#2C3844"), Color.WHITE, 8, 4);
                    minusBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
                    minusBtn.setLayoutParams(new LinearLayout.LayoutParams(dp(context, 26), dp(context, 26)));
                    minusBtn.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            if (wordOverrides[wordIndex] > 0) {
                                wordOverrides[wordIndex]--;
                                String updated = applyWordKashidaOverrides(baseCleanText, wordOverrides);
                                try {
                                    mSetText.invoke(textComp, updated, false);
                                    try {
                                        Method mReq = textComp.getClass().getMethod("requestLayout");
                                        mReq.invoke(textComp);
                                        Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                                        mRedraw.invoke(textComp);
                                    } catch (Throwable ignored) {}
                                    wordLabels[wordIndex].setText(wordStr + (wordOverrides[wordIndex] > 0 ? " (" + wordOverrides[wordIndex] + ")" : ""));
                                    statusBadge.setText(wordStr + ": " + wordOverrides[wordIndex]);
                                } catch (Throwable ignored) {}
                            }
                        }
                    });
                    pill.addView(minusBtn);

                    // Word label
                    TextView wordLabel = new TextView(context);
                    wordLabels[wordIndex] = wordLabel;
                    wordLabel.setText(wordStr);
                    wordLabel.setTextColor(Color.WHITE);
                    wordLabel.setTextSize(TypedValue.COMPLEX_UNIT_SP, 12f);
                    wordLabel.setPadding(dp(context, 6), 0, dp(context, 6), 0);
                    pill.addView(wordLabel);

                    // Plus button (+)
                    TextView plusBtn = createButton(context, "+", Color.parseColor("#37474F"), Color.parseColor("#FAB852"), 8, 4);
                    plusBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
                    plusBtn.setLayoutParams(new LinearLayout.LayoutParams(dp(context, 26), dp(context, 26)));
                    plusBtn.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            if (wordOverrides[wordIndex] < 40) {
                                wordOverrides[wordIndex]++;
                                String updated = applyWordKashidaOverrides(baseCleanText, wordOverrides);
                                try {
                                    mSetText.invoke(textComp, updated, false);
                                    try {
                                        Method mReq = textComp.getClass().getMethod("requestLayout");
                                        mReq.invoke(textComp);
                                        Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                                        mRedraw.invoke(textComp);
                                    } catch (Throwable ignored) {}
                                    wordLabels[wordIndex].setText(wordStr + " (" + wordOverrides[wordIndex] + ")");
                                    statusBadge.setText(wordStr + ": +" + wordOverrides[wordIndex]);
                                } catch (Throwable ignored) {}
                            }
                        }
                    });
                    pill.addView(plusBtn);

                    wordsRow.addView(pill);
                }
                hsvWords.addView(wordsRow);
                root.addView(hsvWords);
            }

            // Section 4: Overall Madd Slider & Steppers
            LinearLayout sliderSecHeader = new LinearLayout(context);
            sliderSecHeader.setOrientation(LinearLayout.HORIZONTAL);
            sliderSecHeader.setGravity(Gravity.CENTER_VERTICAL);
            LinearLayout.LayoutParams sshParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            sshParams.topMargin = dp(context, 8);
            sliderSecHeader.setLayoutParams(sshParams);

            TextView sliderTitle = new TextView(context);
            sliderTitle.setText("شريط شدة المد الذكي:");
            sliderTitle.setTextColor(Color.parseColor("#B0BEC5"));
            sliderTitle.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
            sliderSecHeader.addView(sliderTitle);
            root.addView(sliderSecHeader);

            final class SliderUpdater {
                void apply(int percent) {
                    if (percent < 0) percent = 0;
                    if (percent > 100) percent = 100;
                    currentSliderPercent[0] = percent;
                    statusBadge.setText("مد: " + percent + "%");

                    if (progressFillRef[0] != null && trackLayoutRef[0] != null) {
                        int trackW = trackLayoutRef[0].getWidth();
                        if (trackW <= 0) trackW = dp(context, 180);
                        int fillW = (int) (trackW * (percent / 100.0f));
                        ViewGroup.LayoutParams flp = progressFillRef[0].getLayoutParams();
                        if (flp != null) {
                            flp.width = Math.max(dp(context, 4), fillW);
                            progressFillRef[0].setLayoutParams(flp);
                        }
                    }

                    try {
                        String newText;
                        if (percent == 0) {
                            newText = baseCleanText;
                        } else {
                            int kLen = Math.max(1, Math.round((percent / 100.0f) * 8f));
                            String madded = applyAutoKashida(baseCleanText, kLen);
                            newText = justifyLines(madded, textPaint, null);
                        }
                        mSetText.invoke(textComp, newText, false);
                        try {
                            Method mJustify = textComp.getClass().getMethod("setJustify", boolean.class);
                            mJustify.invoke(textComp, false);
                        } catch (Throwable ignored) {}
                        try {
                            Method mReq = textComp.getClass().getMethod("requestLayout");
                            mReq.invoke(textComp);
                            Method mRedraw = textComp.getClass().getMethod("fullRedraw");
                            mRedraw.invoke(textComp);
                        } catch (Throwable ignored) {}
                    } catch (Throwable t) {
                        t.printStackTrace();
                    }
                }
            }
            final SliderUpdater updater = new SliderUpdater();

            LinearLayout sliderRow = new LinearLayout(context);
            sliderRow.setOrientation(LinearLayout.HORIZONTAL);
            sliderRow.setGravity(Gravity.CENTER_VERTICAL);
            LinearLayout.LayoutParams sliderRowParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            sliderRowParams.topMargin = dp(context, 4);
            sliderRow.setLayoutParams(sliderRowParams);

            TextView btnMinus = createButton(context, "−", Color.parseColor("#37474F"), Color.WHITE, 12, 6);
            btnMinus.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
            LinearLayout.LayoutParams minusParams = new LinearLayout.LayoutParams(dp(context, 36), dp(context, 32));
            minusParams.rightMargin = dp(context, 6);
            btnMinus.setLayoutParams(minusParams);
            btnMinus.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    updater.apply(Math.max(0, currentSliderPercent[0] - 5));
                }
            });
            sliderRow.addView(btnMinus);

            final FrameLayout track = new FrameLayout(context);
            trackLayoutRef[0] = track;
            LinearLayout.LayoutParams trackParams = new LinearLayout.LayoutParams(0, dp(context, 32), 1f);
            track.setLayoutParams(trackParams);

            View trackBg = new View(context);
            trackBg.setBackground(makeBg(Color.parseColor("#1C2630"), 4, context));
            FrameLayout.LayoutParams trackBgParams = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(context, 8));
            trackBgParams.gravity = Gravity.CENTER_VERTICAL;
            track.addView(trackBg);

            final View progressFill = new View(context);
            progressFillRef[0] = progressFill;
            progressFill.setBackground(makeBg(Color.parseColor("#FAB852"), 4, context)); // Madd Gold Fill
            FrameLayout.LayoutParams fillParams = new FrameLayout.LayoutParams(dp(context, 4), dp(context, 8));
            fillParams.gravity = Gravity.CENTER_VERTICAL | Gravity.LEFT;
            progressFill.setLayoutParams(fillParams);
            track.addView(progressFill);

            track.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    int action = event.getAction();
                    if (action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_MOVE) {
                        float x = event.getX();
                        int w = track.getWidth();
                        if (w > 0) {
                            int p = Math.round((x / (float) w) * 100f);
                            if (p < 0) p = 0;
                            if (p > 100) p = 100;
                            updater.apply(p);
                        }
                        return true;
                    }
                    return true;
                }
            });
            sliderRow.addView(track);

            TextView btnPlus = createButton(context, "+", Color.parseColor("#37474F"), Color.WHITE, 12, 6);
            btnPlus.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
            LinearLayout.LayoutParams plusParams = new LinearLayout.LayoutParams(dp(context, 36), dp(context, 32));
            plusParams.leftMargin = dp(context, 6);
            btnPlus.setLayoutParams(plusParams);
            btnPlus.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    updater.apply(Math.min(100, currentSliderPercent[0] + 5));
                }
            });
            sliderRow.addView(btnPlus);

            root.addView(sliderRow);

            // Quick Jump Steps: 0%, 25%, 50%, 75%, 100%
            LinearLayout quickRow = new LinearLayout(context);
            quickRow.setOrientation(LinearLayout.HORIZONTAL);
            quickRow.setGravity(Gravity.CENTER_VERTICAL);
            LinearLayout.LayoutParams quickParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            quickParams.topMargin = dp(context, 6);
            quickRow.setLayoutParams(quickParams);

            int[] quickSteps = new int[]{0, 25, 50, 75, 100};
            for (int s = 0; s < quickSteps.length; s++) {
                final int stepVal = quickSteps[s];
                TextView qBtn = createButton(context, stepVal + "%", Color.parseColor("#212B35"), Color.parseColor("#B0BEC5"), 4, 3);
                qBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 11f);
                LinearLayout.LayoutParams qlp = new LinearLayout.LayoutParams(0, dp(context, 26), 1f);
                if (s > 0) qlp.leftMargin = dp(context, 4);
                qBtn.setLayoutParams(qlp);
                qBtn.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        updater.apply(stepVal);
                    }
                });
                quickRow.addView(qBtn);
            }
            root.addView(quickRow);

            controlsLayout.addView(root);

        } catch (Throwable t) {
            t.printStackTrace();
        }
    }
}
