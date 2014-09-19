package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import android.app.*;
import android.content.*;
import com.tapjoy.*;
import android.util.*;

public class GetTapJoyPoints implements FREFunction, TapjoyNotifier
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        new AlertDialog$Builder((Context)((AndroidExtensionContext)freContext).activity);
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().getTapPoints(this);
            }
            return null;
        }
        catch (Exception ex) {
            Log.e("ERROR_EVENT", ex.getMessage());
            return null;
        }
    }
    
    @Override
    public void getUpdatePoints(final String s, final int n) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            Log.i(this.getClass().getSimpleName(), "sending the session details back." + n);
            freContext.dispatchStatusEventAsync("TAPJOY_RETURN_POINTS_EVENT", "return_points," + n);
        }
    }
    
    @Override
    public void getUpdatePointsFailed(final String s) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_RETURN_POINTS_EVENT", "0");
        }
    }
}
