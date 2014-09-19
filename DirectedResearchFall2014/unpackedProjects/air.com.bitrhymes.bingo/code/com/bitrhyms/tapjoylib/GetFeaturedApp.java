package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import com.tapjoy.*;
import android.util.*;

public class GetFeaturedApp implements FREFunction, TapjoyFullScreenAdNotifier
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().getFullScreenAd(this);
            }
            return null;
        }
        catch (Exception ex) {
            Log.e("ERROR_EVENT", ex.getMessage());
            return null;
        }
    }
    
    @Override
    public void getFullScreenAdResponse() {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_FEATURE_APP_EVENT", "1");
        }
    }
    
    @Override
    public void getFullScreenAdResponseFailed(final int n) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_FEATURE_APP_EVENT", "0");
        }
    }
}
