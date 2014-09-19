package com.applovin.adview;

import com.applovin.sdk.*;

public interface AppLovinInterstitialAdDialog
{
    void dismiss();
    
    boolean isShowing();
    
    void setAdClickListener(AppLovinAdClickListener p0);
    
    void setAdDisplayListener(AppLovinAdDisplayListener p0);
    
    void setAdLoadListener(AppLovinAdLoadListener p0);
    
    void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener p0);
    
    void show();
    
    void showAndRender(AppLovinAd p0);
}
