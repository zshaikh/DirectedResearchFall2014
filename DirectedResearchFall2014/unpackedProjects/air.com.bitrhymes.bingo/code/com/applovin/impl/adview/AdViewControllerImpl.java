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

public class AdViewControllerImpl implements AdViewController
{
    private Activity a;
    private AppLovinSdk b;
    private AppLovinAdService c;
    private AppLovinLogger d;
    private AppLovinAdSize e;
    private x f;
    private m g;
    private v h;
    private AdViewControllerJsInterface i;
    private AppLovinAd j;
    private Runnable k;
    private Runnable l;
    private Runnable m;
    private volatile AppLovinAd n;
    private final AtomicReference o;
    private volatile boolean p;
    private volatile boolean q;
    private volatile boolean r;
    private volatile boolean s;
    private volatile AppLovinAdLoadListener t;
    private volatile AppLovinAdDisplayListener u;
    private volatile AppLovinAdVideoPlaybackListener v;
    private volatile AppLovinAdClickListener w;
    
    public AdViewControllerImpl() {
        super();
        this.n = null;
        this.o = new AtomicReference();
        this.p = false;
        this.q = true;
        this.r = false;
        this.s = false;
    }
    
    private void a(final ViewGroup viewGroup, final AppLovinSdk b, final AppLovinAdSize e, final String s, final Context context) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (b == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (e == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (!(context instanceof Activity)) {
            throw new IllegalArgumentException("Specified context is not an activity");
        }
        this.b = b;
        this.c = b.getAdService();
        this.d = b.getLogger();
        this.e = e;
        this.a = (Activity)context;
        this.j = new AppLovinAd("", e, "", "");
        this.f = new x(this, b);
        this.m = new g(this);
        this.k = new l(this);
        this.l = new j(this);
        this.g = new m(this, b);
        if (a(context)) {
            this.h = this.b();
            this.i = new AdViewControllerJsInterface(b, this.h, this.a, viewGroup, this.n, this.v);
            viewGroup.setBackgroundColor(0);
            viewGroup.addView((View)this.h);
            b((View)this.h, e);
            this.h.setVisibility(8);
            this.a(new k(this));
            this.p = true;
            return;
        }
        this.d.userError("AppLovinAdView", "Web view database is corrupt, AdView not loaded");
    }
    
    private void a(final Runnable runnable) {
        this.a.runOnUiThread(runnable);
    }
    
    private static boolean a(final Context context) {
        try {
            if (Build$VERSION.SDK_INT < 11) {
                final WebViewDatabase instance = WebViewDatabase.getInstance(context);
                final Method declaredMethod = WebViewDatabase.class.getDeclaredMethod("getCacheTotalSize", (Class<?>[])new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(instance, new Object[0]);
                return true;
            }
            return true;
        }
        catch (NoSuchMethodException ex) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", (Throwable)ex);
            return true;
        }
        catch (IllegalArgumentException ex2) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", (Throwable)ex2);
            return true;
        }
        catch (IllegalAccessException ex3) {
            Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", (Throwable)ex3);
            return true;
        }
        catch (InvocationTargetException ex4) {
            Log.e("AppLovinAdView", "getCacheTotalSize() reported exception", (Throwable)ex4);
            return false;
        }
        catch (Throwable t) {
            Log.e("AppLovinAdView", "Unexpected error while checking DB state", t);
            return false;
        }
    }
    
    private v b() {
        final v v = new v(this.e, this.f, this.b, (Context)this.a);
        v.setBackgroundColor(0);
        v.setWillNotCacheDrawing(false);
        return v;
    }
    
    private static void b(final View view, final AppLovinAdSize appLovinAdSize) {
        final DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
        int widthPixels;
        if (appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel())) {
            widthPixels = -1;
        }
        else if (appLovinAdSize.getWidth() == -1) {
            widthPixels = displayMetrics.widthPixels;
        }
        else {
            widthPixels = (int)TypedValue.applyDimension(1, (float)appLovinAdSize.getWidth(), displayMetrics);
        }
        int heightPixels;
        if (appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel())) {
            heightPixels = -1;
        }
        else if (appLovinAdSize.getHeight() == -1) {
            heightPixels = displayMetrics.heightPixels;
        }
        else {
            heightPixels = (int)TypedValue.applyDimension(1, (float)appLovinAdSize.getHeight(), displayMetrics);
        }
        Object layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout$LayoutParams(-2, -2);
        }
        ((ViewGroup$LayoutParams)layoutParams).width = widthPixels;
        ((ViewGroup$LayoutParams)layoutParams).height = heightPixels;
        if (layoutParams instanceof RelativeLayout$LayoutParams) {
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams)layoutParams;
            relativeLayout$LayoutParams.addRule(10);
            relativeLayout$LayoutParams.addRule(9);
        }
        view.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
    }
    
    AdViewControllerJsInterface a() {
        return this.i;
    }
    
    void a(final WebView webView) {
        this.a(this.m);
        this.a(new i(this, this.n));
        this.i.destroyVideoOverlay();
        this.n = null;
    }
    
    void a(final AppLovinAd appLovinAd) {
        this.b.getAdService().trackAdClick(appLovinAd);
        this.a(new h(this, appLovinAd));
    }
    
    @Override
    public void destroy() {
        if (this.c != null) {
            this.c.removeAdUpdateListener(this.g, this.getSize());
        }
        if (this.h != null) {
            this.h.destroy();
        }
        this.r = true;
    }
    
    @Override
    public AppLovinAdSize getSize() {
        return this.e;
    }
    
    public void handleCommandInvocation(final String s, final Map map) {
        this.a(new a(this, s, map));
    }
    
    @Override
    public void initializeAdView(final ViewGroup viewGroup, final Context context, final AppLovinAdSize appLovinAdSize, final AppLovinSdk appLovinSdk, final AttributeSet set) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("No parent view specified");
        }
        if (context == null) {
            Log.e("AppLovinSdk", "Unable to create AppLovinAdView: no context provided. Please use a different constructor for this view.");
        }
        else {
            AppLovinAdSize banner;
            if (appLovinAdSize == null) {
                final AppLovinAdSize a = com.applovin.impl.adview.t.a(set);
                if (a == null) {
                    banner = AppLovinAdSize.BANNER;
                }
                else {
                    banner = a;
                }
            }
            else {
                banner = appLovinAdSize;
            }
            final String a2 = com.applovin.impl.adview.t.a(set, context);
            AppLovinSdk instance;
            if (appLovinSdk == null) {
                instance = AppLovinSdk.getInstance(context);
            }
            else {
                instance = appLovinSdk;
            }
            if (instance != null && !instance.hasCriticalErrors()) {
                this.a(viewGroup, instance, banner, a2, context);
                if (com.applovin.impl.adview.t.b(set)) {
                    this.loadNextAd();
                }
            }
        }
    }
    
    @Override
    public boolean isAutoDestroy() {
        return this.q;
    }
    
    @Override
    public void loadNextAd() {
        if (this.b != null && this.g != null && this.a != null && this.p) {
            this.c.loadNextAd(this.e, this.g);
            return;
        }
        Log.i("AppLovinSdk", "Unable to load next ad: AppLovinAdView is not initialized.");
    }
    
    public void onAdHtmlLoaded(final WebView webView) {
        if (this.n == null) {
            return;
        }
        webView.setVisibility(0);
        try {
            if (this.u != null) {
                this.u.adDisplayed(this.n);
            }
        }
        catch (Throwable t) {
            this.d.userError("AppLovinAdView", "Exception while notifying ad display listener", t);
        }
    }
    
    protected void onAdReceived(final AppLovinAd newValue) {
        if (newValue != null) {
            this.s = true;
            if (!this.r) {
                this.c.addAdUpdateListener(this.g, this.e);
                this.renderAd(newValue);
            }
            else {
                this.o.set(newValue);
                this.d.d("AppLovinAdView", "Ad view has paused when an ad was recieved, ad saved for later");
            }
            this.a(new b(this, newValue));
            return;
        }
        this.d.e("AppLovinAdView", "No provided when to the view controller");
        this.onFailedToReceiveAd(-1);
    }
    
    @Override
    public void onDetachedFromWindow() {
        if (this.p) {
            this.a(new i(this, this.n));
            if (this.q) {
                this.destroy();
            }
        }
    }
    
    protected void onFailedToReceiveAd(final int n) {
        if (!this.r) {
            this.c.addAdUpdateListener(this.g, this.e);
            this.a(this.m);
        }
        this.a(new c(this, n));
    }
    
    @Override
    public void onVisibilityChanged(final int n) {
        if (this.p && this.q) {
            if (n == 8 || n == 4) {
                this.pause();
                return;
            }
            if (n == 0) {
                this.resume();
            }
        }
    }
    
    @Override
    public void pause() {
        if (!this.p) {
            return;
        }
        this.c.removeAdUpdateListener(this.g, this.getSize());
        final AppLovinAd n = this.n;
        this.renderAd(this.j);
        if (n != null) {
            this.o.set(n);
        }
        this.r = true;
    }
    
    @Override
    public void renderAd(final AppLovinAd n) {
        if (n == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        if (!this.p) {
            Log.i("AppLovinSdk", "Unable to render ad: AppLovinAdView is not initialized.");
            return;
        }
        if (n != this.n) {
            this.d.d("AppLovinAdView", "Rendering " + n.getSize() + " ad for \"" + n.getDestinationUrl() + "\"...");
            this.a(new i(this, this.n));
            this.o.set(null);
            this.i.destroyVideoOverlay();
            this.i.setVideoFilename(n.getVideoFilename());
            this.n = n;
            if (n.getSize() == this.e) {
                this.a(this.k);
            }
            else if (n.getSize() == AppLovinAdSize.INTERSTITIAL) {
                this.a(this.m);
                this.a(this.l);
            }
            return;
        }
        this.d.w("AppLovinAdView", "Ad for \"" + n.getDestinationUrl() + "\" is already showing, ignoring");
    }
    
    @Override
    public void resume() {
        if (!this.p) {
            return;
        }
        if (this.s) {
            this.c.addAdUpdateListener(this.g, this.e);
        }
        final AppLovinAd appLovinAd = this.o.getAndSet(null);
        if (appLovinAd != null) {
            this.renderAd(appLovinAd);
        }
        this.r = false;
    }
    
    @Override
    public void setAdClickListener(final AppLovinAdClickListener w) {
        this.w = w;
    }
    
    @Override
    public void setAdDisplayListener(final AppLovinAdDisplayListener u) {
        this.u = u;
    }
    
    @Override
    public void setAdLoadListener(final AppLovinAdLoadListener t) {
        this.t = t;
    }
    
    @Override
    public void setAdVideoPlaybackListener(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.v = appLovinAdVideoPlaybackListener;
        if (this.i != null) {
            this.i.setAdVideoPlaybackListener(appLovinAdVideoPlaybackListener);
        }
    }
    
    @Override
    public void setAutoDestroy(final boolean q) {
        this.q = q;
    }
}
