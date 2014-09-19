package com.chartboost.sdk.Libraries;

import com.chartboost.sdk.impl.*;
import com.chartboost.sdk.*;
import android.provider.*;
import java.util.*;
import android.content.*;
import android.net.wifi.*;

public class c
{
    private static String a;
    
    static {
        c.a = null;
    }
    
    public static String a() {
        return b.b(c());
    }
    
    private static String b() {
        if (d.c()) {
            return null;
        }
        return b.b(b.a(f()));
    }
    
    private static byte[] c() {
        String anObject = d();
        if (anObject == null || "9774d56d682e549c".equals(anObject)) {
            anObject = e();
        }
        final String b = b();
        final ao ao = new ao();
        ao.a("uuid", anObject);
        ao.a("macid", b);
        return new an().a(ao);
    }
    
    private static String d() {
        if (d.c()) {
            return null;
        }
        return Settings$Secure.getString(Chartboost.sharedChartboost().getContext().getContentResolver(), "android_id");
    }
    
    private static String e() {
        if (c.a == null) {
            final SharedPreferences a = d.a();
            c.a = a.getString("cbUUID", (String)null);
            if (c.a == null) {
                c.a = UUID.randomUUID().toString();
                final SharedPreferences$Editor edit = a.edit();
                edit.putString("cbUUID", c.a);
                edit.commit();
            }
        }
        return c.a;
    }
    
    private static byte[] f() {
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
