package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;

/* loaded from: classes.dex */
public class textEditorDialog extends AlertDialog {
    EditText editArea;
    public Context mContext;
    private final onTextChangedListener onTextChangedL;
    boolean up;

    /* loaded from: classes.dex */
    public interface onTextChangedListener {
        void onTextDone(String str);
    }

    public textEditorDialog(Context context, String str, onTextChangedListener ontextchangedlistener) {
        super(context);
        this.mContext = context;
        this.up = false;
        this.onTextChangedL = ontextchangedlistener;
        View inflate = getLayoutInflater().inflate(R.layout.text_editor_dialog, (ViewGroup) null);
        setView(inflate);
        EditText editText = (EditText) inflate.findViewById(R.id.text_editor_dialog);
        this.editArea = editText;
        editText.setPadding(15, 15, 15, 15);
        this.editArea.append(str);
        this.editArea.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    textEditorDialog.this.getWindow().setSoftInputMode(5);
                }
            }
        });
        Button button = (Button) inflate.findViewById(R.id.Edit_text_Ok);
        Button button2 = (Button) inflate.findViewById(R.id.Edit_text_Cancel);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!textEditorDialog.this.editArea.getText().toString().isEmpty()) {
                    textEditorDialog.this.onTextChangedL.onTextDone(textEditorDialog.this.editArea.getText().toString());
                }
                textEditorDialog.this.dismiss();
            }
        });
        ImageButton imageButton = (ImageButton) inflate.findViewById(R.id.Edit_text_Clear);
        ImageButton imageButton2 = (ImageButton) inflate.findViewById(R.id.Edit_text_switch);
        imageButton2.setLongClickable(true);
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textEditorDialog texteditordialog;
                boolean z;
                textEditorDialog texteditordialog2 = textEditorDialog.this;
                if (ArabicTextEnhancer.handleSwitchClick(texteditordialog2.mContext, texteditordialog2.editArea)) {
                    return;
                }
                textEditorDialog texteditordialog3 = textEditorDialog.this;
                boolean z2 = texteditordialog3.up;
                int selectionStart = texteditordialog3.editArea.getSelectionStart();
                if (z2) {
                    EditText editText2 = textEditorDialog.this.editArea;
                    editText2.setText(editText2.getText().toString().toLowerCase());
                    textEditorDialog.this.editArea.setSelection(selectionStart);
                    texteditordialog = textEditorDialog.this;
                    z = false;
                } else {
                    EditText editText3 = textEditorDialog.this.editArea;
                    editText3.setText(editText3.getText().toString().toUpperCase());
                    textEditorDialog.this.editArea.setSelection(selectionStart);
                    texteditordialog = textEditorDialog.this;
                    z = true;
                }
                texteditordialog.up = z;
            }
        });
        imageButton2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.6
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                ArabicTextEnhancer.showKashidaDialog(textEditorDialog.this.mContext, textEditorDialog.this.editArea);
                return true;
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textEditorDialog.this.editArea.getText().clear();
                textEditorDialog.this.up = false;
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textEditorDialog.this.dismiss();
            }
        });
        int i = context.getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        if (button != null) {
            button.setBackgroundColor(i);
        }
        if (button2 != null) {
            button2.setBackgroundColor(i);
        }
        if (imageButton != null) {
            imageButton.setBackgroundColor(i);
        }
        if (imageButton2 != null) {
            imageButton2.setBackgroundColor(i);
        }
        this.editArea.setFocusable(true);
        this.editArea.requestFocus();
        try {
            ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.editArea, 2);
        } catch (Exception unused) {
        }
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getContext().getResources().getDisplayMetrics());
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(4);
        getWindow().setFlags(1024, 1024);
    }
}
