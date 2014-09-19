package com.tapjoy.mraid.listener;

import com.tapjoy.mraid.controller.*;
import android.content.*;
import java.util.*;
import android.hardware.*;

public class Accel implements SensorEventListener
{
    private static final int FORCE_THRESHOLD = 1000;
    private static final int SHAKE_COUNT = 2;
    private static final int SHAKE_DURATION = 2000;
    private static final int SHAKE_TIMEOUT = 500;
    private static final int TIME_THRESHOLD = 100;
    private boolean bAccReady;
    private boolean bMagReady;
    private float[] mAccVals;
    private float[] mActualOrientation;
    String mKey;
    private float[] mLastAccVals;
    private long mLastForce;
    private long mLastShake;
    private long mLastTime;
    private float[] mMagVals;
    MraidSensor mSensorController;
    private int mSensorDelay;
    private int mShakeCount;
    int registeredHeadingListeners;
    int registeredShakeListeners;
    int registeredTiltListeners;
    private SensorManager sensorManager;
    
    public Accel(final Context context, final MraidSensor mSensorController) {
        super();
        this.registeredTiltListeners = 0;
        this.registeredShakeListeners = 0;
        this.registeredHeadingListeners = 0;
        this.mSensorDelay = 3;
        this.mAccVals = new float[] { 0.0f, 0.0f, 0.0f };
        this.mLastAccVals = new float[] { 0.0f, 0.0f, 0.0f };
        this.mActualOrientation = new float[] { -1.0f, -1.0f, -1.0f };
        this.mSensorController = mSensorController;
        this.sensorManager = (SensorManager)context.getSystemService("sensor");
    }
    
    private void start() {
        final List sensorList = this.sensorManager.getSensorList(1);
        if (sensorList.size() > 0) {
            this.sensorManager.registerListener((SensorEventListener)this, (Sensor)sensorList.get(0), this.mSensorDelay);
        }
    }
    
    private void startMag() {
        final List sensorList = this.sensorManager.getSensorList(2);
        if (sensorList.size() > 0) {
            this.sensorManager.registerListener((SensorEventListener)this, (Sensor)sensorList.get(0), this.mSensorDelay);
            this.start();
        }
    }
    
    public float getHeading() {
        return this.mActualOrientation[0];
    }
    
    public void onAccuracyChanged(final Sensor sensor, final int n) {
    }
    
    public void onSensorChanged(final SensorEvent sensorEvent) {
        switch (sensorEvent.sensor.getType()) {
            case 2: {
                this.mMagVals = sensorEvent.values.clone();
                this.bMagReady = true;
                break;
            }
            case 1: {
                this.mLastAccVals = this.mAccVals;
                this.mAccVals = sensorEvent.values.clone();
                this.bAccReady = true;
                break;
            }
        }
        if (this.mMagVals != null && this.mAccVals != null && this.bAccReady && this.bMagReady) {
            this.bAccReady = false;
            this.bMagReady = false;
            final float[] array = new float[9];
            SensorManager.getRotationMatrix(array, new float[9], this.mAccVals, this.mMagVals);
            SensorManager.getOrientation(array, this.mActualOrientation = new float[3]);
            this.mSensorController.onHeadingChange(this.mActualOrientation[0]);
        }
        if (sensorEvent.sensor.getType() == 1) {
            final long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.mLastForce > 500L) {
                this.mShakeCount = 0;
            }
            if (currentTimeMillis - this.mLastTime > 100L) {
                if (10000.0f * (Math.abs(this.mAccVals[0] + this.mAccVals[1] + this.mAccVals[2] - this.mLastAccVals[0] - this.mLastAccVals[1] - this.mLastAccVals[2]) / (currentTimeMillis - this.mLastTime)) > 1000.0f) {
                    final int mShakeCount = 1 + this.mShakeCount;
                    this.mShakeCount = mShakeCount;
                    if (mShakeCount >= 2 && currentTimeMillis - this.mLastShake > 2000L) {
                        this.mLastShake = currentTimeMillis;
                        this.mShakeCount = 0;
                        this.mSensorController.onShake();
                    }
                    this.mLastForce = currentTimeMillis;
                }
                this.mLastTime = currentTimeMillis;
                this.mSensorController.onTilt(this.mAccVals[0], this.mAccVals[1], this.mAccVals[2]);
            }
        }
    }
    
    public void setSensorDelay(final int mSensorDelay) {
        this.mSensorDelay = mSensorDelay;
        if (this.registeredTiltListeners > 0 || this.registeredShakeListeners > 0) {
            this.stop();
            this.start();
        }
    }
    
    public void startTrackingHeading() {
        if (this.registeredHeadingListeners == 0) {
            this.startMag();
        }
        ++this.registeredHeadingListeners;
    }
    
    public void startTrackingShake() {
        if (this.registeredShakeListeners == 0) {
            this.setSensorDelay(1);
            this.start();
        }
        ++this.registeredShakeListeners;
    }
    
    public void startTrackingTilt() {
        if (this.registeredTiltListeners == 0) {
            this.start();
        }
        ++this.registeredTiltListeners;
    }
    
    public void stop() {
        if (this.registeredHeadingListeners == 0 && this.registeredShakeListeners == 0 && this.registeredTiltListeners == 0) {
            this.sensorManager.unregisterListener((SensorEventListener)this);
        }
    }
    
    public void stopAllListeners() {
        this.registeredTiltListeners = 0;
        this.registeredShakeListeners = 0;
        this.registeredHeadingListeners = 0;
        try {
            this.stop();
        }
        catch (Exception ex) {}
    }
    
    public void stopTrackingHeading() {
        if (this.registeredHeadingListeners > 0 && --this.registeredHeadingListeners == 0) {
            this.stop();
        }
    }
    
    public void stopTrackingShake() {
        if (this.registeredShakeListeners > 0 && --this.registeredShakeListeners == 0) {
            this.setSensorDelay(3);
            this.stop();
        }
    }
    
    public void stopTrackingTilt() {
        if (this.registeredTiltListeners > 0 && --this.registeredTiltListeners == 0) {
            this.stop();
        }
    }
}
