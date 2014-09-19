package com.flurry.android;

import android.util.*;
import android.app.*;
import android.content.pm.*;

final class ax
{
    private static final String bA;
    private static final SparseArray<SparseIntArray> cp;
    
    static {
        bA = ax.class.getSimpleName();
        final SparseArray cp2 = new SparseArray();
        final int i = I();
        final SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(-1, i);
        sparseIntArray.put(2, i);
        sparseIntArray.put(3, i);
        sparseIntArray.put(4, i);
        sparseIntArray.put(1, 1);
        sparseIntArray.put(5, 5);
        sparseIntArray.put(7, 7);
        sparseIntArray.put(9, 9);
        sparseIntArray.put(10, 7);
        cp2.put(1, (Object)sparseIntArray);
        int n;
        if (l.SDK_INT >= 9) {
            n = 6;
        }
        else {
            n = 0;
        }
        final SparseIntArray sparseIntArray2 = new SparseIntArray();
        sparseIntArray2.put(-1, n);
        sparseIntArray2.put(2, n);
        sparseIntArray2.put(3, n);
        sparseIntArray2.put(4, n);
        sparseIntArray2.put(0, 0);
        sparseIntArray2.put(5, 5);
        sparseIntArray2.put(6, 6);
        sparseIntArray2.put(8, 8);
        sparseIntArray2.put(10, 6);
        cp2.put(2, (Object)sparseIntArray2);
        cp = cp2;
    }
    
    public static int I() {
        int n = 1;
        if (l.SDK_INT >= 9) {
            n = 7;
        }
        return n;
    }
    
    private static ActivityInfo a(final Activity activity) {
        if (activity == null) {
            return null;
        }
        try {
            return activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0);
        }
        catch (PackageManager$NameNotFoundException ex) {
            new StringBuilder().append("cannot find info for activity: ").append(activity.getComponentName()).toString();
            return null;
        }
    }
    
    public static void a(final Activity activity, final int requestedOrientation) {
        if (activity != null) {
            activity.setRequestedOrientation(requestedOrientation);
        }
    }
    
    public static boolean a(final Activity activity, final int i, final boolean b) {
        if (activity == null) {
            return false;
        }
        final ActivityInfo a = a(activity);
        int n;
        if (a == null) {
            n = 0;
        }
        else {
            final int configChanges = a.configChanges;
            if (a.applicationInfo.targetSdkVersion < 13) {
                n = (configChanges | 0xC00);
            }
            else {
                n = configChanges;
            }
        }
        int n2;
        if ((n & 0x80) == 0x0) {
            n2 = 0;
        }
        else if ((n & 0x400) == 0x0) {
            n2 = 0;
        }
        else {
            n2 = 1;
        }
        int value;
        if (n2 == 0) {
            if (activity == null) {
                value = -1;
            }
            else {
                final SparseIntArray sparseIntArray = (SparseIntArray)ax.cp.get(activity.getResources().getConfiguration().orientation);
                if (sparseIntArray != null) {
                    value = sparseIntArray.get(i, -1);
                }
                else {
                    value = -1;
                }
            }
            if (-1 == value) {
                new StringBuilder().append("cannot set requested orientation without restarting activity, requestedOrientation = ").append(i).toString();
                db.d(ax.bA, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: " + activity.getComponentName().getClassName());
                return false;
            }
        }
        else {
            value = i;
        }
        activity.setRequestedOrientation(value);
        return true;
    }
}
