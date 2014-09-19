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

class j implements Runnable
{
    final /* synthetic */ AdViewControllerImpl a;
    
    j(final AdViewControllerImpl a) {
        this.a = a;
        super();
    }
    
    @Override
    public void run() {
        if (this.a.n == null) {
            return;
        }
        try {
            final AppLovinInterstitialAdDialog interstitialAdDialog = new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(this.a.b, this.a.a);
            interstitialAdDialog.setAdDisplayListener(new e(this.a));
            interstitialAdDialog.setAdVideoPlaybackListener(new f(this.a));
            interstitialAdDialog.setAdClickListener(new d(this.a));
            interstitialAdDialog.showAndRender(this.a.n);
        }
        catch (Throwable t) {}
    }
}
