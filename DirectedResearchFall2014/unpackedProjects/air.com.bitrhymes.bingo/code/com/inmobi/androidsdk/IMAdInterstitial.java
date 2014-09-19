package com.inmobi.androidsdk;

import android.app.*;
import com.inmobi.androidsdk.impl.*;
import com.inmobi.androidsdk.impl.net.*;
import com.inmobi.commons.internal.*;
import android.content.*;
import com.inmobi.androidsdk.ai.controller.util.*;
import com.inmobi.androidsdk.ai.container.*;
import android.util.*;
import android.view.*;
import android.os.*;
import java.lang.ref.*;

public class IMAdInterstitial
{
    private State a;
    private IMAdRequest b;
    private Activity c;
    private String d;
    private long e;
    private IMAdInterstitialListener f;
    private IMAdUnit g;
    private IMUserInfo h;
    private IMNiceInfo i;
    private IMWebView j;
    private String k;
    private String l;
    private String m;
    private IMRequestResponseManager n;
    private IMHttpRequestCallback o;
    private a p;
    private IMWebView.IMWebViewListener q;
    
    public IMAdInterstitial(final Activity activity, final String s) {
        super();
        this.a = State.INIT;
        this.e = -1L;
        this.k = "http://i.w.inmobi.com/showad.asm";
        this.l = "http://i.w.sandbox.inmobi.com/showad.asm";
        this.o = new IMHttpRequestCallback() {
            @Override
            public void notifyResult(final int i, final Object o) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", ">>> Got HTTP REQUEST callback. Status: " + i + " ,data=" + o);
                if (i == 0) {
                    IMAdInterstitial.a(IMAdInterstitial.this, (IMAdUnit)o);
                    IMAdInterstitial.this.p.sendEmptyMessage(308);
                }
                else if (i == 1) {
                    final Message obtainMessage = IMAdInterstitial.this.p.obtainMessage(309);
                    obtainMessage.obj = o;
                    obtainMessage.sendToTarget();
                }
            }
        };
        this.p = new a(this);
        this.q = new IMWebView.IMWebViewListener() {
            @Override
            public void onDismissAdScreen() {
                IMAdInterstitial.this.a(103, null);
            }
            
            @Override
            public void onError() {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error loading the interstitial ad ");
                IMAdInterstitial.this.p.sendEmptyMessage(310);
            }
            
            @Override
            public void onExpand() {
            }
            
            @Override
            public void onExpandClose() {
            }
            
            @Override
            public void onLeaveApplication() {
                IMAdInterstitial.this.a(104, null);
            }
            
            @Override
            public void onShowAdScreen() {
                IMAdInterstitial.this.a(102, null);
            }
        };
        this.m = "http://localhost/" + Integer.toString(InternalSDKUtil.incrementBaseUrl()) + "/";
        this.a(activity, s);
    }
    
    public IMAdInterstitial(final Activity activity, final String s, final long e) {
        super();
        this.a = State.INIT;
        this.e = -1L;
        this.k = "http://i.w.inmobi.com/showad.asm";
        this.l = "http://i.w.sandbox.inmobi.com/showad.asm";
        this.o = new IMHttpRequestCallback() {
            @Override
            public void notifyResult(final int i, final Object o) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", ">>> Got HTTP REQUEST callback. Status: " + i + " ,data=" + o);
                if (i == 0) {
                    IMAdInterstitial.a(IMAdInterstitial.this, (IMAdUnit)o);
                    IMAdInterstitial.this.p.sendEmptyMessage(308);
                }
                else if (i == 1) {
                    final Message obtainMessage = IMAdInterstitial.this.p.obtainMessage(309);
                    obtainMessage.obj = o;
                    obtainMessage.sendToTarget();
                }
            }
        };
        this.p = new a(this);
        this.q = new IMWebView.IMWebViewListener() {
            @Override
            public void onDismissAdScreen() {
                IMAdInterstitial.this.a(103, null);
            }
            
            @Override
            public void onError() {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error loading the interstitial ad ");
                IMAdInterstitial.this.p.sendEmptyMessage(310);
            }
            
            @Override
            public void onExpand() {
            }
            
            @Override
            public void onExpandClose() {
            }
            
            @Override
            public void onLeaveApplication() {
                IMAdInterstitial.this.a(104, null);
            }
            
            @Override
            public void onShowAdScreen() {
                IMAdInterstitial.this.a(102, null);
            }
        };
        this.m = "http://localhost/" + Integer.toString(InternalSDKUtil.incrementBaseUrl()) + "/";
        this.e = e;
        this.a(activity, s);
    }
    
    private void a(final int n, final IMAdRequest.ErrorCode errorCode) {
        if (this.f == null) {
            return;
        }
        this.c.runOnUiThread((Runnable)new Runnable() {
            static /* synthetic */ int[] a() {
                final int[] d = IMAdInterstitial$3.d;
                if (d != null) {
                    return d;
                }
                final int[] d2 = new int[IMAdRequest.ErrorCode.values().length];
                while (true) {
                    try {
                        d2[IMAdRequest.ErrorCode.AD_CLICK_IN_PROGRESS.ordinal()] = 3;
                        try {
                            d2[IMAdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS.ordinal()] = 2;
                            try {
                                d2[IMAdRequest.ErrorCode.AD_FETCH_TIMEOUT.ordinal()] = 4;
                                try {
                                    d2[IMAdRequest.ErrorCode.AD_RENDERING_TIMEOUT.ordinal()] = 5;
                                    try {
                                        d2[IMAdRequest.ErrorCode.INTERNAL_ERROR.ordinal()] = 7;
                                        try {
                                            d2[IMAdRequest.ErrorCode.INVALID_APP_ID.ordinal()] = 9;
                                            try {
                                                d2[IMAdRequest.ErrorCode.INVALID_REQUEST.ordinal()] = 1;
                                                try {
                                                    d2[IMAdRequest.ErrorCode.NETWORK_ERROR.ordinal()] = 6;
                                                    try {
                                                        d2[IMAdRequest.ErrorCode.NO_FILL.ordinal()] = 8;
                                                        return IMAdInterstitial$3.d = d2;
                                                    }
                                                    catch (NoSuchFieldError noSuchFieldError) {}
                                                }
                                                catch (NoSuchFieldError noSuchFieldError2) {}
                                            }
                                            catch (NoSuchFieldError noSuchFieldError3) {}
                                        }
                                        catch (NoSuchFieldError noSuchFieldError4) {}
                                    }
                                    catch (NoSuchFieldError noSuchFieldError5) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError6) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError7) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError8) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError9) {
                        continue;
                    }
                    break;
                }
            }
            
            @Override
            public void run() {
                switch (n) {
                    default: {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", errorCode.toString());
                    }
                    case 100: {
                        IMAdInterstitial.this.f.onAdRequestLoaded(IMAdInterstitial.this);
                    }
                    case 101: {
                        switch (a()[errorCode.ordinal()]) {
                            case 3: {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad click in progress. Your request cannot be processed at this time. Try again later.");
                                break;
                            }
                            case 2: {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad download in progress. Your request cannot be processed at this time. Try again later.");
                                break;
                            }
                        }
                        IMAdInterstitial.this.f.onAdRequestFailed(IMAdInterstitial.this, errorCode);
                    }
                    case 103: {
                        IMAdInterstitial.this.f.onDismissAdScreen(IMAdInterstitial.this);
                    }
                    case 102: {
                        IMAdInterstitial.this.f.onShowAdScreen(IMAdInterstitial.this);
                    }
                    case 104: {
                        IMAdInterstitial.this.f.onLeaveApplication(IMAdInterstitial.this);
                    }
                }
            }
        });
    }
    
    private void a(final Activity activity, final String d) {
        if (activity == null) {
            throw new NullPointerException("Activity cannot be null");
        }
        while (true) {
            try {
                IMSDKUtil.validateAdConfiguration((Context)activity);
                IMSDKUtil.validateAppID(d);
                this.c = IMSDKUtil.getRootActivity(activity);
                this.d = d;
                this.c();
            }
            catch (IMConfigException ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ void a(final IMAdInterstitial imAdInterstitial, final State a) {
        imAdInterstitial.a = a;
    }
    
    static /* synthetic */ void a(final IMAdInterstitial imAdInterstitial, final IMWebView j) {
        imAdInterstitial.j = j;
    }
    
    static /* synthetic */ void a(final IMAdInterstitial imAdInterstitial, final IMAdUnit g) {
        imAdInterstitial.g = g;
    }
    
    private void a(final IMAdUnit imAdUnit) {
        if (imAdUnit != null && IMAdUnit.AdTypes.NONE != imAdUnit.getAdType() && imAdUnit.getCDATABlock() != null) {
            final String replaceAll = new StringBuffer(imAdUnit.getCDATABlock()).toString().replaceAll("%", "%25");
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Final HTML String: " + replaceAll);
            this.j.requestOnPageFinishedCallback(this.p.obtainMessage(303));
            this.p.sendEmptyMessageDelayed(307, 60000L);
            this.j.loadDataWithBaseURL(this.m, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">" + replaceAll + "</body></html>", "text/html", null, this.m);
            return;
        }
        this.a = State.INIT;
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Cannot load Ad. Invalid Ad Response");
        this.a(101, IMAdRequest.ErrorCode.INTERNAL_ERROR);
    }
    
    private boolean a() {
        final boolean b = this.b != null && this.b.isTestMode();
        return 0 != 0 || b || InternalSDKUtil.validateAppId(this.d);
    }
    
    private void b() {
        if (this.i == null) {
            this.i = new IMNiceInfo(this.c.getApplicationContext(), this.h);
        }
    }
    
    private void c() {
        final Display defaultDisplay = ((WindowManager)this.c.getSystemService("window")).getDefaultDisplay();
        final int displayWidth = IMWrapperFunctions.getDisplayWidth(defaultDisplay);
        final int displayHeight = IMWrapperFunctions.getDisplayHeight(defaultDisplay);
    Label_0157:
        while (true) {
            if (this.h != null) {
                break Label_0157;
            }
            while (true) {
                this.h = new IMUserInfo((Context)this.c);
                final DisplayMetrics displayMetrics = new DisplayMetrics();
                this.c.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
                this.h.setScreenDensity(String.valueOf(displayMetrics.density));
                this.h.setScreenSize(displayWidth + "X" + displayHeight);
                while (true) {
                    try {
                        if (this.h.getPhoneDefaultUserAgent().equals("")) {
                            this.h.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent((Context)this.c));
                        }
                        this.h.updateInfo(this.d, this.b);
                        if (InternalSDKUtil.getWhetherTablet(InternalSDKUtil.getDisplayRotation(defaultDisplay), displayWidth, displayHeight)) {
                            final int i = 17;
                            this.h.setAdUnitSlot(String.valueOf(i));
                            if (this.e != -1L) {
                                this.h.setSlotId(Long.toString(this.e));
                            }
                            return;
                        }
                    }
                    catch (Exception obj) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception occured while setting user agent" + obj);
                        continue Label_0157;
                    }
                    final int i = 14;
                    continue;
                }
            }
            break;
        }
    }
    
    private void setAdServerTestUrl(final String l) {
        this.l = l;
    }
    
    private void setAdServerUrl(final String k) {
        this.k = k;
    }
    
    public String getAppId() {
        return this.d;
    }
    
    public IMAdInterstitialListener getIMAdInterstitialListener() {
        return this.f;
    }
    
    public IMAdRequest getIMAdRequest() {
        return this.b;
    }
    
    public long getSlotId() {
        return this.e;
    }
    
    public State getState() {
        return this.a;
    }
    
    public void loadNewAd() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", " >>>> Start loading new Interstitial Ad <<<<");
        if (!this.a()) {
            this.a(101, IMAdRequest.ErrorCode.INVALID_REQUEST);
            return;
        }
        if (this.a == State.LOADING) {
            this.a(101, IMAdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
            return;
        }
        if (this.a == State.ACTIVE) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Interstitial ad is in ACTIVE state. Try again after sometime.");
            this.a(101, IMAdRequest.ErrorCode.INVALID_REQUEST);
            return;
        }
        this.a = State.LOADING;
        this.c();
        this.b();
        this.p.sendEmptyMessageDelayed(306, 60000L);
        (this.n = new IMRequestResponseManager()).asyncRequestAd(this.h, this.i, IMRequestResponseManager.ActionType.AdRequest_Interstitial, this.k, this.l, this.o);
    }
    
    public void loadNewAd(final IMAdRequest b) {
        this.b = b;
        this.loadNewAd();
    }
    
    public void setAppId(final String d) {
        IMSDKUtil.validateAppID(d);
        this.d = d;
    }
    
    public void setIMAdInterstitialListener(final IMAdInterstitialListener f) {
        this.f = f;
    }
    
    public void setIMAdRequest(final IMAdRequest b) {
        this.b = b;
    }
    
    public void setSlotId(final long e) {
        this.e = e;
    }
    
    public void show() {
        Label_0057: {
            try {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Showing the Interstitial Ad. ");
                if (this.a != State.READY) {
                    throw new IllegalStateException("Interstitial ad is not in the 'READY' state. Current state: " + this.a);
                }
                break Label_0057;
            }
            catch (Exception ex) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error showing ad ", ex);
            }
            return;
        }
        if (this.g != null) {
            this.j.setAdUnitData(false, null);
            this.j.requestOnInterstitialClosed(this.p.obtainMessage(304));
            this.j.requestOnInterstitialShown(this.p.obtainMessage(305));
            this.j.changeContentAreaForInterstitials(false);
        }
    }
    
    public void stopLoading() {
        if (this.p.hasMessages(306)) {
            this.p.removeMessages(306);
            this.p.sendEmptyMessage(306);
        }
        else if (this.p.hasMessages(307)) {
            this.p.removeMessages(307);
            this.p.sendEmptyMessage(307);
        }
    }
    
    public enum State
    {
        ACTIVE("ACTIVE", 3), 
        INIT("INIT", 0), 
        LOADING("LOADING", 2), 
        READY("READY", 1);
        
        static {
            a = new State[] { State.INIT, State.READY, State.LOADING, State.ACTIVE };
        }
    }
    
    static class a extends Handler
    {
        private final WeakReference<IMAdInterstitial> a;
        
        public a(final IMAdInterstitial referent) {
            super();
            this.a = new WeakReference<IMAdInterstitial>(referent);
        }
        
        public void handleMessage(final Message message) {
            final IMAdInterstitial imAdInterstitial = this.a.get();
            if (imAdInterstitial != null) {
                switch (message.what) {
                    case 308: {
                        this.removeMessages(306);
                        try {
                            if (imAdInterstitial.j == null) {
                                IMAdInterstitial.a(imAdInterstitial, new IMWebView((Context)imAdInterstitial.c, imAdInterstitial.q, true, false));
                            }
                            imAdInterstitial.a(imAdInterstitial.g);
                        }
                        catch (Exception ex) {
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Error retrieving ad ", ex);
                            IMAdInterstitial.a(imAdInterstitial, State.INIT);
                            imAdInterstitial.a(101, IMAdRequest.ErrorCode.INTERNAL_ERROR);
                        }
                    }
                    case 309: {
                        this.removeMessages(306);
                        IMAdInterstitial.a(imAdInterstitial, State.INIT);
                        imAdInterstitial.a(101, (IMAdRequest.ErrorCode)message.obj);
                    }
                    case 310: {
                        this.removeMessages(307);
                        this.removeMessages(303);
                        IMAdInterstitial.a(imAdInterstitial, State.INIT);
                        IMAdInterstitial.a(imAdInterstitial, (IMWebView)null);
                        imAdInterstitial.a(101, IMAdRequest.ErrorCode.INTERNAL_ERROR);
                    }
                    case 307: {
                        this.removeMessages(310);
                        this.removeMessages(303);
                        IMAdInterstitial.a(imAdInterstitial, State.INIT);
                        imAdInterstitial.j.cancelLoad();
                        imAdInterstitial.j.stopLoading();
                        imAdInterstitial.j.deinit();
                        IMAdInterstitial.a(imAdInterstitial, (IMWebView)null);
                        imAdInterstitial.a(101, IMAdRequest.ErrorCode.AD_RENDERING_TIMEOUT);
                    }
                    case 306: {
                        this.removeMessages(308);
                        this.removeMessages(309);
                        IMAdInterstitial.a(imAdInterstitial, State.INIT);
                        imAdInterstitial.n.doCancel();
                        imAdInterstitial.a(101, IMAdRequest.ErrorCode.AD_FETCH_TIMEOUT);
                    }
                    case 303: {
                        this.removeMessages(307);
                        IMAdInterstitial.a(imAdInterstitial, State.READY);
                        imAdInterstitial.a(100, null);
                    }
                    case 304: {
                        IMAdInterstitial.a(imAdInterstitial, State.INIT);
                        imAdInterstitial.a(103, null);
                        IMAdInterstitial.a(imAdInterstitial, (IMWebView)null);
                    }
                    case 305: {
                        IMAdInterstitial.a(imAdInterstitial, State.ACTIVE);
                        imAdInterstitial.a(102, null);
                    }
                }
            }
        }
    }
}
