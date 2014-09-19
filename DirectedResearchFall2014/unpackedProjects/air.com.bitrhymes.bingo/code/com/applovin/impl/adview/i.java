package com.applovin.impl.adview;

import com.applovin.adview.*;
import android.app.*;
import java.util.concurrent.atomic.*;
import android.content.*;
import android.os.*;
import java.lang.reflect.*;
import android.widget.*;
import android.view.*;
import android.webkit.*;
import com.applovin.sdk.*;
import java.util.*;
import android.util.*;

class i implements Runnable
{
    final /* synthetic */ AdViewControllerImpl a;
    private final AppLovinAd b;
    
    public i(final AdViewControllerImpl a, final AppLovinAd b) {
        this.a = a;
        super();
        this.b = b;
    }
    
    @Override
    public void run() {
        final AppLovinAdDisplayListener h = this.a.u;
        if (h == null || this.b == null) {
            return;
        }
        try {
            h.adHidden(this.b);
        }
        catch (Throwable t) {
            this.a.d.userError("AppLovinAdView", "Exception while notifying ad display listener", t);
        }
    }
}
