package com.google.ads;

import com.google.ads.internal.*;
import android.app.*;
import android.preference.*;
import android.content.*;
import java.util.*;
import java.lang.ref.*;
import com.google.ads.util.*;
import android.text.*;
import android.database.*;

public final class at
{
    private static final com.google.ads.internal.a a;
    
    static {
        a = com.google.ads.internal.a.a.b();
    }
    
    public static void a(final Activity activity) {
        new Thread(new a(activity)).start();
    }
    
    public static boolean a(final Context context, final long n) {
        if (!a(context, n, PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()))) {
            return false;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                final SharedPreferences$Editor edit = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).edit();
                edit.putString("drt", "");
                edit.putLong("drt_ts", 0L);
                edit.commit();
            }
        }).start();
        return true;
    }
    
    static boolean a(final Context context, final long n, final SharedPreferences sharedPreferences) {
        return !sharedPreferences.contains("drt") || !sharedPreferences.contains("drt_ts") || sharedPreferences.getLong("drt_ts", 0L) < new Date().getTime() - n;
    }
    
    private static class a implements Runnable
    {
        private final WeakReference<Activity> a;
        private final SharedPreferences$Editor b;
        
        public a(final Activity activity) {
            this(activity, null);
        }
        
        a(final Activity referent, final SharedPreferences$Editor b) {
            super();
            this.a = new WeakReference<Activity>(referent);
            this.b = b;
        }
        
        private SharedPreferences$Editor a(final Context context) {
            if (this.b == null) {
                return PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext()).edit();
            }
            return this.b;
        }
        
        @Override
        public void run() {
        Label_0129_Outer:
            while (true) {
                while (true) {
                    SharedPreferences$Editor a = null;
                Label_0157:
                    while (true) {
                        try {
                            final Activity activity = this.a.get();
                            if (activity == null) {
                                com.google.ads.util.b.a("Activity was null while making a doritos cookie request.");
                                return;
                            }
                            final Cursor query = activity.getContentResolver().query(as.a, as.b, (String)null, (String[])null, (String)null);
                            if (query != null && query.moveToFirst() && query.getColumnNames().length > 0) {
                                final String string = query.getString(query.getColumnIndex(query.getColumnName(0)));
                                a = this.a((Context)activity);
                                if (!TextUtils.isEmpty((CharSequence)string)) {
                                    a.putString("drt", string);
                                    a.putLong("drt_ts", new Date().getTime());
                                    a.commit();
                                    return;
                                }
                                break Label_0157;
                            }
                        }
                        catch (Throwable t) {
                            com.google.ads.util.b.d("An unknown error occurred while sending a doritos request.", t);
                            return;
                        }
                        com.google.ads.util.b.a("Google+ app not installed, not storing doritos cookie");
                        final String string = null;
                        continue Label_0129_Outer;
                    }
                    a.putString("drt", "");
                    a.putLong("drt_ts", 0L);
                    continue;
                }
            }
        }
    }
}
