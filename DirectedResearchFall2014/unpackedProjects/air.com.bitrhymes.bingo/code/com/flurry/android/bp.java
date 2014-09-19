package com.flurry.android;

import android.content.*;
import android.os.*;
import android.content.pm.*;

final class bp
{
    private static final String d;
    
    static {
        d = bp.class.getSimpleName();
    }
    
    public static Bundle p(final Context context) {
        ApplicationInfo applicationInfo = null;
        while (true) {
            if (context != null) {
                try {
                    applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    if (applicationInfo != null && applicationInfo.metaData != null) {
                        return applicationInfo.metaData;
                    }
                }
                catch (PackageManager$NameNotFoundException ex) {
                    db.c(bp.d, "Cannot find meta data for package: " + context.getPackageName());
                    applicationInfo = null;
                    continue;
                }
                return Bundle.EMPTY;
            }
            continue;
        }
    }
}
