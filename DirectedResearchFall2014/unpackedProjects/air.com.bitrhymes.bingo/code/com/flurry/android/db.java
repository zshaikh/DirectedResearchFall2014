package com.flurry.android;

import android.text.*;
import android.util.*;

final class db
{
    private static int fg;
    private static boolean fh;
    private static int fi;
    
    static {
        db.fg = 4000;
        db.fh = false;
        db.fi = 5;
    }
    
    private static void a(final int n, final String s, final String s2) {
        int i = 0;
        if (!db.fh && db.fi <= n) {
            int length;
            if (TextUtils.isEmpty((CharSequence)s2)) {
                length = 0;
            }
            else {
                length = s2.length();
                i = 0;
            }
            while (i < length) {
                int endIndex;
                if (db.fg > length - i) {
                    endIndex = length;
                }
                else {
                    endIndex = i + db.fg;
                }
                if (Log.println(n, s, s2.substring(i, endIndex)) <= 0) {
                    break;
                }
                i = endIndex;
            }
        }
    }
    
    static void a(final int n, final String s, final String str, final Throwable t) {
        new StringBuilder().append(str).append('\n').append(Log.getStackTraceString(t)).toString();
    }
    
    static void a(final String s, final String s2, final Throwable t) {
        b(3, s, s2, t);
    }
    
    static void aw() {
        db.fh = true;
    }
    
    static void ax() {
        db.fh = false;
    }
    
    private static void b(final int n, final String s, final String str, final Throwable t) {
        a(n, s, str + '\n' + Log.getStackTraceString(t));
    }
    
    static void b(final String s, final String s2, final Throwable t) {
        b(6, s, s2, t);
    }
    
    static void c(final String s, final String s2) {
        a(3, s, s2);
    }
    
    static void d(final String s, final String s2) {
        a(6, s, s2);
    }
    
    static void e(final String s, final String s2) {
        a(4, s, s2);
    }
    
    static void f(final String s, final String s2) {
        a(2, s, s2);
    }
    
    static void g(final String s, final String s2) {
        a(5, s, s2);
    }
    
    static void setLogLevel(final int fi) {
        db.fi = fi;
    }
}
