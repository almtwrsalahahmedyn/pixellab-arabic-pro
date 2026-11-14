package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.sbotGuard;
import androidx.appcompat.app.AppCompatActivity;
import com.TG.tg;
import com.arasthel.asyncjob.AsyncJob;
import com.google.android.gms.ads.AdListener;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.quoteCard;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class quotes_browser extends AppCompatActivity {
    private static final String LANG_ENG = "ar";
    private static final String LANG_FR = "tg";
    public static final String QUOTE_EXPORTED = "quoteExported";
    LinearLayout.LayoutParams lpa;
    LinearLayout quotesHolder;
    ScrollView quotesHolderScroll;
    Spinner quotesLang;
    Spinner quotesSection;
    String selectedLangDir = LANG_ENG;
    int selectedLangId = 0;
    ArrayList<String> spinnerArray = null;
    ArrayList<String> sectionSpinnerArray = null;
    String currJob = null;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends AdListener {
        final /* synthetic */ LinearLayout val$adContainer;

        public AnonymousClass1(LinearLayout linearLayout) {
            this.val$adContainer = linearLayout;
        }

        public void onAdLoaded() {
            super.onAdLoaded();
            this.val$adContainer.setVisibility(0);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements AsyncJob.OnBackgroundJob {
        final /* synthetic */ String val$job;

        /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser$5$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements AsyncJob.OnMainThreadJob {
            final /* synthetic */ String val$quoteText;

            /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser$5$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public class ViewOnClickListenerC00331 implements View.OnClickListener {
                public ViewOnClickListenerC00331() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    quotes_browser.this.sendQuoteToMain(anonymousClass1.val$quoteText);
                }
            }

            /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser$5$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass2 implements View.OnLongClickListener {
                public AnonymousClass2() {
                }

                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.addFlags(524288);
                    intent.setType("text/*");
                    intent.putExtra("android.intent.extra.TEXT", AnonymousClass1.this.val$quoteText);
                    quotes_browser.this.startActivity(Intent.createChooser(intent, "Share the quote : "));
                    return true;
                }
            }

            public AnonymousClass1(String str) {
                this.val$quoteText = str;
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
            public void doInUIThread() {
                quoteCard quotecard = new quoteCard(quotes_browser.this.getApplicationContext(), this.val$quoteText, new ViewOnClickListenerC00331(), new AnonymousClass2());
                quotes_browser quotes_browserVar = quotes_browser.this;
                quotes_browserVar.quotesHolder.addView(quotecard, quotes_browserVar.lpa);
            }
        }

        public AnonymousClass5(String str) {
            this.val$job = str;
        }

        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        public void doOnBackground() {
            if (!quotes_browser.this.currJob.equals(this.val$job) || quotes_browser.this.getApplicationContext() == null) {
                return;
            }
            AssetManager assets = quotes_browser.this.getAssets();
            try {
                if (!quotes_browser.this.currJob.equals(this.val$job) || quotes_browser.this.getApplicationContext() == null) {
                    return;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(assets.open(this.val$job)));
                StringBuffer stringBuffer = new StringBuffer();
                char[] cArr = new char[1024];
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (read <= 0) {
                        try {
                            break;
                        } catch (JSONException e) {
                            e.printStackTrace();
                            Toast.makeText(quotes_browser.this.getApplicationContext(), quotes_browser.this.getString(R.string.error_quotes_load), 0).show();
                            return;
                        }
                    }
                    stringBuffer.append(cArr, 0, read);
                }
                if (!quotes_browser.this.currJob.equals(this.val$job) || quotes_browser.this.getApplicationContext() == null) {
                    return;
                }
                JSONArray jSONArray = new JSONObject(stringBuffer.toString()).getJSONArray("quotes");
                if (!quotes_browser.this.currJob.equals(this.val$job) || quotes_browser.this.getApplicationContext() == null) {
                    return;
                }
                commonFuncs.shuffleJsonArray(jSONArray);
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (quotes_browser.this.currJob.equals(this.val$job) && quotes_browser.this.getApplicationContext() != null) {
                        AsyncJob.doOnMainThread(new AnonymousClass1(jSONArray.getString(i)));
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                Toast.makeText(quotes_browser.this.getApplicationContext(), quotes_browser.this.getString(R.string.error_quotes_load), 0).show();
            }
        }
    }

    /* loaded from: classes.dex */
    public class SearchWatcher implements TextWatcher {
        public SearchWatcher() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            quotes_browser.this.filterQuotes(editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    private void LoadLangs() {
        try {
            this.spinnerArray = new ArrayList<>(Arrays.asList(getAssets().list("quotes")));
        } catch (IOException e) {
            e.printStackTrace();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.spinnerArray.iterator();
        while (it.hasNext()) {
            String next = it.next();
            int identifier = getResources().getIdentifier(next, "string", getPackageName());
            if (identifier != 0) {
                next = getResources().getString(identifier);
            }
            arrayList.add(next);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.quotesLang.setAdapter((SpinnerAdapter) arrayAdapter);
        if (Locale.getDefault().getLanguage().equals(LANG_FR)) {
            this.selectedLangDir = LANG_FR;
        }
        int max = Math.max(0, this.spinnerArray.indexOf(this.selectedLangDir));
        this.selectedLangId = max;
        this.quotesLang.setSelection(max);
        LoadSections();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LoadQuotes() {
        String str = "quotes/" + this.selectedLangDir + "/" + this.sectionSpinnerArray.get((int) this.quotesSection.getSelectedItemId());
        if (str.equals(this.currJob)) {
            return;
        }
        this.currJob = str;
        this.quotesHolder.removeAllViews();
        this.quotesHolderScroll.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser.4
            @Override // java.lang.Runnable
            public void run() {
                quotes_browser.this.quotesHolderScroll.scrollTo(0, 0);
            }
        });
        AsyncJob.doInBackground(new AnonymousClass5(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void LoadSections() {
        try {
            this.sectionSpinnerArray = new ArrayList<>(Arrays.asList(getAssets().list("quotes/" + this.selectedLangDir)));
        } catch (IOException e) {
            e.printStackTrace();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.sectionSpinnerArray.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next.substring(next.indexOf(".") + 1, next.length()));
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_spinner_item, arrayList);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this.quotesSection.setAdapter((SpinnerAdapter) arrayAdapter);
        LoadQuotes();
    }

    private String extractAnyText(View view) {
        if (view == null) {
            return "";
        }
        if (view instanceof TextView) {
            CharSequence text = ((TextView) view).getText();
            return text != null ? text.toString() : "";
        }
        if (!(view instanceof ViewGroup)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            sb.append(extractAnyText(viewGroup.getChildAt(i)));
            sb.append(" ");
        }
        return sb.toString();
    }

    private void initQuoteSearch() {
        EditText editText = (EditText) findViewById(R.id.quotes_browser1);
        if (editText != null) {
            editText.addTextChangedListener(new SearchWatcher());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendQuoteToMain(String str) {
        Intent intent = new Intent();
        intent.putExtra(QUOTE_EXPORTED, str);
        setResult(12, intent);
        finish();
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void filterQuotes(String str) {
        if (this.quotesHolder == null) {
            return;
        }
        if (str == null) {
            str = "";
        }
        String lowerCase = str.trim().toLowerCase();
        if (lowerCase.isEmpty()) {
            this.currJob = "";
            LoadQuotes();
            return;
        }
        if (lowerCase.length() < 2) {
            return;
        }
        this.currJob = "__search_all__";
        this.quotesHolder.removeAllViews();
        ArrayList<String> arrayList = this.sectionSpinnerArray;
        if (arrayList == null) {
            return;
        }
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                InputStream open = getAssets().open("quotes/" + this.selectedLangDir + "/" + it.next());
                int available = open.available();
                byte[] bArr = new byte[available];
                open.read(bArr, 0, available);
                open.close();
                JSONArray optJSONArray = new JSONObject(new String(bArr, "UTF-8")).optJSONArray("quotes");
                if (optJSONArray != null) {
                    int length = optJSONArray.length();
                    for (int i = 0; i < length; i++) {
                        String string = optJSONArray.getString(i);
                        if (string != null && string.trim().toLowerCase().contains(lowerCase)) {
                            AnonymousClass5.AnonymousClass1 anonymousClass1 = new AnonymousClass5.AnonymousClass1(string);
                            this.quotesHolder.addView(new quoteCard(getApplicationContext(), string, new AnonymousClass5.AnonymousClass1.ViewOnClickListenerC00331(), new AnonymousClass5.AnonymousClass1.AnonymousClass2()), this.lpa);
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        supportRequestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        super.onCreate(bundle);
        setContentView(R.layout.activity_quotes_browser);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.lpa = layoutParams;
        layoutParams.bottomMargin = dpToPixels(10);
        this.lpa.topMargin = dpToPixels(10);
        this.lpa.leftMargin = dpToPixels(10);
        this.lpa.rightMargin = dpToPixels(10);
        this.quotesHolder = (LinearLayout) findViewById(R.id.quotesHolder);
        this.quotesHolderScroll = (ScrollView) findViewById(R.id.quotesScroll);
        this.quotesLang = (Spinner) findViewById(R.id.quote_lang);
        this.quotesSection = (Spinner) findViewById(R.id.quote_section);
        LoadLangs();
        this.quotesLang.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser.2
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                quotes_browser quotes_browserVar = quotes_browser.this;
                quotes_browserVar.selectedLangDir = quotes_browserVar.spinnerArray.get(i);
                quotes_browser quotes_browserVar2 = quotes_browser.this;
                quotes_browserVar2.selectedLangId = i;
                quotes_browserVar2.LoadSections();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        this.quotesSection.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.quotes_browser.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                quotes_browser.this.LoadQuotes();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        initQuoteSearch();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return false;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        sbotGuard.check(this);
        tg.TG(this);
        super.onResume();
    }
}
