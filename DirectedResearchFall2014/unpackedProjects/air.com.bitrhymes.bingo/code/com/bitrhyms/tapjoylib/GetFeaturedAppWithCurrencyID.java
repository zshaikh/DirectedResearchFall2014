package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import android.util.*;
import com.tapjoy.*;

public class GetFeaturedAppWithCurrencyID implements FREFunction, TapjoyFeaturedAppNotifier
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().getFeaturedAppWithCurrencyID(array[0].getAsString(), this);
            }
            return null;
        }
        catch (Exception ex) {
            Log.e("ERROR_EVENT", ex.getMessage());
            return null;
        }
    }
    
    @Override
    public void getFeaturedAppResponse(final TapjoyFeaturedAppObject tapjoyFeaturedAppObject) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_FEATURE_APP_EVENT", "1");
        }
    }
    
    @Override
    public void getFeaturedAppResponseFailed(final String s) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_FEATURE_APP_EVENT", "0");
        }
    }
}
