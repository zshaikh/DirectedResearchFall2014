package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import com.tapjoy.*;
import android.util.*;

public class ShowOffers implements FREFunction
{
    private FREContext mContext;
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        this.mContext = freContext;
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().showOffers(new TapjoyOffersNotifier() {
                    @Override
                    public void getOffersResponse() {
                        Log.i("TapjoyConnect", " getOffersResponse ");
                        ShowOffers.this.mContext.dispatchStatusEventAsync("TAPJOY_SHOW_OFFERS_EVENT", "1");
                    }
                    
                    @Override
                    public void getOffersResponseFailed(final String s) {
                        Log.i("TapjoyConnect", " getOffersResponseFailed ");
                        ShowOffers.this.mContext.dispatchStatusEventAsync("TAPJOY_SHOW_OFFERS_EVENT", "0");
                    }
                });
            }
            return null;
        }
        catch (Exception ex) {
            this.mContext.dispatchStatusEventAsync("ERROR_EVENT", "error : " + ex.toString());
            return null;
        }
    }
}
