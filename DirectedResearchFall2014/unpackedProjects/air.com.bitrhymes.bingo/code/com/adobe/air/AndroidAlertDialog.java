package com.adobe.air;

import android.app.*;
import android.content.*;

public class AndroidAlertDialog
{
    private AlertDialog mAlertDialog;
    private AlertDialog$Builder mDialogBuilder;
    
    public AndroidAlertDialog(final Context context) {
        super();
        this.mDialogBuilder = null;
        this.mAlertDialog = null;
        this.mDialogBuilder = new AlertDialog$Builder(context);
    }
    
    public AlertDialog$Builder GetAlertDialogBuilder() {
        return this.mDialogBuilder;
    }
    
    public void dismiss() {
        if (this.mAlertDialog != null) {
            this.mAlertDialog.dismiss();
        }
    }
    
    public void show() {
        (this.mAlertDialog = this.mDialogBuilder.create()).show();
    }
}
