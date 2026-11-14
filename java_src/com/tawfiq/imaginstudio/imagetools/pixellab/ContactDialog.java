package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;

/* loaded from: classes.dex */
public class ContactDialog extends AlertDialog {
    private EditText editArea;

    /* renamed from: info, reason: collision with root package name */
    String f43info;
    Spinner type;
    View v;

    public ContactDialog(Context context, String str) {
        super(context);
        this.f43info = str;
        View inflate = getLayoutInflater().inflate(R.layout.contact_dialog, (ViewGroup) null);
        setView(inflate);
        inflate.findViewById(R.id.contact_dialog_ok).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ContactDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ContactDialog.this.getMessage().length() <= 15) {
                    Toast.makeText(ContactDialog.this.getContext(), "Message below required length !", 0).show();
                } else {
                    ContactDialog.this.sendMessage();
                    ContactDialog.this.dismiss();
                }
            }
        });
        inflate.findViewById(R.id.contact_dialog_cancel).setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ContactDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactDialog.this.dismiss();
            }
        });
        this.type = (Spinner) inflate.findViewById(R.id.contact_dialog_type);
        this.type.setAdapter((SpinnerAdapter) new ArrayAdapter(inflate.getContext(), android.R.layout.simple_spinner_item, new String[]{inflate.getContext().getString(R.string.feedback_bug), inflate.getContext().getString(R.string.feedback_idea), inflate.getContext().getString(R.string.feedback_question)}));
        EditText editText = (EditText) inflate.findViewById(R.id.contact_dialog_content);
        this.editArea = editText;
        editText.setPadding(15, 15, 15, 15);
        this.editArea.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.ContactDialog.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    ContactDialog.this.getWindow().setSoftInputMode(5);
                }
            }
        });
        this.editArea.setFocusable(true);
        this.editArea.requestFocus();
        try {
            ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.editArea, 2);
        } catch (Exception unused) {
        }
    }

    private void composeEmail(String[] strArr, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("mailto:"));
        intent.putExtra("android.intent.extra.EMAIL", strArr);
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", "Feedback (" + getType() + ") : \n-" + getMessage() + "\n\n\n\nDevice info (don't remove) : " + this.f43info);
        if (intent.resolveActivity(getContext().getPackageManager()) != null) {
            getContext().startActivity(intent);
        } else {
            Toast.makeText(getContext(), getContext().getString(R.string.no_email_app), 0).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMessage() {
        return this.editArea.getText() != null ? this.editArea.getText().toString() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendMessage() {
        try {
            composeEmail(new String[]{"imaginstudio.apps@gmail.com"}, "Feedback For PixelLab 1.9");
        } catch (Throwable unused) {
            Toast.makeText(getContext(), getContext().getString(R.string.email_load_error), 0).show();
        }
    }

    public String getType() {
        int selectedItemPosition = this.type.getSelectedItemPosition();
        return selectedItemPosition != 0 ? selectedItemPosition != 1 ? selectedItemPosition != 2 ? "message" : "question" : "idea" : "bug";
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(4);
        getWindow().setFlags(1024, 1024);
    }
}
