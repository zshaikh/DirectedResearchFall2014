package com.google.ads.util;

import android.annotation.*;
import android.util.*;
import android.content.*;

@TargetApi(4)
public final class e
{
    private static int a(final Context context, final float n, final int n2) {
        if ((0x2000 & context.getApplicationInfo().flags) != 0x0) {
            return (int)(n2 / n);
        }
        return n2;
    }
    
    public static int a(final Context context, final DisplayMetrics displayMetrics) {
        return a(context, displayMetrics.density, displayMetrics.heightPixels);
    }
    
    public static void a(final Intent intent, final String package1) {
        intent.setPackage(package1);
    }
    
    public static int b(final Context context, final DisplayMetrics displayMetrics) {
        return a(context, displayMetrics.density, displayMetrics.widthPixels);
    }
}
