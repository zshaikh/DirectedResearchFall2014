package com.fiksu.asotracking;

import android.content.*;
import android.app.*;

public class FiksuTrackingManager
{
    public static final String FIKSU_LOG_TAG = "FiksuTracking";
    
    public static void c2dMessageReceived(final Context context) {
        EventTracker.c2dMessageReceived(context);
    }
    
    public static String getClientId() {
        return FiksuDeviceSettingsManager.getInstance().getClientId();
    }
    
    public static void initialize(final Application application) {
        FiksuConfigurationManager.getInstance().initialize((Context)application);
        FiksuDeviceSettingsManager.getInstance().initialize((Context)application);
        new ForegroundTester(application, new LaunchEventTracker(application));
        InstallTracking.checkForFiksuReceiver((Context)application);
    }
    
    public static boolean isAppTrackingEnabled() {
        return FiksuDeviceSettingsManager.getInstance().isAppTrackingEnabled();
    }
    
    public static void promptForRating(final Activity activity) {
        new RatingPrompter(activity).maybeShowPrompt();
    }
    
    public static void setAppTrackingEnabled(final Context context, final boolean b) {
        FiksuDeviceSettingsManager.getInstance().setAppTrackingEnabled(context, b);
    }
    
    public static void setClientId(final Context context, final String s) {
        FiksuDeviceSettingsManager.getInstance().setClientId(context, s);
    }
    
    public static void setDebugModeEnabled(final boolean debugModeEnabled) {
        FiksuConfigurationManager.getInstance().setDebugModeEnabled(debugModeEnabled);
    }
    
    public static void uploadCustomEvent(final Context context) {
        new CustomEventTracker(context).uploadEvent();
    }
    
    public static void uploadPurchaseEvent(final Context context, final String s, final double d, final String s2) {
        new PurchaseEventTracker(context, s, d, s2).uploadEvent();
    }
    
    public static void uploadRegistrationEvent(final Context context, final String s) {
        new RegistrationEventTracker(context, s).uploadEvent();
    }
}
