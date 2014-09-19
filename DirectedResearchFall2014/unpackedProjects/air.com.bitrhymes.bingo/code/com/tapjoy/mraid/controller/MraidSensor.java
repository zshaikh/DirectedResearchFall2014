package com.tapjoy.mraid.controller;

import com.tapjoy.mraid.listener.*;
import com.tapjoy.mraid.view.*;
import android.content.*;
import com.tapjoy.*;

public class MraidSensor extends Abstract
{
    private static final String TAG = "MRAID Sensor";
    final int INTERVAL;
    private Accel mAccel;
    private float mLastX;
    private float mLastY;
    private float mLastZ;
    
    public MraidSensor(final MraidView mraidView, final Context context) {
        super(mraidView, context);
        this.INTERVAL = 1000;
        this.mLastX = 0.0f;
        this.mLastY = 0.0f;
        this.mLastZ = 0.0f;
        this.mAccel = new Accel(context, this);
    }
    
    public float getHeading() {
        TapjoyLog.d("MRAID Sensor", "getHeading: " + this.mAccel.getHeading());
        return this.mAccel.getHeading();
    }
    
    public String getTilt() {
        final String string = "{ x : \"" + this.mLastX + "\", y : \"" + this.mLastY + "\", z : \"" + this.mLastZ + "\"}";
        TapjoyLog.d("MRAID Sensor", "getTilt: " + string);
        return string;
    }
    
    public void onHeadingChange(final float n) {
        final String string = "window.mraidview.fireChangeEvent({ heading: " + (int)(57.29577951308232 * n) + "});";
        TapjoyLog.d("MRAID Sensor", string);
        this.mMraidView.injectMraidJavaScript(string);
    }
    
    public void onShake() {
        this.mMraidView.injectMraidJavaScript("mraid.gotShake()");
    }
    
    public void onTilt(final float mLastX, final float mLastY, final float mLastZ) {
        this.mLastX = mLastX;
        this.mLastY = mLastY;
        this.mLastZ = mLastZ;
        final String string = "window.mraidview.fireChangeEvent({ tilt: " + this.getTilt() + "})";
        TapjoyLog.d("MRAID Sensor", string);
        this.mMraidView.injectMraidJavaScript(string);
    }
    
    public void startHeadingListener() {
        this.mAccel.startTrackingHeading();
    }
    
    public void startShakeListener() {
        this.mAccel.startTrackingShake();
    }
    
    public void startTiltListener() {
        this.mAccel.startTrackingTilt();
    }
    
    void stop() {
    }
    
    @Override
    public void stopAllListeners() {
        this.mAccel.stopAllListeners();
    }
    
    public void stopHeadingListener() {
        this.mAccel.stopTrackingHeading();
    }
    
    public void stopShakeListener() {
        this.mAccel.stopTrackingShake();
    }
    
    public void stopTiltListener() {
        this.mAccel.stopTrackingTilt();
    }
}
