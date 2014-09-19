package com.tapjoy.mraid.listener;

import com.tapjoy.mraid.controller.*;
import android.content.*;
import android.location.*;
import android.os.*;

public class Loc implements LocationListener
{
    private LocationManager mLocMan;
    MraidLocation mOrmmaLocationController;
    private String mProvider;
    
    public Loc(final Context context, final int n, final MraidLocation mOrmmaLocationController, final String mProvider) {
        super();
        this.mOrmmaLocationController = mOrmmaLocationController;
        this.mLocMan = (LocationManager)context.getSystemService("location");
        this.mProvider = mProvider;
    }
    
    public void onLocationChanged(final Location location) {
        this.mOrmmaLocationController.success(location);
    }
    
    public void onProviderDisabled(final String s) {
        this.mOrmmaLocationController.fail();
    }
    
    public void onProviderEnabled(final String s) {
    }
    
    public void onStatusChanged(final String s, final int n, final Bundle bundle) {
        if (n == 0) {
            this.mOrmmaLocationController.fail();
        }
    }
    
    public void start() {
        this.mLocMan.requestLocationUpdates(this.mProvider, 0L, 0.0f, (LocationListener)this);
    }
    
    public void stop() {
        this.mLocMan.removeUpdates((LocationListener)this);
    }
}
