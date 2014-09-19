package com.inmobi.commons.internal;

import android.os.*;
import android.content.*;
import android.location.*;

public class IMLocationMonitor implements LocationListener
{
    private static IMLocationMonitor a;
    private static LocationManager b;
    private static final int c;
    private static final int d;
    private static String e;
    private static Location f;
    private static boolean g;
    
    static {
        IMLocationMonitor.a = null;
        IMLocationMonitor.b = null;
        IMLocationMonitor.e = null;
        IMLocationMonitor.f = null;
    }
    
    public static IMLocationMonitor getInstance() {
        Label_0028: {
            if (IMLocationMonitor.a != null) {
                break Label_0028;
            }
            synchronized (IMLocationMonitor.class) {
                if (IMLocationMonitor.a == null) {
                    IMLocationMonitor.a = new IMLocationMonitor();
                }
                return IMLocationMonitor.a;
            }
        }
    }
    
    public Location getCurrentLocation() {
        return IMLocationMonitor.f;
    }
    
    public void onLocationChanged(final Location f) {
        synchronized (this) {
            IMLocationMonitor.f = f;
        }
    }
    
    public void onProviderDisabled(final String s) {
    }
    
    public void onProviderEnabled(final String s) {
    }
    
    public void onStatusChanged(final String s, final int n, final Bundle bundle) {
    }
    
    public void startListening(final Context context) {
        synchronized (this) {
            if (!IMLocationMonitor.g) {
                IMLocationMonitor.b = (LocationManager)context.getSystemService("location");
                if (IMLocationMonitor.b != null) {
                    IMLocationMonitor.e = IMLocationMonitor.b.getBestProvider(new Criteria(), true);
                    if (IMLocationMonitor.e != null) {
                        IMLocationMonitor.g = true;
                        IMLocationMonitor.b.requestLocationUpdates(IMLocationMonitor.e, 0L, 0.0f, (LocationListener)this);
                    }
                }
            }
        }
    }
    
    public void stopListening() {
        synchronized (this) {
            if (IMLocationMonitor.b != null && IMLocationMonitor.g) {
                IMLocationMonitor.b.removeUpdates((LocationListener)this);
                IMLocationMonitor.g = false;
            }
        }
    }
}
