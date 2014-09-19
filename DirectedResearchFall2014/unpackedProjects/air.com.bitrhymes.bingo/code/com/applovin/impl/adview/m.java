package com.applovin.impl.adview;

import java.lang.ref.*;
import com.applovin.sdk.*;

class m implements AppLovinAdLoadListener, AppLovinAdUpdateListener
{
    private final WeakReference a;
    private final AppLovinAdService b;
    private final AppLovinLogger c;
    
    m(final AdViewControllerImpl referent, final AppLovinSdk appLovinSdk) {
        super();
        if (referent == null) {
            throw new IllegalArgumentException("No view specified");
        }
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = new WeakReference((T)referent);
        this.c = appLovinSdk.getLogger();
        this.b = appLovinSdk.getAdService();
    }
    
    @Override
    public void adReceived(final AppLovinAd appLovinAd) {
        final AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl)this.a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.onAdReceived(appLovinAd);
            return;
        }
        this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was recieved");
    }
    
    @Override
    public void adUpdated(final AppLovinAd appLovinAd) {
        final AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl)this.a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.onAdReceived(appLovinAd);
            return;
        }
        this.b.removeAdUpdateListener(this, appLovinAd.getSize());
        this.c.userError("AppLovinAdView", "Ad view has been garbage collected by the time an ad was updated");
    }
    
    @Override
    public void failedToReceiveAd(final int n) {
        final AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl)this.a.get();
        if (adViewControllerImpl != null) {
            adViewControllerImpl.onFailedToReceiveAd(n);
        }
    }
    
    @Override
    public String toString() {
        return "[AdViewController listener: " + this.hashCode() + "]";
    }
}
