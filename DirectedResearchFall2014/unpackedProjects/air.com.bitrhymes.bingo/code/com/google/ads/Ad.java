package com.google.ads;

public interface Ad
{
    boolean isReady();
    
    void loadAd(AdRequest p0);
    
    void setAdListener(AdListener p0);
    
    void stopLoading();
}
