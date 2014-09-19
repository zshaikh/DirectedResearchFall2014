package com.adobe.air;

import android.os.*;
import android.app.*;
import android.content.*;
import android.view.*;

public class AIRUpdateDialog extends Activity
{
    private final String LOG_TAG;
    private final String RUNTIME_PACKAGE_ID;
    private AndroidActivityWrapper actWrapper;
    private AlertDialog alertDialog;
    
    public AIRUpdateDialog() {
        super();
        this.LOG_TAG = "AIRUpdateDialog";
        this.alertDialog = null;
        this.RUNTIME_PACKAGE_ID = "com.adobe.air";
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.actWrapper = AndroidActivityWrapper.CreateAndroidActivityWrapper(this, false);
        (this.alertDialog = new AlertDialog$Builder((Context)this).setTitle((CharSequence)"Adobe® AIR®").setMessage((CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_RUNTIME_UPDATE_MESSAGE)).create()).setButton(-1, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_UPDATE), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                AIRUpdateDialog.this.actWrapper.LaunchMarketPlaceForAIR(AIRUpdateDialog.this.getIntent().getStringExtra("airDownloadURL"));
                AIRUpdateDialog.this.finish();
            }
        });
        this.alertDialog.setButton(-2, (CharSequence)AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                AIRUpdateDialog.this.finish();
            }
        });
        this.alertDialog.setOnKeyListener((DialogInterface$OnKeyListener)new DialogInterface$OnKeyListener() {
            public boolean onKey(final DialogInterface dialogInterface, final int n, final KeyEvent keyEvent) {
                if (n == 4 || n == 84) {
                    dialogInterface.cancel();
                    AIRUpdateDialog.this.finish();
                    return true;
                }
                return false;
            }
        });
        this.alertDialog.setCancelable(true);
        this.alertDialog.show();
    }
    
    public void onPause() {
        if (this.alertDialog != null) {
            this.alertDialog.cancel();
            this.alertDialog = null;
            this.finish();
        }
        super.onPause();
    }
    
    public void onStop() {
        if (this.alertDialog != null) {
            this.alertDialog.cancel();
            this.alertDialog = null;
            this.finish();
        }
        super.onStop();
    }
}
