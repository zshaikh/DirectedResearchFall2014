package com.tapjoy.mraid.controller;

import com.tapjoy.mraid.listener.*;
import com.tapjoy.mraid.view.*;
import android.content.*;
import android.location.*;
import com.tapjoy.*;
import java.util.*;

public class MraidLocation extends Abstract
{
    private static final String TAG = "MRAID Location";
    final int INTERVAL;
    private boolean allowLocationServices;
    private boolean hasPermission;
    private Loc mGps;
    private int mLocListenerCount;
    private LocationManager mLocationManager;
    private Loc mNetwork;
    
    public MraidLocation(final MraidView mraidView, final Context context) {
        super(mraidView, context);
        this.hasPermission = false;
        this.INTERVAL = 1000;
        this.allowLocationServices = false;
        try {
            this.mLocationManager = (LocationManager)context.getSystemService("location");
            if (this.mLocationManager.getProvider("gps") != null) {
                this.mGps = new Loc(context, 1000, this, "gps");
            }
            if (this.mLocationManager.getProvider("network") != null) {
                this.mNetwork = new Loc(context, 1000, this, "network");
            }
            this.hasPermission = true;
        }
        catch (SecurityException ex) {}
    }
    
    private static String formatLocation(final Location location) {
        return "{ lat: " + location.getLatitude() + ", lon: " + location.getLongitude() + ", acc: " + location.getAccuracy() + "}";
    }
    
    public void allowLocationServices(final boolean allowLocationServices) {
        this.allowLocationServices = allowLocationServices;
    }
    
    public boolean allowLocationServices() {
        return this.allowLocationServices;
    }
    
    public void fail() {
        TapjoyLog.e("MRAID Location", "Location can't be determined");
        this.mMraidView.injectMraidJavaScript("window.mraidview.fireErrorEvent(\"Location cannot be identified\", \"OrmmaLocationController\")");
    }
    
    public String getLocation() {
        TapjoyLog.d("MRAID Location", "getLocation: hasPermission: " + this.hasPermission);
        if (!this.hasPermission) {
            return null;
        }
        final Iterator<String> iterator = this.mLocationManager.getProviders(true).iterator();
        Location lastKnownLocation = null;
        while (iterator.hasNext()) {
            lastKnownLocation = this.mLocationManager.getLastKnownLocation((String)iterator.next());
            if (lastKnownLocation != null) {
                break;
            }
        }
        TapjoyLog.d("MRAID Location", "getLocation: " + lastKnownLocation);
        if (lastKnownLocation != null) {
            return formatLocation(lastKnownLocation);
        }
        return null;
    }
    
    public void startLocationListener() {
        if (this.mLocListenerCount == 0) {
            if (this.mNetwork != null) {
                this.mNetwork.start();
            }
            if (this.mGps != null) {
                this.mGps.start();
            }
        }
        ++this.mLocListenerCount;
    }
    
    @Override
    public void stopAllListeners() {
        this.mLocListenerCount = 0;
        while (true) {
            try {
                this.mGps.stop();
                try {
                    this.mNetwork.stop();
                }
                catch (Exception ex) {}
            }
            catch (Exception ex2) {
                continue;
            }
            break;
        }
    }
    
    public void stopLocationListener() {
        --this.mLocListenerCount;
        if (this.mLocListenerCount == 0) {
            if (this.mNetwork != null) {
                this.mNetwork.stop();
            }
            if (this.mGps != null) {
                this.mGps.stop();
            }
        }
    }
    
    public void success(final Location location) {
        final String string = "window.mraidview.fireChangeEvent({ location: " + formatLocation(location) + "})";
        TapjoyLog.d("MRAID Location", string);
        this.mMraidView.injectMraidJavaScript(string);
    }
}
