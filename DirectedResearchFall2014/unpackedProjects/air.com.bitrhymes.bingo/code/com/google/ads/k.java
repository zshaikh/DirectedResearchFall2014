package com.google.ads;

import com.google.ads.mediation.*;
import com.google.ads.util.*;

class k implements MediationInterstitialListener
{
    private final h a;
    
    k(final h a) {
        super();
        this.a = a;
    }
    
    @Override
    public void onDismissScreen(final MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        synchronized (this.a) {
            this.a.j().b(this.a);
        }
    }
    
    @Override
    public void onFailedToReceiveAd(final MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, final AdRequest.ErrorCode obj) {
        while (true) {
            while (true) {
                Label_0109: {
                    synchronized (this.a) {
                        com.google.ads.util.a.a(mediationInterstitialAdapter, this.a.i());
                        b.a("Mediation adapter " + mediationInterstitialAdapter.getClass().getName() + " failed to receive ad with error code: " + obj);
                        if (this.a.c()) {
                            b.b("Got an onFailedToReceiveAd() callback after loadAdTask is done from an interstitial adapter.  Ignoring callback.");
                        }
                        else {
                            final h a = this.a;
                            if (obj != AdRequest.ErrorCode.NO_FILL) {
                                break Label_0109;
                            }
                            final g.a a2 = g.a.b;
                            a.a(false, a2);
                        }
                        return;
                    }
                }
                final g.a a2 = g.a.c;
                continue;
            }
        }
    }
    
    @Override
    public void onLeaveApplication(final MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        synchronized (this.a) {
            this.a.j().c(this.a);
        }
    }
    
    @Override
    public void onPresentScreen(final MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        synchronized (this.a) {
            this.a.j().a(this.a);
        }
    }
    
    @Override
    public void onReceivedAd(final MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        synchronized (this.a) {
            com.google.ads.util.a.a(mediationInterstitialAdapter, this.a.i());
            if (this.a.c()) {
                b.e("Got an onReceivedAd() callback after loadAdTask is done from an interstitial adapter. Ignoring callback.");
            }
            else {
                this.a.a(true, g.a.a);
            }
        }
    }
}
