package com.adobe.air;

import android.widget.*;
import android.view.*;
import android.app.*;
import android.content.*;

public final class ListenErrorDialog
{
    private final int ICON_ERROR;
    private final int PADDING_LENGTH;
    private final Activity mActivity;
    private final String mDebuggerPort;
    
    ListenErrorDialog(final Activity mActivity, final int i) {
        super();
        this.PADDING_LENGTH = 20;
        this.ICON_ERROR = 2130837505;
        this.mActivity = mActivity;
        this.mDebuggerPort = Integer.toString(i);
    }
    
    private void exitGracefully() {
        System.exit(0);
    }
    
    public void createAndShowDialog() {
        final LinearLayout view = new LinearLayout((Context)this.mActivity);
        view.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
        final TextView textView = new TextView((Context)this.mActivity);
        textView.setText((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_LISTEN_ERROR_MESSAGE).replaceFirst("%1", this.mDebuggerPort));
        textView.setLayoutParams(new ViewGroup$LayoutParams(-2, -1));
        textView.setPadding(20, 20, 20, 20);
        view.addView((View)textView);
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)this.mActivity);
        alertDialog$Builder.setIcon(2130837505);
        alertDialog$Builder.setView((View)view);
        alertDialog$Builder.setTitle((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_LISTEN_ERROR_TITLE));
        alertDialog$Builder.setPositiveButton((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                ListenErrorDialog.this.gotResultFromDialog(false);
            }
        });
        alertDialog$Builder.setNegativeButton((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CONTINUE), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                ListenErrorDialog.this.gotResultFromDialog(true);
            }
        });
        alertDialog$Builder.setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
            public void onCancel(final DialogInterface dialogInterface) {
                ListenErrorDialog.this.gotResultFromDialog(false);
            }
        });
        alertDialog$Builder.show();
    }
    
    public void gotResultFromDialog(final boolean b) {
        final AndroidActivityWrapper getAndroidActivityWrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (b) {
            getAndroidActivityWrapper.gotResultFromDialog(false, "");
            return;
        }
        this.exitGracefully();
    }
}
