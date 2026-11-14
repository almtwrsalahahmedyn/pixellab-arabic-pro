package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final AlertController mAlert;

    /* loaded from: classes.dex */
    public final class Builder {
        public final AlertController.AlertParams P;
        public final int mTheme;

        public Builder(Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public Builder(Context context, int i) {
            this.P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
            this.mTheme = i;
        }

        public final AlertDialog create() {
            final AlertController.AlertParams alertParams = this.P;
            AlertDialog alertDialog = new AlertDialog(alertParams.mContext, this.mTheme);
            final AlertController alertController = alertDialog.mAlert;
            View view = alertParams.mCustomTitleView;
            if (view != null) {
                alertController.mCustomTitleView = view;
            } else {
                CharSequence charSequence = alertParams.mTitle;
                if (charSequence != null) {
                    alertController.mTitle = charSequence;
                    TextView textView = alertController.mTitleView;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = alertParams.mIcon;
                if (drawable != null) {
                    alertController.mIcon = drawable;
                    alertController.mIconId = 0;
                    ImageView imageView = alertController.mIconView;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.mIconView.setImageDrawable(drawable);
                    }
                }
            }
            CharSequence charSequence2 = alertParams.mMessage;
            if (charSequence2 != null) {
                alertController.mMessage = charSequence2;
                TextView textView2 = alertController.mMessageView;
                if (textView2 != null) {
                    textView2.setText(charSequence2);
                }
            }
            CharSequence charSequence3 = alertParams.mPositiveButtonText;
            if (charSequence3 != null) {
                alertController.setButton(-1, charSequence3, alertParams.mPositiveButtonListener, null, null);
            }
            CharSequence charSequence4 = alertParams.mNegativeButtonText;
            if (charSequence4 != null) {
                alertController.setButton(-2, charSequence4, alertParams.mNegativeButtonListener, null, null);
            }
            if (alertParams.mAdapter != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.mInflater.inflate(alertController.mListLayout, (ViewGroup) null);
                int i = alertParams.mIsSingleChoice ? alertController.mSingleChoiceItemLayout : alertController.mListItemLayout;
                ListAdapter listAdapter = alertParams.mAdapter;
                if (listAdapter == null) {
                    listAdapter = new ArrayAdapter(alertParams.mContext, i, R.id.text1, (Object[]) null);
                }
                alertController.mAdapter = listAdapter;
                alertController.mCheckedItem = alertParams.mCheckedItem;
                if (alertParams.mOnClickListener != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                            AlertParams alertParams2 = AlertParams.this;
                            DialogInterface.OnClickListener onClickListener = alertParams2.mOnClickListener;
                            AlertController alertController2 = alertController;
                            onClickListener.onClick(alertController2.mDialog, i2);
                            if (alertParams2.mIsSingleChoice) {
                                return;
                            }
                            alertController2.mDialog.dismiss();
                        }
                    });
                }
                if (alertParams.mIsSingleChoice) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.mListView = recycleListView;
            }
            alertDialog.setCancelable(alertParams.mCancelable);
            if (alertParams.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(null);
            alertDialog.setOnDismissListener(null);
            DialogInterface.OnKeyListener onKeyListener = alertParams.mOnKeyListener;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }
    }

    public AlertDialog(Context context, int i) {
        super(context, resolveDialogTheme(context, i));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    public static int resolveDialogTheme(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.tawfiq.imaginstudio.imagetools.pixellab.R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int i) {
        AlertController alertController = this.mAlert;
        if (i == -3) {
            return alertController.mButtonNeutral;
        }
        if (i == -2) {
            return alertController.mButtonNegative;
        }
        if (i == -1) {
            return alertController.mButtonPositive;
        }
        alertController.getClass();
        return null;
    }

    public ListView getListView() {
        return this.mAlert.mListView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0356, code lost:
    
        if (r2 != null) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02f6, code lost:
    
        r7 = 0;
        r4.setVisibility(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02f4, code lost:
    
        if (r4 != null) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02ea, code lost:
    
        if (r4 != null) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x02fb, code lost:
    
        r7 = 0;
     */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r18) {
        /*
            Method dump skipped, instructions count: 962
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertDialog.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.mAlert.mScrollView;
        if (nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.mAlert.mScrollView;
        if (nestedScrollView != null && nestedScrollView.executeKeyEvent(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener, null, null);
    }

    public void setButton(int i, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener, null, drawable);
    }

    public void setButton(int i, CharSequence charSequence, Message message) {
        this.mAlert.setButton(i, charSequence, null, message, null);
    }

    public void setButtonPanelLayoutHint(int i) {
        this.mAlert.mButtonPanelLayoutHint = i;
    }

    public void setCustomTitle(View view) {
        this.mAlert.mCustomTitleView = view;
    }

    public void setIcon(int i) {
        this.mAlert.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        AlertController alertController = this.mAlert;
        alertController.mIcon = drawable;
        alertController.mIconId = 0;
        ImageView imageView = alertController.mIconView;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                alertController.mIconView.setImageDrawable(drawable);
            }
        }
    }

    public void setIconAttribute(int i) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i, typedValue, true);
        this.mAlert.setIcon(typedValue.resourceId);
    }

    public void setMessage(CharSequence charSequence) {
        AlertController alertController = this.mAlert;
        alertController.mMessage = charSequence;
        TextView textView = alertController.mMessageView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.mAlert;
        alertController.mTitle = charSequence;
        TextView textView = alertController.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void setView(View view) {
        AlertController alertController = this.mAlert;
        alertController.mView = view;
        alertController.mViewLayoutResId = 0;
        alertController.mViewSpacingSpecified = false;
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        AlertController alertController = this.mAlert;
        alertController.mView = view;
        alertController.mViewLayoutResId = 0;
        alertController.mViewSpacingSpecified = true;
        alertController.mViewSpacingLeft = i;
        alertController.mViewSpacingTop = i2;
        alertController.mViewSpacingRight = i3;
        alertController.mViewSpacingBottom = i4;
    }
}
