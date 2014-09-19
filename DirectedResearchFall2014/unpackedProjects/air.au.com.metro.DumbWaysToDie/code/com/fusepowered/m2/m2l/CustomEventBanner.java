package com.fusepowered.m2.m2l;

import android.content.*;
import java.util.*;
import android.view.*;

public abstract class CustomEventBanner
{
    protected abstract void loadBanner(final Context p0, final CustomEventBannerListener p1, final Map<String, Object> p2, final Map<String, String> p3);
    
    protected abstract void onInvalidate();
    
    public interface CustomEventBannerListener
    {
        void onBannerClicked();
        
        void onBannerCollapsed();
        
        void onBannerExpanded();
        
        void onBannerFailed(MoPubErrorCode p0);
        
        void onBannerLoaded(View p0);
        
        void onLeaveApplication();
    }
}
