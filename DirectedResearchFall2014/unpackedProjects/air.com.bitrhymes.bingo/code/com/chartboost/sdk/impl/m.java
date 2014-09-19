package com.chartboost.sdk.impl;

import com.chartboost.sdk.*;
import android.net.*;

public class m
{
    public static boolean a() {
        try {
            final ConnectivityManager connectivityManager = (ConnectivityManager)Chartboost.sharedChartboost().getContext().getSystemService("connectivity");
            if (connectivityManager != null) {
                final NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                    return true;
                }
            }
            return false;
        }
        catch (Exception ex) {
            return true;
        }
    }
    
    public static int b() {
        try {
            final ConnectivityManager connectivityManager = (ConnectivityManager)Chartboost.sharedChartboost().getContext().getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            final NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
                return 0;
            }
            if (activeNetworkInfo.getType() == 1) {
                return 1;
            }
            return 2;
        }
        catch (Exception ex) {
            return -1;
        }
    }
}
