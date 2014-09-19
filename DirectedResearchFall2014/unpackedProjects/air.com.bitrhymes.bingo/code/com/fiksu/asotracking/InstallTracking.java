package com.fiksu.asotracking;

import android.util.*;
import android.content.*;
import java.util.*;
import android.content.pm.*;
import android.os.*;
import java.net.*;

public class InstallTracking extends BroadcastReceiver
{
    private static final String FIKSU_RECEIVER = "com.fiksu.asotracking.InstallTracking";
    private static final String INTENT_NAME = "com.android.vending.INSTALL_REFERRER";
    private static final long MAX_BLOCK_MS = 3000L;
    
    protected static void checkForFiksuReceiver(final Context context) {
        final List<String> receiversFromManifest = readReceiversFromManifest(context);
        if (receiversFromManifest.size() == 0 || !receiversFromManifest.get(0).equals("com.fiksu.asotracking.InstallTracking")) {
            String str;
            if (receiversFromManifest.size() > 0) {
                str = receiversFromManifest.get(0);
            }
            else {
                str = "NONE";
            }
            Log.e("FiksuTracking", "THE FIKSU INSTALL TRACKING CODE ISN'T INSTALLED CORRECTLY!");
            Log.e("FiksuTracking", "Unexpected receiver: " + str);
            throw new FiksuIntegrationError("The Fiksu BroadcastReceiver must be installed as the only receiver for the INSTALL_REFERRER Intent in AndroidManifest.xml.");
        }
        if (receiversFromManifest.size() > 1) {
            Log.e("FiksuTracking", "THE FIKSU INSTALL TRACKING CODE ISN'T INSTALLED CORRECTLY!");
            Log.e("FiksuTracking", "Multiple receivers declared for: com.android.vending.INSTALL_REFERRER");
            throw new FiksuIntegrationError("Multiple receivers declared for: com.android.vending.INSTALL_REFERRER");
        }
    }
    
    protected static List<String> readReceiversFromManifest(final Context context) {
        final ArrayList<String> list = new ArrayList<String>();
        final PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            final Intent intent = new Intent("com.android.vending.INSTALL_REFERRER");
            intent.setPackage(context.getPackageName());
            final List queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
            if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() != 0) {
                for (final ResolveInfo resolveInfo : queryBroadcastReceivers) {
                    if (resolveInfo != null && resolveInfo.activityInfo != null && resolveInfo.activityInfo.name != null) {
                        list.add(resolveInfo.activityInfo.name);
                    }
                }
            }
        }
        return list;
    }
    
    protected static List<String> readTargetsFromMetaData(final Context context) {
        final ArrayList<String> list = new ArrayList<String>();
        final PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            Log.e("FiksuTracking", "Couldn't get PackageManager.");
        }
        else {
            ActivityInfo receiverInfo;
            try {
                receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, (Class)InstallTracking.class), 128);
                if (receiverInfo == null || receiverInfo.metaData == null || receiverInfo.metaData.keySet() == null) {
                    Log.d("FiksuTracking", "No forwarding metadata.");
                    return list;
                }
            }
            catch (PackageManager$NameNotFoundException ex) {
                Log.e("FiksuTracking", "Couldn't get info for receivers.");
                return list;
            }
            final Bundle metaData = receiverInfo.metaData;
            final ArrayList list2 = new ArrayList<String>(metaData.keySet());
            Collections.sort((List<Comparable>)list2);
            for (final String s : list2) {
                if (s.startsWith("forward.")) {
                    if (metaData.getString(s) == null || metaData.getString(s).trim().equals("")) {
                        Log.e("FiksuTracking", "Couldn't parse receiver from metadata.");
                    }
                    else {
                        list.add(metaData.getString(s).trim());
                    }
                }
            }
        }
        return list;
    }
    
    protected void forwardToOtherReceivers(final Context context, final Intent intent) {
        final List<String> targetsFromMetaData = readTargetsFromMetaData(context);
        final ArrayList<String> list = new ArrayList<String>();
        final Iterator<String> iterator = targetsFromMetaData.iterator();
        while (iterator.hasNext()) {
            final String s = iterator.next();
            if (s.equals("com.fiksu.asotracking.InstallTracking")) {
                iterator.remove();
            }
            if (s.startsWith("getjar.")) {
                list.add(0, s);
                iterator.remove();
            }
        }
        final Iterator<String> iterator2 = targetsFromMetaData.iterator();
        while (iterator2.hasNext()) {
            this.forwardToReceiver(context, intent, iterator2.next());
        }
        final Iterator<Object> iterator3 = list.iterator();
        while (iterator3.hasNext()) {
            this.forwardToReceiver(context, intent, iterator3.next());
        }
    }
    
    protected void forwardToReceiver(final Context context, final Intent intent, final String s) {
        try {
            ((BroadcastReceiver)Class.forName(s).newInstance()).onReceive(context, intent);
            Log.d("FiksuTracking", "Forwarded to: " + s);
        }
        catch (ClassNotFoundException ex2) {
            Log.e("FiksuTracking", "Forward failed, couldn't load class: " + s);
        }
        catch (Exception ex) {
            Log.e("FiksuTracking", "Forwarding to " + s + " failed:", (Throwable)ex);
        }
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.uploadConversionEvent(context, intent);
        this.forwardToOtherReceivers(context, intent);
    }
    
    protected void uploadConversionEvent(final Context context, final Intent intent) {
        try {
            final String stringExtra = intent.getStringExtra("referrer");
            String decode;
            if (stringExtra != null) {
                decode = URLDecoder.decode(stringExtra, "UTF-8");
            }
            else {
                decode = "";
            }
            new ConversionEventTracker(context, decode).uploadEventSynchronously(3000L);
        }
        catch (Exception ex) {
            Log.e("FiksuTracking", "Unhandled exception processing intent.", (Throwable)ex);
        }
    }
}
