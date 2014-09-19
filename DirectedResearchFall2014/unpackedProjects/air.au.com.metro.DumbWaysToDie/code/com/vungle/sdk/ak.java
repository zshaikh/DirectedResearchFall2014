package com.vungle.sdk;

import android.os.*;

public abstract class ak implements Parcelable
{
    protected static boolean a(final int n) {
        return b(n) || n == 602 || n == 408;
    }
    
    protected static boolean b(final int n) {
        return n / 100 == 5;
    }
    
    public abstract void b(final ah p0, final aj p1, final am p2);
    
    public int describeContents() {
        return 0;
    }
}
