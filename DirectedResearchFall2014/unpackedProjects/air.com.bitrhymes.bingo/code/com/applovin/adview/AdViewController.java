package com.applovin.adview;

import android.view.*;
import android.content.*;
import android.util.*;
import com.applovin.sdk.*;

public interface AdViewController
{
    void destroy();
    
    AppLovinAdSize getSize();
    
    void initializeAdView(ViewGroup p0, Context p1, AppLovinAdSize p2, AppLovinSdk p3, AttributeSet p4);
    
    boolean isAutoDestroy();
    
    void loadNextAd();
    
    void onDetachedFromWindow();
    
    void onVisibilityChanged(int p0);
    
    void pause();
    
    void renderAd(AppLovinAd p0);
    
    void resume();
    
    void setAdClickListener(AppLovinAdClickListener p0);
    
    void setAdDisplayListener(AppLovinAdDisplayListener p0);
    
    void setAdLoadListener(AppLovinAdLoadListener p0);
    
    void setAdVideoPlaybackListener(AppLovinAdVideoPlaybackListener p0);
    
    void setAutoDestroy(boolean p0);
}
