package com.fuse.ane.callback;

import android.app.*;
import com.fusepowered.util.*;
import com.fuse.ane.AirFuseAPI.*;
import android.util.*;

public class AdCallback extends FuseAdCallback
{
    private Activity activity;
    
    public AdCallback(final Activity activity) {
        super();
        this.activity = activity;
    }
    
    @Override
    public void adAvailabilityResponse(final int n, final int i) {
        final String value = String.valueOf(i);
        if (FuseAdErrors.getFuseAdErrorByCode(i) != FuseAdErrors.FUSE_AD_NO_ERROR) {
            AirFuseAPIExtension.dispatch("AdAvailabilityRequestError", value);
            return;
        }
        if (n != 0) {
            AirFuseAPIExtension.dispatch("AdAvailabilityRequestAdAvialable", value);
            return;
        }
        AirFuseAPIExtension.dispatch("AdAvailabilityRequestAdNotAvialable", value);
    }
    
    @Override
    public void adClicked() {
        AirFuseAPIExtension.log("Ad Clicked");
    }
    
    @Override
    public void adDisplayed() {
        AirFuseAPIExtension.log("Ad Displayed");
    }
    
    @Override
    public void adWillClose() {
        Log.d("FUSE API CALLBACK", " ******************* DISPATCHING AD WILL CLOSE *******************");
        AirFuseAPIExtension.dispatch("DidCloseInterstitial", "2");
    }
    
    @Override
    public void callback() {
        AirFuseAPIExtension.log("Ad callback");
    }
}
