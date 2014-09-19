package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import com.tapjoy.*;
import android.util.*;

public class ShowOffersWithCurrencyID implements FREFunction, TapjoyViewNotifier
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        try {
            TapjoyLog.enableLogging(true);
            final boolean asBool = array[1].getAsBool();
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().setTapjoyViewNotifier(this);
                TapjoyConnect.getTapjoyConnectInstance().showOffersWithCurrencyID(array[0].getAsString(), asBool);
            }
            return null;
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", ex.toString());
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
    
    @Override
    public void viewDidClose(final int n) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_SHOW_OFFERS_EVENT", "0");
        }
    }
    
    @Override
    public void viewDidOpen(final int n) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_SHOW_OFFERS_EVENT", "1");
        }
    }
    
    @Override
    public void viewWillClose(final int n) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_SHOW_OFFERS_EVENT", "0");
        }
    }
    
    @Override
    public void viewWillOpen(final int n) {
        final FREContext freContext = AndroidExtensionContext.getFreContext();
        if (freContext != null) {
            freContext.dispatchStatusEventAsync("TAPJOY_SHOW_OFFERS_EVENT", "1");
        }
    }
}
