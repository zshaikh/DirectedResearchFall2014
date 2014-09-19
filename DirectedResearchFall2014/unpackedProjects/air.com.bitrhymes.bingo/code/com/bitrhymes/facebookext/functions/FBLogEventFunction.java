package com.bitrhymes.facebookext.functions;

import com.facebook.*;
import android.content.*;
import com.adobe.fre.*;

public class FBLogEventFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        String asString = null;
        double double1 = 0.0;
        while (true) {
            try {
                asString = array[1].getAsString();
                final String asString2 = array[2].getAsString();
                if (asString2 != null && asString2.length() > 0) {
                    double1 = Double.parseDouble(asString2);
                }
                AppEventsLogger.newLogger((Context)freContext.getActivity()).logEvent(asString, double1);
                return null;
            }
            catch (IllegalStateException ex) {
                ex.printStackTrace();
                continue;
            }
            catch (FRETypeMismatchException ex2) {
                ex2.printStackTrace();
                continue;
            }
            catch (FREInvalidObjectException ex3) {
                ex3.printStackTrace();
                continue;
            }
            catch (FREWrongThreadException ex4) {
                ex4.printStackTrace();
                continue;
            }
            break;
        }
    }
}
