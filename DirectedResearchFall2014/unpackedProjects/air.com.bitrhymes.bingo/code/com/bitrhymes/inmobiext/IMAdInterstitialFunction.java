package com.bitrhymes.inmobiext;

import com.inmobi.androidsdk.*;
import android.util.*;
import com.adobe.fre.*;

public class IMAdInterstitialFunction implements FREFunction
{
    private String appId;
    private FREContext context;
    public IMAdRequest mAdRequest;
    private IMAdInterstitialListener mIMAdInListener;
    public IMAdInterstitial mIMAdInterstitial;
    private boolean testMode;
    
    public IMAdInterstitialFunction() {
        super();
        this.testMode = false;
        this.mIMAdInListener = new IMAdInterstitialListener() {
            @Override
            public void onAdRequestFailed(final IMAdInterstitial obj, final IMAdRequest.ErrorCode obj2) {
                IMAdInterstitialFunction.this.context.dispatchStatusEventAsync("fullscreen_failed", obj.toString());
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onAdRequestFailed, adInterstitial: " + obj + " ,errorCode: " + obj2);
            }
            
            @Override
            public void onAdRequestLoaded(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onAdRequestLoaded, adInterstitial: " + obj);
                if (IMAdInterstitialFunction.this.mIMAdInterstitial.getState() == IMAdInterstitial.State.READY) {
                    IMAdInterstitialFunction.this.mIMAdInterstitial.show();
                }
            }
            
            @Override
            public void onDismissAdScreen(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onDismissAdScreen, adInterstitial: " + obj);
                IMAdInterstitialFunction.this.context.dispatchStatusEventAsync("fullscreen_success", obj.toString());
            }
            
            @Override
            public void onLeaveApplication(final IMAdInterstitial obj) {
                IMAdInterstitialFunction.this.context.dispatchStatusEventAsync("fullscreen_exit", obj.toString());
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onLeaveApplication, adInterstitial: " + obj);
            }
            
            @Override
            public void onShowAdScreen(final IMAdInterstitial obj) {
                Log.i("InMobiAndroidSDK_3.6.2", "InMobiAdActivity-> onShowAdScreen, adInterstitial: " + obj);
                IMAdInterstitialFunction.this.context.dispatchStatusEventAsync("fullscreen_success", obj.toString());
            }
        };
    }
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        this.context = context;
        try {
            Log.d("IMAdInterstitialFunction", "IMAdInterstitialFunction initializing  333 ");
            this.appId = array[0].getAsString();
            this.testMode = array[1].getAsBool();
            (this.mAdRequest = new IMAdRequest()).setTestMode(this.testMode);
            if (this.mIMAdInterstitial == null) {
                (this.mIMAdInterstitial = new IMAdInterstitial(context.getActivity(), this.appId)).setIMAdInterstitialListener(this.mIMAdInListener);
            }
            this.mIMAdInterstitial.loadNewAd(this.mAdRequest);
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
