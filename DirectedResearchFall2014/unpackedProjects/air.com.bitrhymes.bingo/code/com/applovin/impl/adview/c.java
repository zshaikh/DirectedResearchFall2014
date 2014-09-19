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

class c implements Runnable
{
    final /* synthetic */ int a;
    final /* synthetic */ AdViewControllerImpl b;
    
    c(final AdViewControllerImpl b, final int a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        try {
            if (this.b.t != null) {
                this.b.t.failedToReceiveAd(this.a);
            }
        }
        catch (Throwable t) {
            this.b.d.userError("AppLovinAdView", "Exception while running app load  callback", t);
        }
    }
}
