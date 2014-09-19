package com.bitrhymes.nativeutils;

import com.google.android.gcm.*;
import com.bitrhymes.nativeutils.utils.*;
import android.util.*;
import java.io.*;
import com.adobe.fre.*;
import android.content.*;
import android.widget.*;
import android.app.*;
import android.content.pm.*;
import android.os.*;

public class GCMIntentService extends GCMBaseIntentService
{
    public static String TAG;
    
    static {
        GCMIntentService.TAG = "GCMIntentService";
    }
    
    public GCMIntentService() {
        super(new String[] { Utils.PUSH_SENDER_ID });
        Log.d("GCMIntentService", "blank constructor");
    }
    
    public GCMIntentService(final String s) {
        super(new String[] { s });
        Log.d("GCMIntentService", s);
    }
    
    public static int getResourseIdByName(final String obj, final String anObject, final String name) {
        int i = 0;
        int int1;
        try {
            while (i < Class.forName(String.valueOf(obj) + ".R").getClasses().length) {
                if (Class.forName(String.valueOf(obj) + ".R").getClasses()[i].getName().split("\\$")[1].equals(anObject)) {
                    final Class<?> clazz = Class.forName(String.valueOf(obj) + ".R").getClasses()[i];
                    int1 = 0;
                    if (clazz != null) {
                        int1 = Class.forName(String.valueOf(obj) + ".R").getClasses()[i].getField(name).getInt(Class.forName(String.valueOf(obj) + ".R").getClasses()[i]);
                        return int1;
                    }
                    return int1;
                }
                else {
                    ++i;
                }
            }
            int1 = 0;
        }
        catch (Exception ex) {
            return -1;
        }
        return int1;
    }
    
    private void writeData(String str) {
        if (str == null) {
            str = "";
        }
        try {
            Log.i(GCMIntentService.TAG, " track msg : writeData ");
            final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.openFileOutput("bgpush.txt", 0));
            outputStreamWriter.write(str);
            outputStreamWriter.flush();
            outputStreamWriter.close();
        }
        catch (FileNotFoundException ex) {
            ex.printStackTrace();
        }
        catch (IOException ex2) {
            ex2.printStackTrace();
        }
    }
    
    public void onCreate() {
        Log.d("GCMIntentService", " ServiceClassName  onCreate ");
        super.onCreate();
    }
    
    public void onError(final Context context, final String str) {
        Log.d("GCMIntentService", "sending error-" + str);
        final FREContext freContext = NativeUtilsContext.getFreContext();
        if (freContext == null) {
            return;
        }
        try {
            freContext.dispatchStatusEventAsync("PUSH_ON_ERROR", str);
        }
        catch (Exception ex) {
            Log.e("GCMIntentService", "Error in push--" + ex.getMessage());
        }
    }
    
    public void onMessage(final Context context, final Intent intent) {
        Log.d("GCMIntentService", "sending onMessage-" + intent.getExtras().toString());
        final PackageManager packageManager = context.getPackageManager();
        try {
            final int icon = packageManager.getApplicationInfo(context.getPackageName(), 128).icon;
            final Bundle extras = intent.getExtras();
            final String string = extras.getString("Text");
            final String string2 = extras.getString("Track");
            Log.i(GCMIntentService.TAG, " track msg : " + string2);
            this.writeData(string2);
            final NotificationManager notificationManager = (NotificationManager)context.getSystemService("notification");
            final Notification notification = new Notification(icon, (CharSequence)string, System.currentTimeMillis());
            final RemoteViews contentView = new RemoteViews(context.getPackageName(), getResourseIdByName(context.getPackageName(), "layout", "custom_notification_layout"));
            contentView.setImageViewResource(getResourseIdByName(context.getPackageName(), "id", "notImg"), icon);
            contentView.setTextViewText(getResourseIdByName(context.getPackageName(), "id", "notTxt"), (CharSequence)string);
            notification.contentView = contentView;
            new Intent("android.intent.action.MAIN");
            final Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(context.getPackageName());
            if (launchIntentForPackage == null) {
                Log.d("GCMIntentService", "Package intent not found. Please make sure that the package is specified correctly.");
                return;
            }
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
            notification.contentIntent = PendingIntent.getActivity(context, 0, launchIntentForPackage, 0);
            notification.flags |= 0x10;
            notification.number = 1;
            notification.defaults = 1;
            notificationManager.notify(0, notification);
        }
        catch (Exception ex) {
            Log.d("GCMIntentService", "Error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }
    
    public boolean onRecoverableError(final Context context, final String str) {
        Log.d("GCMIntentService", "sending errorId-" + str);
        final FREContext freContext = NativeUtilsContext.getFreContext();
        if (freContext == null) {
            return true;
        }
        try {
            freContext.dispatchStatusEventAsync("PUSH_ON_REC_ERROR", str);
            return true;
        }
        catch (Exception ex) {
            Log.e("GCMIntentService", "Error in push--" + ex.getMessage());
            return true;
        }
    }
    
    public void onRegistered(final Context context, final String s) {
        Log.i("GCMIntentService", "sending onRegistered push reg id-" + s);
        try {
            final FREContext freContext = NativeUtilsContext.getFreContext();
            if (freContext != null) {
                freContext.dispatchStatusEventAsync("PUSH_REG_ID_EVENT", "success," + s);
            }
        }
        catch (Exception ex) {
            Log.e("GCMIntentService", "Error in push--" + ex.getMessage());
        }
    }
    
    public void onUnregistered(final Context context, final String s) {
        Log.d("GCMIntentService", "sending onUnregistered push reg id-" + s);
        try {
            final FREContext freContext = NativeUtilsContext.getFreContext();
            if (freContext != null) {
                freContext.dispatchStatusEventAsync("PUSH_UNREG_ID_EVENT", "success," + s);
            }
        }
        catch (Exception ex) {
            Log.e("GCMIntentService", "Error in push--" + ex.getMessage());
        }
    }
}
