package com.adobe.air;

import android.widget.*;
import android.view.*;
import android.app.*;
import android.content.*;

public final class RemoteDebuggerDialog
{
    private final Activity mActivity;
    
    RemoteDebuggerDialog(final Activity mActivity) {
        super();
        this.mActivity = mActivity;
    }
    
    public void createAndShowDialog(final String replacement) {
        final LinearLayout view = new LinearLayout((Context)this.mActivity);
        view.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        view.setOrientation(1);
        final TextView textView = new TextView((Context)this.mActivity);
        String string = "";
        if (replacement.length() > 0) {
            string = AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_ERROR_MESSAGE).replaceFirst("%1", replacement) + "\n";
        }
        textView.setText((CharSequence)(string + AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_ENTERIP_MESSAGE)));
        textView.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        textView.setPadding(20, 20, 20, 20);
        final EditText editText = new EditText((Context)this.mActivity);
        editText.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        editText.setHeight(30);
        editText.setWidth(25);
        view.addView((View)textView);
        view.addView((View)editText);
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)this.mActivity);
        alertDialog$Builder.setView((View)view);
        alertDialog$Builder.setTitle((CharSequence)"Adobe AIR");
        alertDialog$Builder.setPositiveButton((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_OK), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                RemoteDebuggerDialog.this.gotResultFromDialog(true, editText.getText().toString());
            }
        });
        alertDialog$Builder.setNegativeButton((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                RemoteDebuggerDialog.this.gotResultFromDialog(false, null);
            }
        });
        alertDialog$Builder.setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
            public void onCancel(final DialogInterface dialogInterface) {
                RemoteDebuggerDialog.this.gotResultFromDialog(false, null);
            }
        });
        alertDialog$Builder.show();
    }
    
    public void gotResultFromDialog(final boolean b, final String s) {
        AndroidActivityWrapper.GetAndroidActivityWrapper().gotResultFromDialog(b, s);
    }
}
