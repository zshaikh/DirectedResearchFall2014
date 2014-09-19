package com.fusepowered.m1.android;

import android.util.*;

public interface RequestListener
{
    void MMAdOverlayClosed(MMAd p0);
    
    void MMAdOverlayLaunched(MMAd p0);
    
    void MMAdRequestIsCaching(MMAd p0);
    
    void onSingleTap(MMAd p0);
    
    void requestCompleted(MMAd p0);
    
    void requestFailed(MMAd p0, MMException p1);
    
    public static class RequestListenerImpl implements RequestListener
    {
        @Override
        public void MMAdOverlayClosed(MMAd mmAd) {
            Log.i("MillennialMediaSDK", "Millennial Media Ad View overlay closed");
        }
        
        @Override
        public void MMAdOverlayLaunched(MMAd mmAd) {
            Log.i("MillennialMediaSDK", "Millennial Media Ad View overlay launched");
        }
        
        @Override
        public void MMAdRequestIsCaching(MMAd mmAd) {
            Log.i("MillennialMediaSDK", "Millennial Media Ad View caching request");
        }
        
        @Override
        public void onSingleTap(MMAd mmAd) {
            Log.i("MillennialMediaSDK", "Ad tapped");
        }
        
        @Override
        public void requestCompleted(MMAd mmAd) {
            Log.i("MillennialMediaSDK", "Ad request succeeded");
        }
        
        @Override
        public void requestFailed(MMAd mmAd, MMException ex) {
            Log.i("MillennialMediaSDK", String.format("Ad request failed with error: %d %s.", ex.getCode(), ex.getMessage()));
        }
    }
}
