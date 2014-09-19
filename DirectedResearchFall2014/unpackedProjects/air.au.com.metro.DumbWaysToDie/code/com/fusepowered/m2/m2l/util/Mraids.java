package com.fusepowered.m2.m2l.util;

import android.content.*;
import com.fusepowered.m2.m2l.*;
import android.net.*;
import android.os.*;

public class Mraids
{
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";
    
    public static boolean isCalendarAvailable(final Context context) {
        final Intent setType = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.item/event");
        return VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH) && Utils.deviceCanHandleIntent(context, setType);
    }
    
    public static boolean isInlineVideoAvailable(final Context context) {
        return Utils.deviceCanHandleIntent(context, new Intent(context, (Class)M2RvpActivity.class));
    }
    
    public static boolean isSmsAvailable(final Context context) {
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return Utils.deviceCanHandleIntent(context, intent);
    }
    
    public static boolean isStorePictureSupported(final Context context) {
        return "mounted".equals(Environment.getExternalStorageState()) && context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
    
    public static boolean isTelAvailable(final Context context) {
        final Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return Utils.deviceCanHandleIntent(context, intent);
    }
}
