package com.fusepowered.m2.m2l;

import android.content.*;
import java.util.*;

public abstract class CustomEventInterstitial
{
    protected abstract void loadInterstitial(final Context p0, final CustomEventInterstitialListener p1, final Map<String, Object> p2, final Map<String, String> p3);
    
    protected abstract void onInvalidate();
    
    protected abstract void showInterstitial();
    
    public interface CustomEventInterstitialListener
    {
        void onInterstitialClicked();
        
        void onInterstitialDismissed();
        
        void onInterstitialFailed(MoPubErrorCode p0);
        
        void onInterstitialLoaded();
        
        void onInterstitialShown();
        
        void onLeaveApplication();
    }
}
