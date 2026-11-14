package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
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
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class ArabicTextEnhancer {
    public static final int ACTION_JUSTIFY_LINES = 119;
    public static final String ALEF_VARIANTS = "اأإآٱ";
    public static final String DUAL_JOINING = "بتثجحخسشصضطظعغفقكلمنهيئپچگکیڤٹ";
    public static final String FINAL_TEH_HEH = "ةه";
    public static final String FINAL_YEH = "يىیئ";
    public static final String HIGH_PRIORITY_AFTER = "سشصضطظعغفقكبتحثمهي";
    public static final String PRE_FINAL_YEH_AVOID = "برمنخ";
    public static final String RIGHT_ONLY = "ادذرزوؤإأآٱةىژ";
    public static final Set<String> SACRED_WORDS = new HashSet(Arrays.asList("الله", "لله", "والله", "بالله", "تالله", "فالله", "اللهم"));
    public static final Set<String> SPECIAL_MAQSURA = new HashSet(Arrays.asList("حتى", "متى"));
    public static final char TATWEEL = 1600;

    public static int dp(Context context, int i) {
        return context == null ? i : (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static Activity getActivity(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return getActivity(((ContextWrapper) context).getBaseContext());
    }

    public static boolean containsArabic(String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= 1536 && charAt <= 1791) {
                return true;
            }
            if (charAt >= 1872 && charAt <= 1919) {
                return true;
            }
            if (charAt >= 2208 && charAt <= 2303) {
                return true;
            }
        }
        return false;
    }

    public static boolean isHaraka(char c) {
        return (c >= 1611 && c <= 1631) || c == 1648;
    }

    public static boolean isDualJoining(char c) {
        return DUAL_JOINING.indexOf(c) != -1;
    }

    public static boolean isRightConnecting(char c) {
        return (DUAL_JOINING.indexOf(c) == -1 && RIGHT_ONLY.indexOf(c) == -1) ? false : true;
    }

    public static boolean isAlefVariant(char c) {
        return ALEF_VARIANTS.indexOf(c) != -1;
    }

    public static boolean isSacred(String str) {
        if (str == null) {
            return false;
        }
        if (SACRED_WORDS.contains(str)) {
            return true;
        }
        return str.length() >= 4 && (str.endsWith("الله") || str.endsWith("لله"));
    }

    public static String cleanTatweel(String str) {
        return str == null ? "" : str.replace(String.valueOf(TATWEEL), "").replace("\u200a", "").replace("\u2009", "").replace("\u2006", "");
    }

    /* loaded from: classes.dex */
    public static class Candidate {
        public final int insertBeforeIndex;
        public final int score;

        public Candidate(int i, int i2) {
            this.insertBeforeIndex = i;
            this.score = i2;
        }
    }

    public static void sortCandidatesByScore(List<Candidate> list) {
        if (list != null) {
            if (list.size() <= 1) {
                return;
            }
            for (int i = 1; i < list.size(); i++) {
                Candidate candidate = list.get(i);
                int i2 = i - 1;
                while (i2 >= 0 && list.get(i2).score < candidate.score) {
                    list.set(i2 + 1, list.get(i2));
                    i2--;
                }
                list.set(i2 + 1, candidate);
            }
        }
    }

    public static void sortSlotsByIndexDescending(List<int[]> list) {
        if (list != null) {
            if (list.size() <= 1) {
                return;
            }
            for (int i = 1; i < list.size(); i++) {
                int[] iArr = list.get(i);
                int i2 = i - 1;
                while (i2 >= 0 && list.get(i2)[0] < iArr[0]) {
                    list.set(i2 + 1, list.get(i2));
                    i2--;
                }
                list.set(i2 + 1, iArr);
            }
        }
    }

    public static List<Candidate> findInsertionPoints(String str) {
        if (str == null || str.length() < 2) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!isHaraka(charAt) && isRightConnecting(charAt)) {
                arrayList.add(Integer.valueOf(i));
                sb.append(charAt);
            }
        }
        if (sb.length() < 2) {
            return Collections.emptyList();
        }
        String sb2 = sb.toString();
        if (isSacred(sb2)) {
            return Collections.emptyList();
        }
        if (SPECIAL_MAQSURA.contains(sb2) && arrayList.size() >= 2) {
            return Collections.singletonList(new Candidate(((Integer) arrayList.get(1)).intValue(), 20));
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size - 1) {
            int intValue = ((Integer) arrayList.get(i2)).intValue();
            int i3 = i2 + 1;
            int intValue2 = ((Integer) arrayList.get(i3)).intValue();
            char charAt2 = str.charAt(intValue);
            char charAt3 = str.charAt(intValue2);
            if (isDualJoining(charAt2) && isRightConnecting(charAt3) && (charAt2 != 1604 || !isAlefVariant(charAt3))) {
                boolean z = i2 == size + (-2);
                if (!z || FINAL_YEH.indexOf(charAt3) == -1 || PRE_FINAL_YEH_AVOID.indexOf(charAt2) == -1) {
                    int i4 = HIGH_PRIORITY_AFTER.indexOf(charAt2) != -1 ? 12 : 6;
                    if (z && FINAL_TEH_HEH.indexOf(charAt3) != -1) {
                        i4 += 6;
                    }
                    if (i2 >= size / 2) {
                        i4 += 4;
                    }
                    if (z && FINAL_YEH.indexOf(charAt3) != -1) {
                        i4 -= 2;
                    }
                    arrayList2.add(new Candidate(intValue2, i4));
                }
            }
            i2 = i3;
        }
        sortCandidatesByScore(arrayList2);
        return arrayList2;
    }

    public static String stretchWord(String str, int i) {
        int i2;
        String cleanTatweel = cleanTatweel(str);
        if (i <= 0) {
            return cleanTatweel;
        }
        List<Candidate> findInsertionPoints = findInsertionPoints(cleanTatweel);
        if (findInsertionPoints.isEmpty()) {
            return cleanTatweel;
        }
        if (i >= 15) {
            i2 = 4;
        } else if (i >= 11) {
            i2 = 3;
        } else {
            i2 = i >= 7 ? 2 : 1;
        }
        int min = Math.min(findInsertionPoints.size(), i2);
        List<Candidate> subList = findInsertionPoints.subList(0, min);
        int[] iArr = new int[min];
        int i3 = i / min;
        int i4 = i % min;
        int i5 = 0;
        while (i5 < min) {
            iArr[i5] = (i5 < i4 ? 1 : 0) + i3;
            i5++;
        }
        ArrayList<int[]> arrayList = new ArrayList();
        for (int i6 = 0; i6 < min; i6++) {
            arrayList.add(new int[]{subList.get(i6).insertBeforeIndex, iArr[i6]});
        }
        sortSlotsByIndexDescending(arrayList);
        StringBuilder sb = new StringBuilder(cleanTatweel);
        for (int[] iArr2 : arrayList) {
            int i7 = iArr2[0];
            int i8 = iArr2[1];
            if (i8 > 0) {
                char[] cArr = new char[i8];
                Arrays.fill(cArr, TATWEEL);
                sb.insert(i7, cArr);
            }
        }
        return sb.toString();
    }

    public static String stretchLineWords(String str, int i) {
        if (i <= 0 || str == null) {
            return str;
        }
        String[] split = str.split("(?<=\\s)|(?=\\s)");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < split.length; i2++) {
            String str2 = split[i2];
            if (str2.trim().length() > 0 && !findInsertionPoints(str2).isEmpty()) {
                arrayList.add(Integer.valueOf(i2));
            }
        }
        if (arrayList.isEmpty()) {
            return str;
        }
        int size = arrayList.size();
        int i3 = i / size;
        int i4 = i % size;
        int i5 = 0;
        while (i5 < size) {
            int intValue = ((Integer) arrayList.get(i5)).intValue();
            split[intValue] = stretchWord(split[intValue], (i5 < i4 ? 1 : 0) + i3);
            i5++;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : split) {
            sb.append(str3);
        }
        return sb.toString();
    }

    public static String applyAutoKashida(String str, int i) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String cleanTatweel = cleanTatweel(str);
        if (i <= 0) {
            return cleanTatweel;
        }
        String[] split = cleanTatweel.split("\n", -1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < split.length; i2++) {
            for (String str2 : split[i2].split("(?<=\\s)|(?=\\s)")) {
                if (str2.trim().isEmpty()) {
                    sb.append(str2);
                } else {
                    sb.append(stretchWord(str2, i));
                }
            }
            if (i2 < split.length - 1) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public static float measureTatweelWidth(TextPaint textPaint) {
        if (textPaint == null) {
            return 15.0f;
        }
        float measureText = textPaint.measureText("بـب") - textPaint.measureText("بب");
        if (measureText > 0.5f) {
            return measureText;
        }
        float measureText2 = textPaint.measureText(String.valueOf(TATWEEL));
        if (measureText2 > 0.5f) {
            return measureText2;
        }
        return Math.max(2.0f, textPaint.getTextSize() * 0.35f);
    }

    public static String justifyLines(String str, TextPaint textPaint, Float f) {
        float f2;
        if (str == null || str.trim().isEmpty()) {
            return str;
        }
        String[] split = str.split("\n", -1);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < split.length; i++) {
            if (split[i].trim().length() > 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        int i2 = 1;
        if (arrayList.size() <= 1) {
            return str;
        }
        String[] strArr = new String[split.length];
        float[] fArr = new float[split.length];
        Iterator it = arrayList.iterator();
        float f3 = 0.0f;
        while (true) {
            f2 = 20.0f;
            if (!it.hasNext()) {
                break;
            }
            int intValue = ((Integer) it.next()).intValue();
            strArr[intValue] = cleanTatweel(split[intValue]);
            if (textPaint != null) {
                fArr[intValue] = textPaint.measureText(split[intValue]);
            } else {
                fArr[intValue] = split[intValue].length() * 20.0f;
            }
            float f4 = fArr[intValue];
            if (f4 > f3) {
                f3 = f4;
            }
        }
        if (f != null && f.floatValue() > f3) {
            f3 = f.floatValue();
        }
        float measureTatweelWidth = measureTatweelWidth(textPaint);
        String[] strArr2 = (String[]) Arrays.copyOf(split, split.length);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            int intValue2 = ((Integer) it2.next()).intValue();
            String str2 = split[intValue2];
            float f5 = 0.45f * measureTatweelWidth;
            if (Math.abs(f3 - fArr[intValue2]) <= f5) {
                strArr2[intValue2] = str2;
            } else {
                String str3 = strArr[intValue2];
                float measureText = f3 - (textPaint != null ? textPaint.measureText(str3) : str3.length() * f2);
                if (measureText <= f5) {
                    strArr2[intValue2] = str2;
                } else {
                    int max = Math.max(i2, Math.min(400, Math.round(measureText / measureTatweelWidth)));
                    String stretchLineWords = stretchLineWords(str3, max);
                    if (stretchLineWords.equals(str3)) {
                        strArr2[intValue2] = str2;
                        i2 = 1;
                    } else {
                        float abs = Math.abs((textPaint != null ? textPaint.measureText(stretchLineWords) : stretchLineWords.length() * f2) - f3);
                        int max2 = Math.max(6, Math.min(24, Math.round(max * 0.25f)));
                        int i3 = -max2;
                        while (i3 <= max2) {
                            String[] strArr3 = strArr;
                            String[] strArr4 = split;
                            String stretchLineWords2 = stretchLineWords(str3, Math.max(1, Math.min(400, max + i3)));
                            float measureText2 = textPaint != null ? textPaint.measureText(stretchLineWords2) : stretchLineWords2.length() * 20.0f;
                            float abs2 = Math.abs(measureText2 - f3);
                            if (measureText2 <= f3 + (0.65f * measureTatweelWidth) && abs2 < abs) {
                                stretchLineWords = stretchLineWords2;
                                abs = abs2;
                            }
                            i3++;
                            strArr = strArr3;
                            split = strArr4;
                        }
                        strArr2[intValue2] = stretchLineWords;
                        i2 = 1;
                        f2 = 20.0f;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < strArr2.length; i4++) {
            sb.append(strArr2[i4]);
            if (i4 < strArr2.length - 1) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public static String fillWidth(String str, TextPaint textPaint, float f) {
        if (str == null || str.trim().isEmpty()) {
            return str;
        }
        String[] split = str.split("\n", -1);
        float measureTatweelWidth = measureTatweelWidth(textPaint);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < split.length; i++) {
            String str2 = split[i];
            if (str2.trim().isEmpty()) {
                sb.append(str2);
                if (i < split.length - 1) {
                    sb.append("\n");
                }
            } else {
                String cleanTatweel = cleanTatweel(str2);
                float measureText = f - (textPaint != null ? textPaint.measureText(cleanTatweel) : cleanTatweel.length() * 20.0f);
                if (measureText <= 0.5f * measureTatweelWidth) {
                    sb.append(str2);
                    if (i < split.length - 1) {
                        sb.append("\n");
                    }
                } else {
                    int max = Math.max(1, Math.min(400, Math.round(measureText / measureTatweelWidth)));
                    String stretchLineWords = stretchLineWords(cleanTatweel, max);
                    if (stretchLineWords.equals(cleanTatweel)) {
                        sb.append(str2);
                        if (i < split.length - 1) {
                            sb.append("\n");
                        }
                    } else {
                        float measureText2 = textPaint != null ? textPaint.measureText(stretchLineWords) : stretchLineWords.length() * 20.0f;
                        int i2 = 0;
                        for (int i3 = 400; measureText2 < f - (0.6f * measureTatweelWidth) && max < i3 && i2 < 48; i3 = 400) {
                            int i4 = max + 1;
                            String stretchLineWords2 = stretchLineWords(cleanTatweel, i4);
                            float measureText3 = textPaint != null ? textPaint.measureText(stretchLineWords2) : stretchLineWords2.length() * 20.0f;
                            if (measureText3 > f) {
                                break;
                            }
                            i2++;
                            stretchLineWords = stretchLineWords2;
                            measureText2 = measureText3;
                            max = i4;
                        }
                        while (measureText2 > f && max > 1 && i2 < 96) {
                            max--;
                            stretchLineWords = stretchLineWords(cleanTatweel, max);
                            measureText2 = textPaint != null ? textPaint.measureText(stretchLineWords) : stretchLineWords.length() * 20.0f;
                            i2++;
                        }
                        sb.append(stretchLineWords);
                        if (i < split.length - 1) {
                            sb.append("\n");
                        }
                    }
                }
            }
        }
        return sb.toString();
    }

    public static List<String> extractWords(String str) {
        String cleanTatweel = cleanTatweel(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : cleanTatweel.split("\\s+")) {
            String trim = str2.trim();
            if (trim.length() > 0) {
                arrayList.add(trim);
            }
        }
        return arrayList;
    }

    public static String applyWordKashidaOverrides(String str, int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return str;
        }
        String[] split = cleanTatweel(str).split("\n", -1);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (int i2 = 0; i2 < split.length; i2++) {
            for (String str2 : split[i2].split("(?<=\\s)|(?=\\s)")) {
                if (str2.trim().isEmpty()) {
                    sb.append(str2);
                } else {
                    int i3 = i < iArr.length ? iArr[i] : 0;
                    if (i3 > 0) {
                        sb.append(stretchWord(str2, i3));
                    } else {
                        sb.append(str2);
                    }
                    i++;
                }
            }
            if (i2 < split.length - 1) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public static String justifyLines(String str) {
        return justifyLines(str, null, null);
    }

    public static String addKashidaFixed(String str, int i) {
        return applyAutoKashida(str, i);
    }

    public static void showKashidaDialog(final Context context, final EditText editText) {
        if (editText == null || context == null) {
            return;
        }
        Activity activity = getActivity(context);
        if (activity != null) {
            context = activity;
        }
        final String obj = editText.getText() != null ? editText.getText().toString() : "";
        CharSequence[] charSequenceArr = {"✨ تسوية وتنسيق الأسطر (Madd Engine Pro)", "ـ مد خفيف (ـ)", "ــ مد متوسط (ــ)", "ـــ مد عريض (ـــ)", "❌ إزالة جميع المدود"};
        try {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("خيارات مد وتسويه الأسطر");
            builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    String obj2 = editText.getText() != null ? editText.getText().toString() : obj;
                    switch (i) {
                        case 0:
                            obj2 = ArabicTextEnhancer.justifyLines(obj2);
                            Toast.makeText(context, "✨ تم تسوية الأسطر بالملي", 0).show();
                            break;
                        case 1:
                            obj2 = ArabicTextEnhancer.justifyLines(ArabicTextEnhancer.addKashidaFixed(ArabicTextEnhancer.cleanTatweel(obj2), 1));
                            Toast.makeText(context, "تم تطبيق مد خفيف متوازن", 0).show();
                            break;
                        case 2:
                            obj2 = ArabicTextEnhancer.justifyLines(ArabicTextEnhancer.addKashidaFixed(ArabicTextEnhancer.cleanTatweel(obj2), 2));
                            Toast.makeText(context, "تم تطبيق مد متوسط متوازن", 0).show();
                            break;
                        case 3:
                            obj2 = ArabicTextEnhancer.justifyLines(ArabicTextEnhancer.addKashidaFixed(ArabicTextEnhancer.cleanTatweel(obj2), 4));
                            Toast.makeText(context, "تم تطبيق مد عريض متوازن", 0).show();
                            break;
                        case 4:
                            obj2 = ArabicTextEnhancer.cleanTatweel(obj2);
                            Toast.makeText(context, "تمت إزالة جميع المدود", 0).show();
                            break;
                    }
                    editText.setText(obj2);
                    try {
                        editText.setSelection(obj2.length());
                    } catch (Exception e) {
                    }
                }
            });
            builder.setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null);
            builder.create().show();
        } catch (Throwable th) {
            th.printStackTrace();
            editText.setText(justifyLines(obj));
        }
    }

    public static boolean handleSwitchClick(Context context, EditText editText) {
        if (editText == null) {
            return false;
        }
        if (!containsArabic(editText.getText() != null ? editText.getText().toString() : "")) {
            return false;
        }
        showKashidaDialog(context, editText);
        return true;
    }

    public static void addJustifyOptionToTextTab(ViewGroup viewGroup) {
        int i;
        if (viewGroup == null) {
            return;
        }
        try {
            final Context context = viewGroup.getContext();
            int i2 = -1;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                View childAt = viewGroup.getChildAt(i3);
                try {
                    i = childAt.getClass().getField("actionDo").getInt(childAt);
                } catch (Exception e) {
                }
                if (i == 119) {
                    return;
                }
                if (i == 4) {
                    i2 = i3 + 1;
                }
            }
            Class<?> cls = Class.forName("com.tawfiq.imaginstudio.imagetools.pixellab/controls/widgets/option_ui".replace('/', '.'));
            View view = (View) cls.getConstructor(Context.class, AttributeSet.class).newInstance(context, null);
            cls.getField("actionDo").setInt(view, 119);
            ImageButton imageButton = (ImageButton) view.findViewById(R.id.option_ui_icon);
            if (imageButton != null) {
                imageButton.setImageResource(R.drawable.controls_align_center);
                imageButton.setColorFilter(-1);
            }
            TextView textView = (TextView) view.findViewById(R.id.option_ui_label);
            if (textView != null) {
                textView.setText("تسوية الأسطر");
                textView.setVisibility(0);
            }
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    try {
                        Activity activity = ArabicTextEnhancer.getActivity(context);
                        if (activity != null) {
                            activity.getClass().getMethod("doActionFor", Integer.TYPE, Class.forName("com.tawfiq.imaginstudio.imagetools.pixellab.undo.History$ComponentType")).invoke(activity, 119, Enum.valueOf(Class.forName("com.tawfiq.imaginstudio.imagetools.pixellab.undo.History$ComponentType"), "text"));
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
            };
            view.setOnClickListener(onClickListener);
            if (imageButton != null) {
                imageButton.setOnClickListener(onClickListener);
            }
            if (textView != null) {
                textView.setOnClickListener(onClickListener);
            }
            if (i2 < 0 || i2 > viewGroup.getChildCount()) {
                i2 = Math.min(6, viewGroup.getChildCount());
            }
            viewGroup.addView(view, i2, new LinearLayout.LayoutParams(-2, -2));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static Object findTextComponent(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            try {
                Method declaredMethod = obj.getClass().getDeclaredMethod("getSelectedText", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(obj, new Object[0]);
                if (invoke != null) {
                    return invoke;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Exception e) {
        }
        Field declaredField = obj.getClass().getDeclaredField("callback");
        declaredField.setAccessible(true);
        Object obj2 = declaredField.get(obj);
        if (obj2 == null) {
            try {
                obj2 = obj.getClass().getMethod("getActivity", new Class[0]).invoke(obj, new Object[0]);
            } catch (Exception e2) {
            }
        }
        if (obj2 != null) {
            Field declaredField2 = obj2.getClass().getDeclaredField("textContain");
            declaredField2.setAccessible(true);
            Object obj3 = declaredField2.get(obj2);
            if (obj3 != null) {
                Object invoke2 = obj3.getClass().getMethod("getCurrentText", new Class[0]).invoke(obj3, new Object[0]);
                if (invoke2 != null) {
                    return invoke2;
                }
                Field declaredField3 = obj3.getClass().getDeclaredField("texts");
                declaredField3.setAccessible(true);
                Map map = (Map) declaredField3.get(obj3);
                if (map != null && !map.isEmpty()) {
                    for (Object obj4 : map.values()) {
                        if (obj4 != null) {
                            return obj4;
                        }
                    }
                }
            }
        }
        return null;
    }

    private static GradientDrawable makeBg(int i, float f, Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(dp(context, (int) f));
        return gradientDrawable;
    }

    private static TextView createButton(Context context, String str, int i, int i2, int i3, int i4) {
        TextView textView = new TextView(context);
        textView.setText(str);
        textView.setTextColor(i2);
        textView.setTextSize(2, 12.0f);
        textView.setGravity(17);
        textView.setBackground(makeBg(i, 6.0f, context));
        textView.setPadding(dp(context, i3), dp(context, i4), dp(context, i3), dp(context, i4));
        return textView;
    }

    public static void buildJustifyPanel(final Object obj) {
        LinearLayout linearLayout;
        TextPaint textPaint;
        TextPaint textPaint2;
        TextPaint textPaint3;
        int i;
        int i2;
        if (obj == null) {
            return;
        }
        try {
            Field declaredField = obj.getClass().getDeclaredField("controlsLayout");
            declaredField.setAccessible(true);
            LinearLayout linearLayout2 = (LinearLayout) declaredField.get(obj);
            if (linearLayout2 == null) {
                return;
            }
            linearLayout2.removeAllViews();
            final Context context = linearLayout2.getContext();
            final Object findTextComponent = findTextComponent(obj);
            if (findTextComponent == null) {
                TextView textView = new TextView(context);
                textView.setText("⚠️ يرجى تحديد نص أولاً لتطبيق تسوية الأسطر");
                textView.setTextColor(Color.parseColor("#FFA726"));
                textView.setTextSize(14.0f);
                textView.setGravity(17);
                textView.setPadding(dp(context, 16), dp(context, 20), dp(context, 16), dp(context, 20));
                linearLayout2.addView(textView);
                return;
            }
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("callback");
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(obj);
                if (obj2 != null) {
                    obj2.getClass().getMethod("saveCurrTextState", findTextComponent.getClass()).invoke(obj2, findTextComponent);
                }
            } catch (Throwable th) {
            }
            final Method method = findTextComponent.getClass().getMethod("returnText", new Class[0]);
            final String str = (String) method.invoke(findTextComponent, new Object[0]);
            if (str == null) {
                linearLayout = linearLayout2;
            } else {
                if (!str.trim().isEmpty()) {
                    final String cleanTatweel = cleanTatweel(str);
                    final int[] iArr = {5};
                    final boolean[] zArr = {false};
                    try {
                        iArr[0] = ((Integer) findTextComponent.getClass().getMethod("getTextAlign", new Class[0]).invoke(findTextComponent, new Object[0])).intValue();
                    } catch (Throwable th2) {
                    }
                    try {
                        Field declaredField3 = findTextComponent.getClass().getDeclaredField("textDraw");
                        declaredField3.setAccessible(true);
                        Object obj3 = declaredField3.get(findTextComponent);
                        if (obj3 != null) {
                            Field declaredField4 = obj3.getClass().getDeclaredField("justifyAlign");
                            declaredField4.setAccessible(true);
                            zArr[0] = declaredField4.getBoolean(obj3);
                        }
                    } catch (Throwable th3) {
                    }
                    try {
                        Field declaredField5 = findTextComponent.getClass().getDeclaredField("textDraw");
                        declaredField5.setAccessible(true);
                        Object obj4 = declaredField5.get(findTextComponent);
                        if (obj4 == null) {
                            textPaint = null;
                        } else {
                            textPaint = (TextPaint) obj4.getClass().getMethod("getPaint", new Class[0]).invoke(obj4, new Object[0]);
                        }
                    } catch (Throwable th4) {
                        textPaint = null;
                    }
                    if (textPaint == null) {
                        textPaint2 = new TextPaint();
                    } else {
                        textPaint2 = new TextPaint(textPaint);
                    }
                    try {
                        Object invoke = findTextComponent.getClass().getMethod("getMainFont", new Class[0]).invoke(findTextComponent, new Object[0]);
                        if (invoke instanceof Typeface) {
                            textPaint2.setTypeface((Typeface) invoke);
                        }
                    } catch (Throwable th5) {
                    }
                    try {
                        Object invoke2 = findTextComponent.getClass().getMethod("getTextSize", new Class[0]).invoke(findTextComponent, new Object[0]);
                        if ((invoke2 instanceof Float) && ((Float) invoke2).floatValue() > 1.0f) {
                            textPaint2.setTextSize(((Float) invoke2).floatValue());
                        }
                    } catch (Throwable th6) {
                    }
                    final Method method2 = findTextComponent.getClass().getMethod("setText", String.class, Boolean.TYPE);
                    try {
                        Field declaredField6 = obj.getClass().getDeclaredField("cancelAction");
                        declaredField6.setAccessible(true);
                        textPaint3 = textPaint2;
                        try {
                            declaredField6.set(obj, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        method2.invoke(findTextComponent, str, false);
                                        findTextComponent.getClass().getMethod("setTextAlign", Integer.TYPE).invoke(findTextComponent, Integer.valueOf(iArr[0]));
                                        findTextComponent.getClass().getMethod("setJustify", Boolean.TYPE).invoke(findTextComponent, Boolean.valueOf(zArr[0]));
                                    } catch (Throwable th7) {
                                    }
                                }
                            });
                        } catch (Throwable th7) {
                        }
                    } catch (Throwable th8) {
                        textPaint3 = textPaint2;
                    }
                    try {
                        Field declaredField7 = obj.getClass().getDeclaredField("positiveAction");
                        declaredField7.setAccessible(true);
                        declaredField7.set(obj, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.4
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    Field declaredField8 = obj.getClass().getDeclaredField("callback");
                                    declaredField8.setAccessible(true);
                                    Object obj5 = declaredField8.get(obj);
                                    if (obj5 != null) {
                                        obj5.getClass().getMethod("saveCurrTextState", findTextComponent.getClass()).invoke(obj5, findTextComponent);
                                    }
                                } catch (Throwable th9) {
                                }
                            }
                        });
                    } catch (Throwable th9) {
                    }
                    List<String> extractWords = extractWords(cleanTatweel);
                    final int[] iArr2 = new int[extractWords.size()];
                    LinearLayout linearLayout3 = new LinearLayout(context);
                    linearLayout3.setOrientation(1);
                    linearLayout3.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                    linearLayout3.setPadding(dp(context, 10), dp(context, 6), dp(context, 10), dp(context, 6));
                    LinearLayout linearLayout4 = new LinearLayout(context);
                    linearLayout4.setOrientation(0);
                    linearLayout4.setGravity(16);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.bottomMargin = dp(context, 6);
                    linearLayout4.setLayoutParams(layoutParams);
                    TextView textView2 = new TextView(context);
                    textView2.setText("✨ تسوية وموازنة الأسطر بالملي (Madd Pro)");
                    textView2.setTextColor(-1);
                    textView2.setTextSize(2, 13.0f);
                    textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
                    linearLayout4.addView(textView2);
                    final TextView textView3 = new TextView(context);
                    textView3.setText("جاهز للموازنة");
                    textView3.setTextColor(Color.parseColor("#FAB852"));
                    textView3.setTextSize(2, 12.0f);
                    textView3.setBackground(makeBg(Color.parseColor("#1A232C"), 6.0f, context));
                    textView3.setPadding(dp(context, 8), dp(context, 3), dp(context, 8), dp(context, 3));
                    linearLayout4.addView(textView3);
                    linearLayout3.addView(linearLayout4);
                    final int[] iArr3 = {0};
                    View[] viewArr = new View[1];
                    FrameLayout[] frameLayoutArr = new FrameLayout[1];
                    HorizontalScrollView horizontalScrollView = new HorizontalScrollView(context);
                    horizontalScrollView.setHorizontalScrollBarEnabled(false);
                    LinearLayout linearLayout5 = new LinearLayout(context);
                    linearLayout5.setOrientation(0);
                    linearLayout5.setGravity(16);
                    TextView createButton = createButton(context, "📐 تسوية متوازنة بالملي", Color.parseColor("#00838F"), -1, 12, 7);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, dp(context, 34));
                    layoutParams2.rightMargin = dp(context, 6);
                    createButton.setLayoutParams(layoutParams2);
                    final TextPaint textPaint4 = textPaint3;
                    createButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                String str2 = cleanTatweel;
                                try {
                                    str2 = (String) method.invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th10) {
                                }
                                method2.invoke(findTextComponent, ArabicTextEnhancer.justifyLines(str2, textPaint4, null), false);
                                try {
                                    findTextComponent.getClass().getMethod("setJustify", Boolean.TYPE).invoke(findTextComponent, false);
                                } catch (Throwable th11) {
                                }
                                try {
                                    findTextComponent.getClass().getMethod("requestLayout", new Class[0]).invoke(findTextComponent, new Object[0]);
                                    findTextComponent.getClass().getMethod("fullRedraw", new Class[0]).invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th12) {
                                }
                                textView3.setText("متوازن بالملي 100% ✓");
                                textView3.setTextColor(Color.parseColor("#4DD0E1"));
                                Toast.makeText(context, "✨ تم ضبط كافة الأسطر بميزان أطول سطر بالمليمتر", 0).show();
                            } catch (Throwable th13) {
                                th13.printStackTrace();
                            }
                        }
                    });
                    linearLayout5.addView(createButton);
                    TextView createButton2 = createButton(context, "↔️ املأ العرض", Color.parseColor("#1565C0"), -1, 12, 7);
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, dp(context, 34));
                    layoutParams3.rightMargin = dp(context, 6);
                    createButton2.setLayoutParams(layoutParams3);
                    final TextPaint textPaint5 = textPaint3;
                    createButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.6
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            float f;
                            try {
                                Field declaredField8 = obj.getClass().getDeclaredField("callback");
                                declaredField8.setAccessible(true);
                                Object obj5 = declaredField8.get(obj);
                                if (obj5 == null) {
                                    f = 0.0f;
                                } else {
                                    Field declaredField9 = obj5.getClass().getDeclaredField("textContain");
                                    declaredField9.setAccessible(true);
                                    View view2 = (View) declaredField9.get(obj5);
                                    if (view2 != null && view2.getWidth() > 0) {
                                        f = view2.getWidth() * 0.9f;
                                    } else {
                                        obj5.getClass().getDeclaredField("displayWidth").setAccessible(true);
                                        f = r1.getInt(obj5) * 0.9f;
                                    }
                                }
                                if (f <= 100.0f) {
                                    f = 800.0f;
                                }
                                String str2 = cleanTatweel;
                                try {
                                    str2 = (String) method.invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th10) {
                                }
                                method2.invoke(findTextComponent, ArabicTextEnhancer.fillWidth(ArabicTextEnhancer.cleanTatweel(str2), textPaint5, f), false);
                                try {
                                    findTextComponent.getClass().getMethod("setJustify", Boolean.TYPE).invoke(findTextComponent, false);
                                } catch (Throwable th11) {
                                }
                                try {
                                    findTextComponent.getClass().getMethod("requestLayout", new Class[0]).invoke(findTextComponent, new Object[0]);
                                    findTextComponent.getClass().getMethod("fullRedraw", new Class[0]).invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th12) {
                                }
                                textView3.setText("ممتلئ للعرض بالملي ✓");
                                textView3.setTextColor(Color.parseColor("#64B5F6"));
                                Toast.makeText(context, "↔️ تم ملء العرض وموازنة الحواف بدقة", 0).show();
                            } catch (Throwable th13) {
                                th13.printStackTrace();
                            }
                        }
                    });
                    linearLayout5.addView(createButton2);
                    TextView createButton3 = createButton(context, "✨ مد كشيدة", Color.parseColor("#37474F"), -1, 12, 7);
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, dp(context, 34));
                    layoutParams4.rightMargin = dp(context, 6);
                    createButton3.setLayoutParams(layoutParams4);
                    final TextPaint textPaint6 = textPaint3;
                    createButton3.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                String str2 = cleanTatweel;
                                try {
                                    str2 = (String) method.invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th10) {
                                }
                                method2.invoke(findTextComponent, ArabicTextEnhancer.justifyLines(ArabicTextEnhancer.applyAutoKashida(ArabicTextEnhancer.cleanTatweel(str2), 2), textPaint6, null), false);
                                try {
                                    findTextComponent.getClass().getMethod("requestLayout", new Class[0]).invoke(findTextComponent, new Object[0]);
                                    findTextComponent.getClass().getMethod("fullRedraw", new Class[0]).invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th11) {
                                }
                                textView3.setText("مد كشيدة");
                                textView3.setTextColor(Color.parseColor("#FAB852"));
                            } catch (Throwable th12) {
                                th12.printStackTrace();
                            }
                        }
                    });
                    linearLayout5.addView(createButton3);
                    TextView createButton4 = createButton(context, "❌ إزالة المدود", Color.parseColor("#C62828"), -1, 10, 7);
                    createButton4.setLayoutParams(new LinearLayout.LayoutParams(-2, dp(context, 34)));
                    int i3 = -2;
                    createButton4.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            try {
                                Arrays.fill(iArr2, 0);
                                iArr3[0] = 0;
                                String str2 = cleanTatweel;
                                try {
                                    str2 = (String) method.invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th10) {
                                }
                                method2.invoke(findTextComponent, ArabicTextEnhancer.cleanTatweel(str2), false);
                                try {
                                    findTextComponent.getClass().getMethod("setJustify", Boolean.TYPE).invoke(findTextComponent, false);
                                } catch (Throwable th11) {
                                }
                                try {
                                    findTextComponent.getClass().getMethod("requestLayout", new Class[0]).invoke(findTextComponent, new Object[0]);
                                    findTextComponent.getClass().getMethod("fullRedraw", new Class[0]).invoke(findTextComponent, new Object[0]);
                                } catch (Throwable th12) {
                                }
                                textView3.setText("نص خام");
                                textView3.setTextColor(-1);
                                Toast.makeText(context, "تمت إزالة جميع المدود", 0).show();
                            } catch (Throwable th13) {
                                th13.printStackTrace();
                            }
                        }
                    });
                    linearLayout5.addView(createButton4);
                    horizontalScrollView.addView(linearLayout5);
                    linearLayout3.addView(horizontalScrollView);
                    int i4 = 32;
                    int i5 = 4;
                    if (extractWords.isEmpty()) {
                        i = -1;
                        i2 = 2;
                    } else {
                        TextView textView4 = new TextView(context);
                        textView4.setText("التحكم بمد كل كلمة على حدة (+ لمد الكلمة، − لتقصيرها):");
                        textView4.setTextColor(Color.parseColor("#B0BEC5"));
                        int i6 = 2;
                        textView4.setTextSize(2, 11.0f);
                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams5.topMargin = dp(context, 8);
                        layoutParams5.bottomMargin = dp(context, 4);
                        textView4.setLayoutParams(layoutParams5);
                        linearLayout3.addView(textView4);
                        HorizontalScrollView horizontalScrollView2 = new HorizontalScrollView(context);
                        int i7 = 0;
                        horizontalScrollView2.setHorizontalScrollBarEnabled(false);
                        LinearLayout linearLayout6 = new LinearLayout(context);
                        linearLayout6.setOrientation(0);
                        int i8 = 16;
                        linearLayout6.setGravity(16);
                        TextView[] textViewArr = new TextView[extractWords.size()];
                        int i9 = 0;
                        while (i9 < extractWords.size()) {
                            final String str2 = extractWords.get(i9);
                            LinearLayout linearLayout7 = new LinearLayout(context);
                            linearLayout7.setOrientation(i7);
                            linearLayout7.setGravity(i8);
                            linearLayout7.setBackground(makeBg(Color.parseColor("#1E2732"), 14.0f, context));
                            linearLayout7.setPadding(dp(context, i5), dp(context, i6), dp(context, i5), dp(context, i6));
                            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(i3, dp(context, i4));
                            layoutParams6.rightMargin = dp(context, 6);
                            linearLayout7.setLayoutParams(layoutParams6);
                            LinearLayout linearLayout8 = linearLayout6;
                            final TextView[] textViewArr2 = textViewArr;
                            TextView createButton5 = createButton(context, "−", Color.parseColor("#2C3844"), -1, 8, 4);
                            createButton5.setTextSize(2, 14.0f);
                            createButton5.setLayoutParams(new LinearLayout.LayoutParams(dp(context, 26), dp(context, 26)));
                            final int i10 = i9;
                            createButton5.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.9
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    int[] iArr4 = iArr2;
                                    int i11 = i10;
                                    int i12 = iArr4[i11];
                                    if (i12 > 0) {
                                        iArr4[i11] = i12 - 1;
                                        try {
                                            method2.invoke(findTextComponent, ArabicTextEnhancer.applyWordKashidaOverrides(cleanTatweel, iArr4), false);
                                            try {
                                                findTextComponent.getClass().getMethod("requestLayout", new Class[0]).invoke(findTextComponent, new Object[0]);
                                                findTextComponent.getClass().getMethod("fullRedraw", new Class[0]).invoke(findTextComponent, new Object[0]);
                                            } catch (Throwable th10) {
                                            }
                                            textViewArr2[i10].setText(str2 + (iArr2[i10] > 0 ? " (" + iArr2[i10] + ")" : ""));
                                            textView3.setText(str2 + ": " + iArr2[i10]);
                                        } catch (Throwable th11) {
                                        }
                                    }
                                }
                            });
                            linearLayout7.addView(createButton5);
                            TextView textView5 = new TextView(context);
                            textViewArr2[i10] = textView5;
                            textView5.setText(str2);
                            textView5.setTextColor(-1);
                            textView5.setTextSize(2, 12.0f);
                            textView5.setPadding(dp(context, 6), 0, dp(context, 6), 0);
                            linearLayout7.addView(textView5);
                            TextView createButton6 = createButton(context, "+", Color.parseColor("#37474F"), Color.parseColor("#FAB852"), 8, 4);
                            createButton6.setTextSize(2, 14.0f);
                            createButton6.setLayoutParams(new LinearLayout.LayoutParams(dp(context, 26), dp(context, 26)));
                            createButton6.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.10
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    int[] iArr4 = iArr2;
                                    int i11 = i10;
                                    int i12 = iArr4[i11];
                                    if (i12 < 40) {
                                        iArr4[i11] = i12 + 1;
                                        try {
                                            method2.invoke(findTextComponent, ArabicTextEnhancer.applyWordKashidaOverrides(cleanTatweel, iArr4), false);
                                            try {
                                                findTextComponent.getClass().getMethod("requestLayout", new Class[0]).invoke(findTextComponent, new Object[0]);
                                                findTextComponent.getClass().getMethod("fullRedraw", new Class[0]).invoke(findTextComponent, new Object[0]);
                                            } catch (Throwable th10) {
                                            }
                                            textViewArr2[i10].setText(str2 + " (" + iArr2[i10] + ")");
                                            textView3.setText(str2 + ": +" + iArr2[i10]);
                                        } catch (Throwable th11) {
                                        }
                                    }
                                }
                            });
                            linearLayout7.addView(createButton6);
                            linearLayout6 = linearLayout8;
                            linearLayout6.addView(linearLayout7);
                            i9 = i10 + 1;
                            textViewArr = textViewArr2;
                            i7 = 0;
                            i6 = 2;
                            i3 = -2;
                            i8 = 16;
                            i5 = 4;
                            i4 = 32;
                        }
                        i = -1;
                        i2 = 2;
                        horizontalScrollView2.addView(linearLayout6);
                        linearLayout3.addView(horizontalScrollView2);
                    }
                    LinearLayout linearLayout9 = new LinearLayout(context);
                    int i11 = 0;
                    linearLayout9.setOrientation(0);
                    linearLayout9.setGravity(16);
                    LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(i, -2);
                    layoutParams7.topMargin = dp(context, 8);
                    linearLayout9.setLayoutParams(layoutParams7);
                    TextView textView6 = new TextView(context);
                    textView6.setText("شريط شدة المد الذكي:");
                    textView6.setTextColor(Color.parseColor("#B0BEC5"));
                    textView6.setTextSize(i2, 11.0f);
                    linearLayout9.addView(textView6);
                    linearLayout3.addView(linearLayout9);
                    final C1SliderUpdater c1SliderUpdater = new C1SliderUpdater(iArr3, textView3, viewArr, frameLayoutArr, context, cleanTatweel, textPaint3, method2, findTextComponent);
                    LinearLayout linearLayout10 = new LinearLayout(context);
                    linearLayout10.setOrientation(0);
                    linearLayout10.setGravity(16);
                    LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(i, -2);
                    layoutParams8.topMargin = dp(context, 4);
                    linearLayout10.setLayoutParams(layoutParams8);
                    TextView createButton7 = createButton(context, "−", Color.parseColor("#37474F"), -1, 12, 6);
                    createButton7.setTextSize(i2, 16.0f);
                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(dp(context, 36), dp(context, 32));
                    layoutParams9.rightMargin = dp(context, 6);
                    createButton7.setLayoutParams(layoutParams9);
                    createButton7.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.11
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            C1SliderUpdater.this.apply(Math.max(0, iArr3[0] - 5));
                        }
                    });
                    linearLayout10.addView(createButton7);
                    final FrameLayout frameLayout = new FrameLayout(context);
                    frameLayoutArr[0] = frameLayout;
                    frameLayout.setLayoutParams(new LinearLayout.LayoutParams(0, dp(context, 32), 1.0f));
                    View view = new View(context);
                    view.setBackground(makeBg(Color.parseColor("#1C2630"), 4.0f, context));
                    new FrameLayout.LayoutParams(-1, dp(context, 8)).gravity = 16;
                    frameLayout.addView(view);
                    View view2 = new View(context);
                    viewArr[0] = view2;
                    view2.setBackground(makeBg(Color.parseColor("#FAB852"), 4.0f, context));
                    FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(dp(context, 4), dp(context, 8));
                    layoutParams10.gravity = 19;
                    view2.setLayoutParams(layoutParams10);
                    frameLayout.addView(view2);
                    frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.12
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view3, MotionEvent motionEvent) {
                            int action = motionEvent.getAction();
                            if (action != 0 && action != 2) {
                                return true;
                            }
                            float x = motionEvent.getX();
                            int width = frameLayout.getWidth();
                            if (width > 0) {
                                int round = Math.round((x / width) * 100.0f);
                                if (round < 0) {
                                    round = 0;
                                }
                                if (round > 100) {
                                    round = 100;
                                }
                                c1SliderUpdater.apply(round);
                            }
                            return true;
                        }
                    });
                    linearLayout10.addView(frameLayout);
                    TextView createButton8 = createButton(context, "+", Color.parseColor("#37474F"), -1, 12, 6);
                    createButton8.setTextSize(i2, 16.0f);
                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(dp(context, 36), dp(context, 32));
                    layoutParams11.leftMargin = dp(context, 6);
                    createButton8.setLayoutParams(layoutParams11);
                    createButton8.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.13
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            C1SliderUpdater.this.apply(Math.min(100, iArr3[0] + 5));
                        }
                    });
                    linearLayout10.addView(createButton8);
                    linearLayout3.addView(linearLayout10);
                    LinearLayout linearLayout11 = new LinearLayout(context);
                    linearLayout11.setOrientation(0);
                    linearLayout11.setGravity(16);
                    LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams12.topMargin = dp(context, 6);
                    linearLayout11.setLayoutParams(layoutParams12);
                    int[] iArr4 = {0, 25, 50, 75, 100};
                    int i12 = 0;
                    while (i12 < 5) {
                        final int i13 = iArr4[i12];
                        TextView createButton9 = createButton(context, i13 + "%", Color.parseColor("#212B35"), Color.parseColor("#B0BEC5"), 4, 3);
                        createButton9.setTextSize(i2, 11.0f);
                        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(i11, dp(context, 26), 1.0f);
                        if (i12 > 0) {
                            layoutParams13.leftMargin = dp(context, 4);
                        }
                        createButton9.setLayoutParams(layoutParams13);
                        createButton9.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer.14
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view3) {
                                C1SliderUpdater.this.apply(i13);
                            }
                        });
                        linearLayout11.addView(createButton9);
                        i12++;
                        i11 = 0;
                    }
                    linearLayout3.addView(linearLayout11);
                    linearLayout2.addView(linearLayout3);
                    return;
                }
                linearLayout = linearLayout2;
            }
            TextView textView7 = new TextView(context);
            textView7.setText("⚠️ الطبقة النصية المحددة فارغة، اكتب نصاً أولاً");
            textView7.setTextColor(Color.parseColor("#FFA726"));
            textView7.setTextSize(14.0f);
            textView7.setGravity(17);
            textView7.setPadding(dp(context, 16), dp(context, 20), dp(context, 16), dp(context, 20));
            linearLayout.addView(textView7);
        } catch (Throwable th10) {
            th10.printStackTrace();
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.ArabicTextEnhancer$1SliderUpdater, reason: invalid class name */
    /* loaded from: classes.dex */
    final class C1SliderUpdater {
        final /* synthetic */ String val$baseCleanText;
        final /* synthetic */ Context val$context;
        final /* synthetic */ int[] val$currentSliderPercent;
        final /* synthetic */ Method val$mSetText;
        final /* synthetic */ View[] val$progressFillRef;
        final /* synthetic */ TextView val$statusBadge;
        final /* synthetic */ Object val$textComp;
        final /* synthetic */ TextPaint val$textPaint;
        final /* synthetic */ FrameLayout[] val$trackLayoutRef;

        C1SliderUpdater(int[] iArr, TextView textView, View[] viewArr, FrameLayout[] frameLayoutArr, Context context, String str, TextPaint textPaint, Method method, Object obj) {
            this.val$currentSliderPercent = iArr;
            this.val$statusBadge = textView;
            this.val$progressFillRef = viewArr;
            this.val$trackLayoutRef = frameLayoutArr;
            this.val$context = context;
            this.val$baseCleanText = str;
            this.val$textPaint = textPaint;
            this.val$mSetText = method;
            this.val$textComp = obj;
        }

        void apply(int i) {
            String justifyLines;
            FrameLayout frameLayout;
            if (i < 0) {
                i = 0;
            }
            if (i > 100) {
                i = 100;
            }
            this.val$currentSliderPercent[0] = i;
            this.val$statusBadge.setText("مد: " + i + "%");
            if (this.val$progressFillRef[0] != null && (frameLayout = this.val$trackLayoutRef[0]) != null) {
                int width = frameLayout.getWidth();
                if (width <= 0) {
                    width = ArabicTextEnhancer.dp(this.val$context, 180);
                }
                int i2 = (int) (width * (i / 100.0f));
                ViewGroup.LayoutParams layoutParams = this.val$progressFillRef[0].getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.width = Math.max(ArabicTextEnhancer.dp(this.val$context, 4), i2);
                    this.val$progressFillRef[0].setLayoutParams(layoutParams);
                }
            }
            try {
                if (i == 0) {
                    justifyLines = this.val$baseCleanText;
                } else {
                    justifyLines = ArabicTextEnhancer.justifyLines(ArabicTextEnhancer.applyAutoKashida(this.val$baseCleanText, Math.max(1, Math.round((i / 100.0f) * 8.0f))), this.val$textPaint, null);
                }
                this.val$mSetText.invoke(this.val$textComp, justifyLines, false);
                try {
                    this.val$textComp.getClass().getMethod("setJustify", Boolean.TYPE).invoke(this.val$textComp, false);
                } catch (Throwable th) {
                }
                try {
                    this.val$textComp.getClass().getMethod("requestLayout", new Class[0]).invoke(this.val$textComp, new Object[0]);
                    this.val$textComp.getClass().getMethod("fullRedraw", new Class[0]).invoke(this.val$textComp, new Object[0]);
                } catch (Throwable th2) {
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        }
    }
}
