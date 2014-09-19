package com.freshplanet.ane.AirChartboost;

import com.adobe.fre.*;
import android.util.*;

public class AirChartboostExtension implements FREExtension
{
    private static Boolean PRINT_LOG;
    private static String TAG;
    public static FREContext context;
    
    static {
        AirChartboostExtension.TAG = "AirChartboost";
        AirChartboostExtension.PRINT_LOG = true;
    }
    
    public static void log(final String s) {
        if (AirChartboostExtension.PRINT_LOG) {
            Log.d(AirChartboostExtension.TAG, s);
        }
        AirChartboostExtension.context.dispatchStatusEventAsync("LOGGING", s);
    }
    
    @Override
    public FREContext createContext(final String s) {
        return AirChartboostExtension.context = new AirChartboostExtensionContext();
    }
    
    @Override
    public void dispose() {
        AirChartboostExtension.context = null;
    }
    
    @Override
    public void initialize() {
    }
}
