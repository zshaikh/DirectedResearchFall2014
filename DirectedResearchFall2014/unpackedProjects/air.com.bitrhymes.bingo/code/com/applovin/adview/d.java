package com.applovin.adview;

import com.applovin.sdk.*;
import android.app.*;
import com.applovin.impl.adview.*;

final class d implements Runnable
{
    final /* synthetic */ AppLovinSdk a;
    final /* synthetic */ Activity b;
    
    d(final AppLovinSdk a, final Activity b) {
        this.a = a;
        this.b = b;
        super();
    }
    
    @Override
    public void run() {
        new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(this.a, this.b).show();
    }
}
