package com.bitrhymes.nativeutils.localnotify;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.*;
import android.app.*;
import android.content.*;
import android.util.*;

public class AndroidShowDialogFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        this.debugLog("1.FREObject.call");
        final NativeUtilsContext nativeUtilsContext = (NativeUtilsContext)freContext;
        this.debugLog("2.FREObject.call");
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)nativeUtilsContext.activity);
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
        Log.d("Android_Slots", s);
    }
}
