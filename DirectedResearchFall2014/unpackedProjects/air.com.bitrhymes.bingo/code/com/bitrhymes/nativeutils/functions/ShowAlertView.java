package com.bitrhymes.nativeutils.functions;

import android.annotation.*;
import com.adobe.fre.*;
import android.util.*;
import android.app.*;
import android.content.*;
import com.bitrhymes.nativeutils.utils.*;

@SuppressLint({ "ParserError" })
public class ShowAlertView implements FREFunction
{
    private static final String TAG;
    
    static {
        TAG = ShowAlertView.class.getSimpleName();
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            Log.e(ShowAlertView.TAG, "title-" + asString + " and message:" + asString2);
            final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)freContext.getActivity());
            alertDialog$Builder.setTitle((CharSequence)asString);
            alertDialog$Builder.setMessage((CharSequence)asString2);
            alertDialog$Builder.setPositiveButton((CharSequence)"OK", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                public void onClick(final DialogInterface dialogInterface, final int n) {
                }
            });
            alertDialog$Builder.create().show();
            return null;
        }
        catch (Exception ex) {
            Log.i(ShowAlertView.TAG, "error : " + ex.toString());
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
