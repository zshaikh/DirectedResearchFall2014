package com.adobe.air;

import android.content.*;
import android.graphics.*;
import android.view.*;
import android.os.*;
import java.util.*;
import android.util.*;

public class SystemCapabilities
{
    public static int GetBitsPerPixel(final Context context) {
        final Display defaultDisplay = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        final PixelFormat pixelFormat = new PixelFormat();
        PixelFormat.getPixelFormatInfo(defaultDisplay.getPixelFormat(), pixelFormat);
        return pixelFormat.bitsPerPixel;
    }
    
    public static int GetScreenDPI(final Context context) {
        final String[] array = { "SCH-I800", "SPH-P100", "SC-01C", "GT-P1000", "GT-P1010", "GT-P1000R", "GT-P1000M", "SHW-M180W", "SHW-M180L", "SHW-M180K", "SHW-M180S", "SGH-I987", "SGH-t849" };
        final String model = Build.MODEL;
        Arrays.sort(array);
        if (Arrays.binarySearch(array, model) >= 0) {
            return 160;
        }
        final WindowManager windowManager = (WindowManager)context.getSystemService("window");
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.densityDpi;
    }
    
    public static int GetScreenHRes(final Context context) {
        final WindowManager windowManager = (WindowManager)context.getSystemService("window");
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }
    
    public static int GetScreenVRes(final Context context) {
        final WindowManager windowManager = (WindowManager)context.getSystemService("window");
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }
    
    public static boolean HasTrackBall(final Context context) {
        return context.getResources().getConfiguration().navigation == 3;
    }
}
