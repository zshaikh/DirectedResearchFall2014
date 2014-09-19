package com.bitrhymes.nativeutils.localnotify;

import com.adobe.fre.*;
import android.util.*;
import com.bitrhymes.nativeutils.utils.*;
import android.app.*;
import java.util.*;
import android.content.*;

public class SetNotificationAfterHour implements FREFunction
{
    public static int notificationcount;
    public final String TAG;
    
    static {
        SetNotificationAfterHour.notificationcount = 0;
    }
    
    public SetNotificationAfterHour() {
        super();
        this.TAG = "SetNotificationAfterHour";
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            final String asString3 = array[2].getAsString();
            final String asString4 = array[3].getAsString();
            final String asString5 = array[4].getAsString();
            this.debugLog("SetNotificationAfterHour-> title:" + asString + ",tickerText:" + asString2 + ",message:" + asString3 + ",packageName:" + asString4 + ",hour:" + asString5);
            this.startAlarms(freContext.getActivity().getApplicationContext(), asString, asString2, asString3, asString4, asString5);
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public void debugLog(final String s) {
        Log.d("SetNotificationAfterHour", s);
    }
    
    public void startAlarms(final Context context, final String s, final String s2, final String s3, final String s4, final String s5) {
        Log.i("SetNotificationAfterHour", "******startAlarms*** SetNotificationAfterHour ***");
        AlarmReceiver.notificationcount = 0;
        final Intent intent = new Intent(context, (Class)AlarmReceiver.class);
        intent.setClass(context, (Class)AlarmReceiver.class);
        intent.putExtra("src_title", s);
        intent.putExtra("src_scroll", s2);
        intent.putExtra("src_text", s3);
        intent.putExtra("src_package", s4);
        final int int1 = Integer.parseInt(s5);
        final PendingIntent broadcast = PendingIntent.getBroadcast(context, Utils.requestCode1 + int1 * 10, intent, 134217728);
        final AlarmManager alarmManager = (AlarmManager)context.getSystemService("alarm");
        final Calendar instance = Calendar.getInstance();
        instance.add(10, int1);
        alarmManager.set(1, instance.getTimeInMillis(), broadcast);
        final SharedPreferences$Editor edit = context.getSharedPreferences("local-notification", 0).edit();
        edit.putBoolean(new StringBuilder().append(int1).toString(), false);
        edit.commit();
        Log.i("SetNotificationAfterHour", "***set alarm***");
    }
}
