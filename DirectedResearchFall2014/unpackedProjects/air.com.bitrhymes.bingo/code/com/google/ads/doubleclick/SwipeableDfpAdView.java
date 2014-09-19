package com.google.ads.doubleclick;

import android.app.*;
import android.content.*;
import android.util.*;
import com.google.ads.internal.*;
import com.google.ads.*;

public class SwipeableDfpAdView extends DfpAdView
{
    public SwipeableDfpAdView(final Activity activity, final AdSize adSize, final String s) {
        super(activity, adSize, s);
    }
    
    public SwipeableDfpAdView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public SwipeableDfpAdView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    @Override
    public void resize(final AdSize adSize) {
        super.resize(adSize);
        if (this.a.i().e.a().b()) {
            this.a.a(-1, -1, adSize.getWidth(), adSize.getHeight());
        }
    }
    
    public void setSwipeableEventListener(final SwipeableAdListener swipeableEventListener) {
        super.setSwipeableEventListener(swipeableEventListener);
    }
}
