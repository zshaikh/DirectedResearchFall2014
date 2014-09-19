package com.applovin.impl.sdk;

import android.app.*;
import android.graphics.*;
import android.view.*;
import android.os.*;
import android.content.*;

public class j
{
    public static Point a(final Activity activity) {
        final Point point = new Point();
        point.x = 320;
        point.y = 240;
        try {
            final Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
            if (Build$VERSION.SDK_INT >= 13) {
                defaultDisplay.getSize(point);
                return point;
            }
            point.x = defaultDisplay.getWidth();
            point.y = defaultDisplay.getHeight();
            return point;
        }
        catch (Throwable t) {
            return point;
        }
    }
    
    static void a() {
        try {
            if (Build$VERSION.SDK_INT >= 9) {
                StrictMode.setThreadPolicy(new StrictMode$ThreadPolicy$Builder().permitAll().build());
            }
        }
        catch (Throwable t) {}
    }
    
    public static boolean a(final Class clazz, final Context context) {
        return context.getPackageManager().resolveActivity(new Intent(context, clazz), 0) != null;
    }
    
    public static boolean b() {
        return Build$VERSION.SDK_INT >= 15;
    }
}
