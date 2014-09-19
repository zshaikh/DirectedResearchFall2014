package com.AdX.tag;

import android.util.*;
import android.content.pm.*;
import java.util.*;
import android.content.*;

public class AdXAppTracker extends BroadcastReceiver
{
    final String AdX_PREFERENCE;
    final String REFERRAL_URL;
    
    public AdXAppTracker() {
        super();
        this.AdX_PREFERENCE = "AdXPrefrences";
        this.REFERRAL_URL = "InstallReferral";
    }
    
    private void pass_on_broadcast(final Context context, final Intent intent) {
        String string = "";
        try {
            final PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                final ActivityInfo receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, (Class)AdXAppTracker.class), 128);
                if (receiverInfo != null && receiverInfo.metaData != null) {
                    final Set keySet = receiverInfo.metaData.keySet();
                    if (keySet != null) {
                        for (final String s : (Set<String>)keySet) {
                            try {
                                string = receiverInfo.metaData.getString((String)s);
                                ((BroadcastReceiver)Class.forName(string).newInstance()).onReceive(context, intent);
                                Log.d("AdXAppTracker", "Successfully forwarded install notification to " + string);
                            }
                            catch (Exception ex) {
                                Log.w("AdXAppTracker", "Could not forward Market's INSTALL_REFERRER intent to " + string, (Throwable)ex);
                            }
                        }
                    }
                }
            }
        }
        catch (Exception ex2) {
            Log.w("AdXAppTracker", "Unhandled exception while forwarding install intents.  Possibly lost some install information.", (Throwable)ex2);
        }
    }
    
    public void onReceive(final Context context, final Intent intent) {
        Log.i("AdXAppTracker", "Received Referrral Intent");
        final String uri = intent.toURI();
        if (uri != null && uri.length() > 0) {
            final int index = uri.indexOf("referrer=");
            if (index > -1) {
                final String substring = uri.substring(index, uri.length() - 4);
                Log.i("AdXAppTracker", "Referral URI: " + substring);
                final SharedPreferences$Editor edit = context.getSharedPreferences("AdXPrefrences", 0).edit();
                edit.putString("InstallReferral", substring);
                edit.commit();
                Log.i("AdXAppTracker", "Cached Referral URI: " + substring);
            }
            else {
                Log.i("AdXAppTracker", "No Referral URL.");
            }
        }
        AdXConnect.doBroadcastConnectInstance(context);
        this.pass_on_broadcast(context, intent);
        Log.i("AdXAppTracker", "End");
    }
}
