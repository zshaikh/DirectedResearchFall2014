package com.adobe.air.location;

import android.content.*;
import android.text.format.*;
import android.location.*;

public class Geolocation
{
    private AIRLocationListener mGPSListener;
    private LocationManager mLocationManager;
    private AIRLocationListener mNetworkListener;
    protected boolean m_EventSourceExists;
    protected double m_altitude;
    private Context m_context;
    protected Time m_currentTime;
    protected double m_gpsAltitude;
    protected float m_gpsHorizontalAaccuracy;
    protected double m_gpsLatitude;
    protected double m_gpsLongitude;
    protected float m_gpsSpeed;
    protected long m_gpsTimestamp;
    protected float m_gpsVerticalAccuracy;
    protected float m_horizontalAaccuracy;
    protected boolean m_ignoreLastGPSValue;
    protected boolean m_isGPSProviderEnabled;
    protected boolean m_isNetworkProviderEnabled;
    protected double m_latitude;
    protected double m_longitude;
    protected double m_networkAltitude;
    protected float m_networkHorizontalAaccuracy;
    protected double m_networkLatitude;
    protected double m_networkLongitude;
    protected float m_networkSpeed;
    protected long m_networkTimestamp;
    protected float m_networkVerticalAccuracy;
    protected long m_objectPointer;
    protected float m_speed;
    protected long m_timestamp;
    private long m_upateInterval;
    protected float m_verticalAccuracy;
    
    public Geolocation(final Context context) {
        super();
        try {
            this.m_context = context;
            this.m_EventSourceExists = true;
            this.mGPSListener = new AIRLocationListener(this);
            this.mNetworkListener = new AIRLocationListener(this);
            this.mLocationManager = (LocationManager)this.m_context.getSystemService("location");
            this.m_isGPSProviderEnabled = this.mLocationManager.isProviderEnabled("gps");
            this.m_isNetworkProviderEnabled = this.mLocationManager.isProviderEnabled("network");
            (this.m_currentTime = new Time()).setToNow();
            this.m_ignoreLastGPSValue = false;
        }
        catch (Exception ex) {}
    }
    
    protected void addGPSListener() {
        if (this.m_context.getPackageManager().hasSystemFeature("android.hardware.location.gps")) {
            this.mGPSListener.onLocationChanged(this.mLocationManager.getLastKnownLocation("gps"));
            this.mLocationManager.requestLocationUpdates("gps", this.m_upateInterval, 0.0f, (LocationListener)this.mGPSListener);
        }
    }
    
    protected void addLocationListeners() {
        if (this.m_context.getPackageManager().hasSystemFeature("android.hardware.location")) {
            this.addGPSListener();
            this.addNetworkListener();
        }
    }
    
    protected void addNetworkListener() {
        if (this.m_context.getPackageManager().hasSystemFeature("android.hardware.location.network")) {
            this.mLocationManager.requestLocationUpdates("network", this.m_upateInterval, 0.0f, (LocationListener)this.mNetworkListener);
        }
    }
    
    public boolean isGeolocationMuted() {
        return !this.m_isGPSProviderEnabled && !this.m_isNetworkProviderEnabled;
    }
    
    protected void releaseAllResources() {
        this.m_EventSourceExists = false;
        this.removeLocationListeners();
    }
    
    protected void removeGPSListener() {
        if (this.m_context.getPackageManager().hasSystemFeature("android.hardware.location.gps")) {
            this.mLocationManager.removeUpdates((LocationListener)this.mGPSListener);
        }
    }
    
    protected void removeLocationListeners() {
        if (this.m_context.getPackageManager().hasSystemFeature("android.hardware.location")) {
            this.removeGPSListener();
            this.removeNetworkListener();
        }
    }
    
    protected void removeNetworkListener() {
        if (this.m_context.getPackageManager().hasSystemFeature("android.hardware.location.network")) {
            this.mLocationManager.removeUpdates((LocationListener)this.mNetworkListener);
        }
    }
    
    public void setGeolocationEventSource(final long objectPointer) {
        try {
            this.m_objectPointer = objectPointer;
        }
        catch (Exception ex) {}
    }
    
    protected native void setGeolocationStatus(final boolean p0, final long p1);
    
    public void setUpdateTimeAndRegister(final long upateInterval, final long objectPointer) {
        try {
            this.m_objectPointer = objectPointer;
            this.m_upateInterval = upateInterval;
            this.addLocationListeners();
        }
        catch (Exception ex) {}
    }
    
    protected native void updateGeolocationCache(final long p0);
}
