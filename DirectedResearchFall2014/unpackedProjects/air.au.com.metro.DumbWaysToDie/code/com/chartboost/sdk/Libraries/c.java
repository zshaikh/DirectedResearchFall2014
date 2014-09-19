package com.chartboost.sdk.Libraries;

import com.chartboost.sdk.impl.*;
import com.chartboost.sdk.*;
import android.provider.*;
import android.net.wifi.*;

public class c
{
    public static String a() {
        return b.b(c());
    }
    
    private static String b() {
        if (d.c()) {
            return null;
        }
        return b.b(b.a(e()));
    }
    
    private static byte[] c() {
        final String d = d();
        final String b = b();
        final am am = new am();
        am.a("uuid", d);
        am.a("macid", b);
        return new al().a(am);
    }
    
    private static String d() {
        if (d.c()) {
            return null;
        }
        return Settings$Secure.getString(Chartboost.sharedChartboost().getContext().getContentResolver(), "android_id");
    }
    
    private static byte[] e() {
        try {
            final String macAddress = ((WifiManager)Chartboost.sharedChartboost().getContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress != null) {
                if (!macAddress.equals("")) {
                    final String[] split = macAddress.split(":");
                    final byte[] array = new byte[6];
                    for (int i = 0; i < split.length; ++i) {
                        array[i] = (byte)(Object)Integer.valueOf(Integer.parseInt(split[i], 16));
                    }
                    return array;
                }
            }
        }
        catch (Exception ex) {
            return null;
        }
        return null;
    }
}
