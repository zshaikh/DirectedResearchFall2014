package com.bitrhymes.nativeutils.functions;

import android.util.*;
import com.sbstrm.appirater.*;
import android.content.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class AR_appEnteredForeground implements FREFunction
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
                Appirater.appLaunched((Context)freContext.getActivity());
            }
            return null;
        }
        catch (IllegalStateException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            ex4.printStackTrace();
            return null;
        }
    }
}
