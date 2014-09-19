package com.bitrhymes.chartboost;

import com.adobe.fre.*;
import android.util.*;
import com.chartboost.sdk.*;

public class HasCachedInterstitial implements FREFunction
{
    private static final String TAG = "Chartboost";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
        Label_0046_Outer:
            while (true) {
                while (true) {
                    boolean b = false;
                    Label_0156: {
                        try {
                            Log.i("Chartboost", " ** Chartboost_hasCachedInterstitial**");
                            final String asString = array[0].getAsString();
                            final Chartboost sharedChartboost = Chartboost.sharedChartboost();
                            if (asString != null && asString.length() > 0) {
                                b = sharedChartboost.hasCachedInterstitial(asString);
                                break Label_0156;
                            }
                            b = sharedChartboost.hasCachedInterstitial();
                            break Label_0156;
                            final String s = "0";
                            return FREObject.newObject(s);
                        }
                        catch (Exception ex) {
                            Log.i("Chartboost", "Error : " + ex.toString());
                            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
                            return null;
                        }
                    }
                    if (b) {
                        final String s = "1";
                        continue;
                    }
                    break;
                }
                continue Label_0046_Outer;
            }
        }
    }
}
