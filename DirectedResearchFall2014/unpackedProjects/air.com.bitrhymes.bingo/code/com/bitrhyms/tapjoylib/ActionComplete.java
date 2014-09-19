package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import com.tapjoy.*;
import android.util.*;

public class ActionComplete implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().actionComplete(array[0].getAsString());
            }
            return null;
        }
        catch (Exception ex) {
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
}
