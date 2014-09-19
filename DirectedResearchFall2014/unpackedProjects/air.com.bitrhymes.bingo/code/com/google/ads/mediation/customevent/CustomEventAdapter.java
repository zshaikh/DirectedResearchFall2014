package com.google.ads.mediation.customevent;

import android.view.*;
import com.google.ads.util.*;
import android.app.*;
import com.google.ads.*;
import com.google.ads.mediation.*;

public class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters>
{
    private String a;
    private CustomEventBanner b;
    private a c;
    private CustomEventInterstitial d;
    
    public CustomEventAdapter() {
        super();
        this.b = null;
        this.c = null;
        this.d = null;
    }
    
    private <T> T a(final String str, final Class<T> clazz, final String s) {
        try {
            return g.a(str, clazz);
        }
        catch (ClassNotFoundException ex) {
            this.a("Make sure you created a visible class named: " + str + ". ", ex);
        }
        catch (ClassCastException ex2) {
            this.a("Make sure your custom event implements the " + clazz.getName() + " interface.", ex2);
            goto Label_0042;
        }
        catch (IllegalAccessException ex3) {
            this.a("Make sure the default constructor for class " + str + " is visible. ", ex3);
            goto Label_0042;
        }
        catch (InstantiationException ex4) {
            this.a("Make sure the name " + str + " does not denote an abstract class or an interface.", ex4);
            goto Label_0042;
        }
        catch (Throwable t) {
            this.a("", t);
            goto Label_0042;
        }
    }
    
    private void a(final String str, final Throwable t) {
        com.google.ads.util.b.b("Error during processing of custom event with label: '" + this.a + "'. Skipping custom event. " + str, t);
    }
    
    @Override
    public void destroy() {
        if (this.b != null) {
            this.b.destroy();
        }
        if (this.d != null) {
            this.d.destroy();
        }
    }
    
    @Override
    public Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }
    
    @Override
    public View getBannerView() {
        com.google.ads.util.a.b(this.c);
        return this.c.a();
    }
    
    @Override
    public Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }
    
    @Override
    public void requestBannerAd(final MediationBannerListener mediationBannerListener, final Activity activity, final CustomEventServerParameters customEventServerParameters, final AdSize adSize, final MediationAdRequest mediationAdRequest, final CustomEventExtras customEventExtras) {
        com.google.ads.util.a.a((Object)this.a);
        this.a = customEventServerParameters.label;
        final String className = customEventServerParameters.className;
        final String parameter = customEventServerParameters.parameter;
        this.b = this.a(className, CustomEventBanner.class, this.a);
        if (this.b == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        while (true) {
            com.google.ads.util.a.a(this.c);
            this.c = new a(mediationBannerListener);
            while (true) {
                try {
                    final CustomEventBanner b = this.b;
                    final a c = this.c;
                    final String a = this.a;
                    if (customEventExtras == null) {
                        final Object extra = null;
                        b.requestBannerAd(c, activity, a, parameter, adSize, mediationAdRequest, extra);
                        return;
                    }
                }
                catch (Throwable t) {
                    this.a("", t);
                    mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
                    return;
                }
                final Object extra = customEventExtras.getExtra(this.a);
                continue;
            }
        }
    }
    
    @Override
    public void requestInterstitialAd(final MediationInterstitialListener mediationInterstitialListener, final Activity activity, final CustomEventServerParameters customEventServerParameters, final MediationAdRequest mediationAdRequest, final CustomEventExtras customEventExtras) {
        com.google.ads.util.a.a((Object)this.a);
        this.a = customEventServerParameters.label;
        final String className = customEventServerParameters.className;
        final String parameter = customEventServerParameters.parameter;
        this.d = this.a(className, CustomEventInterstitial.class, this.a);
        if (this.d == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
            return;
        }
        while (true) {
            while (true) {
                try {
                    final CustomEventInterstitial d = this.d;
                    final b b = new b(mediationInterstitialListener);
                    final String a = this.a;
                    if (customEventExtras == null) {
                        final Object extra = null;
                        d.requestInterstitialAd(b, activity, a, parameter, mediationAdRequest, extra);
                        return;
                    }
                }
                catch (Throwable t) {
                    this.a("", t);
                    mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
                    return;
                }
                final Object extra = customEventExtras.getExtra(this.a);
                continue;
            }
        }
    }
    
    @Override
    public void showInterstitial() {
        com.google.ads.util.a.b(this.d);
        try {
            this.d.showInterstitial();
        }
        catch (Throwable t) {
            com.google.ads.util.b.b("Exception when showing custom event labeled '" + this.a + "'.", t);
        }
    }
    
    private class a implements CustomEventBannerListener
    {
        private View b;
        private final MediationBannerListener c;
        
        public a(final MediationBannerListener c) {
            super();
            this.c = c;
        }
        
        private String b() {
            return "Banner custom event labeled '" + CustomEventAdapter.this.a + "'";
        }
        
        public View a() {
            synchronized (this) {
                return this.b;
            }
        }
        
        @Override
        public void onClick() {
            com.google.ads.util.b.a(this.b() + " called onClick().");
            this.c.onClick(CustomEventAdapter.this);
        }
        
        @Override
        public void onDismissScreen() {
            com.google.ads.util.b.a(this.b() + " called onDismissScreen().");
            this.c.onDismissScreen(CustomEventAdapter.this);
        }
        
        @Override
        public void onFailedToReceiveAd() {
            com.google.ads.util.b.a(this.b() + " called onFailedToReceiveAd().");
            this.c.onFailedToReceiveAd(CustomEventAdapter.this, AdRequest.ErrorCode.NO_FILL);
        }
        
        @Override
        public void onLeaveApplication() {
            synchronized (this) {
                com.google.ads.util.b.a(this.b() + " called onLeaveApplication().");
                this.c.onLeaveApplication(CustomEventAdapter.this);
            }
        }
        
        @Override
        public void onPresentScreen() {
            com.google.ads.util.b.a(this.b() + " called onPresentScreen().");
            this.c.onPresentScreen(CustomEventAdapter.this);
        }
        
        @Override
        public void onReceivedAd(final View b) {
            synchronized (this) {
                b.a(this.b() + " called onReceivedAd.");
                this.b = b;
                this.c.onReceivedAd(CustomEventAdapter.this);
            }
        }
    }
    
    private class b implements CustomEventInterstitialListener
    {
        private final MediationInterstitialListener b;
        
        public b(final MediationInterstitialListener b) {
            super();
            this.b = b;
        }
        
        private String a() {
            return "Interstitial custom event labeled '" + CustomEventAdapter.this.a + "'";
        }
        
        @Override
        public void onDismissScreen() {
            com.google.ads.util.b.a(this.a() + " called onDismissScreen().");
            this.b.onDismissScreen(CustomEventAdapter.this);
        }
        
        @Override
        public void onFailedToReceiveAd() {
            com.google.ads.util.b.a(this.a() + " called onFailedToReceiveAd().");
            this.b.onFailedToReceiveAd(CustomEventAdapter.this, AdRequest.ErrorCode.NO_FILL);
        }
        
        @Override
        public void onLeaveApplication() {
            synchronized (this) {
                com.google.ads.util.b.a(this.a() + " called onLeaveApplication().");
                this.b.onLeaveApplication(CustomEventAdapter.this);
            }
        }
        
        @Override
        public void onPresentScreen() {
            com.google.ads.util.b.a(this.a() + " called onPresentScreen().");
            this.b.onPresentScreen(CustomEventAdapter.this);
        }
        
        @Override
        public void onReceivedAd() {
            com.google.ads.util.b.a(this.a() + " called onReceivedAd.");
            this.b.onReceivedAd(CustomEventAdapter.this);
        }
    }
}
