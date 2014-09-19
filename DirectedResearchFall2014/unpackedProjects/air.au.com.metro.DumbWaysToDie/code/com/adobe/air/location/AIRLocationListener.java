package com.adobe.air.location;

import android.location.*;
import android.os.*;

public class AIRLocationListener implements LocationListener
{
    private static final int TIMEOUT_INTERVAL = 15000;
    private Geolocation m_geoObj;
    
    public AIRLocationListener(final Geolocation geoObj) {
        super();
        this.m_geoObj = geoObj;
    }
    
    private boolean isRegionFullyContained(final double n, final double n2, final float n3, final double n4, final double n5, final float n6) {
        final float[] array = new float[5];
        Location.distanceBetween(n, n2, n4, n5, array);
        return array[0] <= Math.abs(n6 - n3);
    }
    
    public void onLocationChanged(final Location location) {
        if (location != null) {
            final String provider = location.getProvider();
            this.m_geoObj.m_currentTime.setToNow();
            final double latitude = location.getLatitude();
            final double longitude = location.getLongitude();
            final double altitude = location.getAltitude();
            final float accuracy = location.getAccuracy();
            final float accuracy2 = location.getAccuracy();
            final float speed = location.getSpeed();
            final long millis = this.m_geoObj.m_currentTime.toMillis(false);
            if (provider.compareTo("gps") == 0) {
                this.m_geoObj.m_ignoreLastGPSValue = false;
                this.m_geoObj.m_gpsLatitude = latitude;
                this.m_geoObj.m_gpsLongitude = longitude;
                this.m_geoObj.m_gpsAltitude = altitude;
                this.m_geoObj.m_gpsHorizontalAaccuracy = accuracy;
                this.m_geoObj.m_gpsVerticalAccuracy = accuracy2;
                this.m_geoObj.m_gpsSpeed = speed;
                this.m_geoObj.m_gpsTimestamp = this.m_geoObj.m_currentTime.toMillis(false);
            }
            else if (provider.compareTo("network") == 0) {
                this.m_geoObj.m_networkLatitude = latitude;
                this.m_geoObj.m_networkLongitude = longitude;
                this.m_geoObj.m_networkAltitude = altitude;
                this.m_geoObj.m_networkHorizontalAaccuracy = accuracy;
                this.m_geoObj.m_networkVerticalAccuracy = accuracy2;
                this.m_geoObj.m_networkSpeed = speed;
                this.m_geoObj.m_networkTimestamp = this.m_geoObj.m_currentTime.toMillis(false);
                if (!this.m_geoObj.m_ignoreLastGPSValue && this.m_geoObj.m_networkTimestamp - this.m_geoObj.m_gpsTimestamp < 15000L && this.m_geoObj.m_networkHorizontalAaccuracy > this.m_geoObj.m_gpsHorizontalAaccuracy && this.isRegionFullyContained(this.m_geoObj.m_gpsLatitude, this.m_geoObj.m_gpsLongitude, this.m_geoObj.m_gpsHorizontalAaccuracy, this.m_geoObj.m_networkLatitude, this.m_geoObj.m_networkLongitude, this.m_geoObj.m_networkHorizontalAaccuracy)) {
                    return;
                }
                this.m_geoObj.m_ignoreLastGPSValue = true;
            }
            this.m_geoObj.m_latitude = latitude;
            this.m_geoObj.m_longitude = longitude;
            this.m_geoObj.m_altitude = altitude;
            this.m_geoObj.m_horizontalAaccuracy = accuracy;
            this.m_geoObj.m_verticalAccuracy = accuracy2;
            this.m_geoObj.m_speed = speed;
            this.m_geoObj.m_timestamp = millis;
            if (this.m_geoObj.m_EventSourceExists) {
                this.m_geoObj.updateGeolocationCache(this.m_geoObj.m_objectPointer);
            }
        }
    }
    
    public void onProviderDisabled(final String s) {
        final boolean isGPSProviderEnabled = this.m_geoObj.m_isGPSProviderEnabled;
        final boolean isNetworkProviderEnabled = this.m_geoObj.m_isNetworkProviderEnabled;
        if (s.compareTo("gps") == 0) {
            this.m_geoObj.m_isGPSProviderEnabled = false;
        }
        else if (s.compareTo("network") == 0) {
            this.m_geoObj.m_isNetworkProviderEnabled = false;
        }
        if ((isGPSProviderEnabled != this.m_geoObj.m_isGPSProviderEnabled || isNetworkProviderEnabled != this.m_geoObj.m_isNetworkProviderEnabled) && this.m_geoObj.m_EventSourceExists && !this.m_geoObj.m_isGPSProviderEnabled && !this.m_geoObj.m_isNetworkProviderEnabled) {
            this.m_geoObj.setGeolocationStatus(false, this.m_geoObj.m_objectPointer);
        }
    }
    
    public void onProviderEnabled(final String s) {
        final boolean isGPSProviderEnabled = this.m_geoObj.m_isGPSProviderEnabled;
        final boolean isNetworkProviderEnabled = this.m_geoObj.m_isNetworkProviderEnabled;
        if (s.compareTo("gps") == 0) {
            this.m_geoObj.m_isGPSProviderEnabled = true;
            if (this.m_geoObj.m_EventSourceExists && !this.m_geoObj.m_isNetworkProviderEnabled && isGPSProviderEnabled != this.m_geoObj.m_isGPSProviderEnabled) {
                this.m_geoObj.setGeolocationStatus(true, this.m_geoObj.m_objectPointer);
            }
        }
        else if (s.compareTo("network") == 0) {
            this.m_geoObj.m_isNetworkProviderEnabled = true;
            if (this.m_geoObj.m_EventSourceExists && !this.m_geoObj.m_isGPSProviderEnabled && isNetworkProviderEnabled != this.m_geoObj.m_isNetworkProviderEnabled) {
                this.m_geoObj.setGeolocationStatus(true, this.m_geoObj.m_objectPointer);
            }
        }
    }
    
    public void onStatusChanged(final String s, final int n, final Bundle bundle) {
    }
}
