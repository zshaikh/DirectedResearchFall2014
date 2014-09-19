package com.flurry.android;

import android.os.*;

final class l
{
    public static final int SDK_INT;
    
    static {
        SDK_INT = Integer.parseInt(Build$VERSION.SDK);
    }
}
