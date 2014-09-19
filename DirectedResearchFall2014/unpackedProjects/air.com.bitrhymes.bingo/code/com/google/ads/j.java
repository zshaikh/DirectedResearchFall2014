package com.google.ads;

import com.google.ads.mediation.*;
import com.google.ads.util.*;

class j implements MediationBannerListener
{
    private final h a;
    private boolean b;
    
    public j(final h a) {
        super();
        this.a = a;
    }
    
    @Override
    public void onClick(final MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        synchronized (this.a) {
            com.google.ads.util.a.a(this.a.c());
            this.a.j().a(this.a, this.b);
        }
    }
    
    @Override
    public void onDismissScreen(final MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        synchronized (this.a) {
            this.a.j().b(this.a);
        }
    }
    
    @Override
    public void onFailedToReceiveAd(final MediationBannerAdapter<?, ?> mediationBannerAdapter, final AdRequest.ErrorCode obj) {
        synchronized (this.a) {
            com.google.ads.util.a.a(mediationBannerAdapter, this.a.i());
            com.google.ads.util.b.a("Mediation adapter " + mediationBannerAdapter.getClass().getName() + " failed to receive ad with error code: " + obj);
            if (!this.a.c()) {
                final h a = this.a;
                g.a a2;
                if (obj == AdRequest.ErrorCode.NO_FILL) {
                    a2 = g.a.b;
                }
                else {
                    a2 = g.a.c;
                }
                a.a(false, a2);
            }
        }
    }
    
    @Override
    public void onLeaveApplication(final MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        synchronized (this.a) {
            this.a.j().c(this.a);
        }
    }
    
    @Override
    public void onPresentScreen(final MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        synchronized (this.a) {
            this.a.j().a(this.a);
        }
    }
    
    @Override
    public void onReceivedAd(final MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        synchronized (this.a) {
            com.google.ads.util.a.a(mediationBannerAdapter, this.a.i());
            try {
                this.a.a(mediationBannerAdapter.getBannerView());
                if (!this.a.c()) {
                    this.b = false;
                    this.a.a(true, g.a.a);
                    return;
                }
            }
            catch (Throwable t) {
                com.google.ads.util.b.b("Error while getting banner View from adapter (" + this.a.h() + "): ", t);
                if (!this.a.c()) {
                    this.a.a(false, g.a.f);
                }
                return;
            }
        }
        this.b = true;
        this.a.j().a(this.a, this.a.f());
    }
    // monitorexit(h)
}
