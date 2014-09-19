package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import android.app.*;
import android.content.*;
import android.util.*;

public class AndroidShowDialogFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        this.debugLog("1.FREObject.call");
        final AndroidExtensionContext androidExtensionContext = (AndroidExtensionContext)freContext;
        this.debugLog("2.FREObject.call");
        AndroidExtensionContext.setFREContext(freContext);
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)androidExtensionContext.activity);
        this.debugLog("3.FREObject.call");
        try {
            final String asString = array[0].getAsString();
            this.debugLog("4.FREObject.call");
            alertDialog$Builder.setMessage((CharSequence)asString).setNeutralButton((CharSequence)"OK", (DialogInterface$OnClickListener)null).show();
            this.debugLog("5.FREObject.call");
            return null;
        }
        catch (Exception ex) {
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
    
    public void debugLog(final String s) {
        Log.d("AndroidShowDialogFunction", s);
    }
}
