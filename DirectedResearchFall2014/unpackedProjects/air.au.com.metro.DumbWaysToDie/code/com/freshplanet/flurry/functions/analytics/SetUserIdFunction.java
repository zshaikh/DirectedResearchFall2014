package com.freshplanet.flurry.functions.analytics;

import com.flurry.android.*;
import com.adobe.fre.*;
import android.util.*;

public class SetUserIdFunction implements FREFunction
{
    private static String TAG;
    
    static {
        SetUserIdFunction.TAG = "SetUserIdFunction";
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            try {
                final String asString = array[0].getAsString();
                if (asString != null) {
                    FlurryAgent.setUserId(asString);
                    return null;
                }
            }
            catch (IllegalStateException ex) {
                ex.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (FRETypeMismatchException ex2) {
                ex2.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (FREInvalidObjectException ex3) {
                ex3.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (FREWrongThreadException ex4) {
                ex4.printStackTrace();
                final String asString = null;
                continue;
            }
            catch (Exception ex5) {
                ex5.printStackTrace();
                final String asString = null;
                continue;
            }
            break;
        }
        Log.e(SetUserIdFunction.TAG, "user id is null");
        return null;
    }
}
