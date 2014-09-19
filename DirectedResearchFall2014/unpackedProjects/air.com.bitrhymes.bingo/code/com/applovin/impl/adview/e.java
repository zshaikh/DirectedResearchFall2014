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

class e implements AppLovinAdDisplayListener
{
    final /* synthetic */ AdViewControllerImpl a;
    
    e(final AdViewControllerImpl a) {
        this.a = a;
        super();
    }
    
    @Override
    public void adDisplayed(final AppLovinAd appLovinAd) {
    }
    
    @Override
    public void adHidden(final AppLovinAd appLovinAd) {
        if (this.a.u != null) {
            this.a.u.adHidden(appLovinAd);
        }
    }
}
