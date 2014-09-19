package com.adobe.air;

import android.content.*;
import android.hardware.*;

public class Accelerometer implements SensorEventListener
{
    private static final float STANDARD_GRAVITY = 9.81f;
    private Context mContext;
    private SensorManager mSensorManager;
    private float m_x;
    private float m_y;
    private float m_z;
    
    public Accelerometer(final Context mContext) {
        super();
        this.mContext = mContext;
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.sensor.accelerometer")) {
            (this.mSensorManager = (SensorManager)mContext.getSystemService("sensor")).registerListener((SensorEventListener)this, this.mSensorManager.getDefaultSensor(1), 0);
        }
    }
    
    public float getX() {
        return this.m_x;
    }
    
    public float getY() {
        return this.m_y;
    }
    
    public float getZ() {
        return this.m_z;
    }
    
    public void onAccuracyChanged(final Sensor sensor, final int n) {
    }
    
    public void onSensorChanged(final SensorEvent sensorEvent) {
        this.m_x = sensorEvent.values[0] / 9.81f;
        this.m_y = sensorEvent.values[1] / 9.81f;
        this.m_z = sensorEvent.values[2] / 9.81f;
    }
    
    public void removeListener() {
        if (this.mContext.getPackageManager().hasSystemFeature("android.hardware.sensor.accelerometer")) {
            this.mSensorManager.unregisterListener((SensorEventListener)this);
        }
    }
}
