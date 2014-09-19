package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import android.util.*;
import com.sbstrm.appirater.*;
import android.net.*;
import android.content.*;
import com.bitrhymes.nativeutils.utils.*;

public class AR_rateApp implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[2].getAsString();
            final String asString2 = array[1].getAsString();
            Log.i("Appirater : AR_appLaunched,", " appTitle : " + asString);
            Log.i("Appirater : AR_appLaunched,", " appID : " + asString2);
            if (asString2 != null && asString2.length() > 0 && asString != null && asString.length() > 0) {
                Appirater.APP_ID = asString2;
                Appirater.APP_TITLE = asString;
            }
            final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + asString2));
            intent.addFlags(1074266112);
            freContext.getActivity().startActivity(intent);
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", "AR_rateApp:" + ex.toString() + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
