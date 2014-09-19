package com.vungle.sdk;

import android.util.*;

public final class r
{
    public static void a(final String s, final String s2, final Throwable t) {
        Log.e(s, s2, t);
        Log.getStackTraceString(t);
    }
    
    public static void a(final String s, final Throwable t) {
        Log.e(s, t.getMessage(), t);
    }
}
