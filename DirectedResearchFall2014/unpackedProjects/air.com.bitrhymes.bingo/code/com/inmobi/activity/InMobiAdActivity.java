package com.inmobi.activity;

import android.app.*;
import com.inmobi.androidsdk.*;
import android.util.*;
import android.widget.*;
import android.content.*;
import android.os.*;
import com.inmobi.commons.*;
import com.inmobi.commons.internal.*;
import android.view.*;

public class InMobiAdActivity extends Activity
{
    private IMAdView a;
    private IMAdInterstitial b;
    private IMAdRequest c;
    private IMAdListener d;
    private IMAdInterstitialListener e;
    
    public InMobiAdActivity() {
        super();
        this.d = new IMAdListener() {
            @Override
            public void onAdRequestCompleted(final IMAdView obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onAdRequestCompleted, adView: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onAdRequestCompleted", 0).show();
            }
            
            @Override
            public void onAdRequestFailed(final IMAdView obj, final IMAdRequest.ErrorCode errorCode) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onAdRequestFailed, adView: " + obj + " errorCode: " + errorCode);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)("onAdRequestFailed....errorCode: " + errorCode), 0).show();
            }
            
            @Override
            public void onDismissAdScreen(final IMAdView obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onDismissAdScreen, adView: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onDismissAdScreen", 0).show();
            }
            
            @Override
            public void onLeaveApplication(final IMAdView obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onLeaveApplication, adView: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onLeaveApplication", 0).show();
            }
            
            @Override
            public void onShowAdScreen(final IMAdView obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onShowAdScreen, adView: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onShowAdScreen", 0).show();
            }
        };
        this.e = new IMAdInterstitialListener() {
            @Override
            public void onAdRequestFailed(final IMAdInterstitial obj, final IMAdRequest.ErrorCode obj2) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onAdRequestFailed, adInterstitial: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)("Interstitial Ad failed to load. Errorcode: " + obj2), 0).show();
            }
            
            @Override
            public void onAdRequestLoaded(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onAdRequestLoaded, adInterstitial: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onAdRequestLoaded", 0).show();
            }
            
            @Override
            public void onDismissAdScreen(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onDismissAdScreen, adInterstitial: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onDismissAdScreen", 0).show();
            }
            
            @Override
            public void onLeaveApplication(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onLeaveApplication, adInterstitial: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onLeaveApplication", 0).show();
            }
            
            @Override
            public void onShowAdScreen(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onShowAdScreen, adInterstitial: " + obj);
                Toast.makeText((Context)InMobiAdActivity.this, (CharSequence)"onShowAdScreen", 0).show();
            }
        };
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903040);
        this.c = new IMAdRequest();
        IMCommonUtil.setLogLevel(IMCommonUtil.LOG_LEVEL.DEBUG);
        (this.a = (IMAdView)this.findViewById(2131099649)).setAdBackgroundColor("#00ff00");
        this.a.setAdTextColor("#000");
        this.a.setIMAdListener(this.d);
        this.c.setTestMode(true);
        this.a.setIMAdRequest(this.c);
        this.a.setRefreshInterval(-1);
        this.a.setRefTagParam("hELLO", "World");
        IMLog.debug("InMobiAndroidSDK_3.6.2", "InMobiAdActivity onCreate Exit");
        (this.b = new IMAdInterstitial(this, "4028cba630724cd9013167ce6d340e9c")).setIMAdInterstitialListener(this.e);
    }
    
    public void onGetInAd(final View view) {
        new Thread() {
            @Override
            public void run() {
                InMobiAdActivity.this.b.loadNewAd(InMobiAdActivity.this.c);
            }
        }.start();
    }
    
    public void onRefreshAd(final View view) {
        new Thread() {
            @Override
            public void run() {
                InMobiAdActivity.this.a.loadNewAd();
            }
        }.start();
    }
    
    public void onShowInAd(final View view) {
        try {
            this.b.show();
        }
        catch (Exception ex) {
            Log.w("InMobiAndroidSDK_3.6.2", "", (Throwable)ex);
        }
    }
}
