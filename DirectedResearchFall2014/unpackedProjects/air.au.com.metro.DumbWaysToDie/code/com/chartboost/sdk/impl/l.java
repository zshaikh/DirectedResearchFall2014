package com.chartboost.sdk.impl;

import com.chartboost.sdk.*;
import android.net.*;

public class l
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
}
