package com.applovin.impl.adview;

import android.widget.*;

public interface AppLovinVideoOverlay
{
    int getDuration();
    
    int getPercentViewed();
    
    AppLovinVideoPlaybackState getPlaybackState();
    
    int getPlaybackTime();
    
    RelativeLayout getVideoLayout();
    
    void requestPause();
    
    void requestPlay();
    
    void setPercentViewed(int p0);
    
    void setPlaybackTime(int p0);
    
    void stopUnderlyingMediaPlayer();
}
