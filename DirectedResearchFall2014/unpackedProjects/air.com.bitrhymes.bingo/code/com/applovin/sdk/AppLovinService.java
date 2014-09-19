package com.applovin.sdk;

import android.app.*;
import android.content.*;
import android.os.*;

public class AppLovinService extends Service
{
    public IBinder onBind(final Intent intent) {
        return (IBinder)new AppLovinService$LocalBinder();
    }
    
    public void onCreate() {
        super.onCreate();
        AppLovinSdk.getInstance(this.getApplicationContext());
    }
}
