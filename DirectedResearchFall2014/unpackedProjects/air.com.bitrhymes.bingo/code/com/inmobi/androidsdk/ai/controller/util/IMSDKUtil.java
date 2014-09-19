package com.inmobi.androidsdk.ai.controller.util;

import android.app.*;
import com.inmobi.commons.*;
import android.util.*;
import com.inmobi.androidsdk.*;
import android.content.*;
import android.content.pm.*;
import android.os.*;
import java.util.*;

public class IMSDKUtil
{
    public static final String BROWSER_ACTIVITY = "com.inmobi.androidsdk.IMBrowserActivity";
    public static final long DEFAULT_SLOTID = -1L;
    
    public static Activity getRootActivity(final Activity activity) {
        Activity parent;
        for (parent = activity; parent.getParent() != null; parent = parent.getParent()) {}
        return parent;
    }
    
    public static void validateAdConfiguration(final Context context) throws IMConfigException {
        if (!IMCommonUtil.getReleaseVersion().equalsIgnoreCase("3.6.1")) {
            Log.e("InMobiAndroidSDK_3.6.2", "Please take the latest version of IMCommons");
            throw new RuntimeException("Please take the latest version of IMCommons");
        }
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            Log.e("InMobiAndroidSDK_3.6.2", "App does not have INTERNET permissions. Please provide INTERNET permissions");
            throw new IMConfigException(-1);
        }
        while (true) {
            for (final ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(new Intent(context, (Class)IMBrowserActivity.class), 65536)) {
                if (resolveInfo.activityInfo.name.contentEquals("com.inmobi.androidsdk.IMBrowserActivity")) {
                    final ResolveInfo resolveInfo2 = resolveInfo;
                    if (resolveInfo2 == null) {
                        Log.e("InMobiAndroidSDK_3.6.2", "IMBrowserActivity not declared in the manifest. Please declare it in the app manifest");
                        throw new IMConfigException(-2);
                    }
                    final int configChanges = resolveInfo2.activityInfo.configChanges;
                    if (configChanges == 0) {
                        Log.e("InMobiAndroidSDK_3.6.2", "IMBrowserActivity in the manifest does not have android:configChanges attributes.Please add android:configChanges=keyboardHidden|orientation|keyboard|screenSize|smallestScreenSize to IMBrowserActivity in the app manifest");
                        throw new IMConfigException(-3);
                    }
                    if ((configChanges & 0x10) == 0x0) {
                        Log.e("InMobiAndroidSDK_3.6.2", "Missing Config keyboard from android:configChangesof IMBRowserActivity");
                        throw new IMConfigException(-4);
                    }
                    if ((configChanges & 0x20) == 0x0) {
                        Log.e("InMobiAndroidSDK_3.6.2", "Missing Config keyboardHidden from android:configChangesof IMBRowserActivity");
                        throw new IMConfigException(-5);
                    }
                    if ((configChanges & 0x80) == 0x0) {
                        Log.e("InMobiAndroidSDK_3.6.2", "Missing Config orientation from android:configChangesof IMBRowserActivity");
                        throw new IMConfigException(-6);
                    }
                    if (Build$VERSION.SDK_INT >= 13) {
                        if ((configChanges & 0x400) == 0x0) {
                            Log.e("InMobiAndroidSDK_3.6.2", "Missing Config screenSize from android:configChangesof IMBRowserActivity");
                            throw new IMConfigException(-7);
                        }
                        if ((configChanges & 0x800) == 0x0) {
                            Log.e("InMobiAndroidSDK_3.6.2", "Missing Config smallestScreenSize from android:configChanges of IMBRowserActivity");
                            throw new IMConfigException(-8);
                        }
                    }
                    return;
                }
            }
            final ResolveInfo resolveInfo2 = null;
            continue;
        }
    }
    
    public static void validateAppID(final String s) {
        if (s == null) {
            throw new NullPointerException("APP ID cannot be null");
        }
        if (s.trim().equalsIgnoreCase("")) {
            throw new IllegalArgumentException("APP ID cannot be empty.Please provide a valid APP ID. If APP ID is declared in the layout XML, please provide a valid 'appId' attribute in the 'com.inmobi.androidsdk.IMAdView' tag of layout XML. For example, appId=\"yourAppId\"");
        }
    }
}
