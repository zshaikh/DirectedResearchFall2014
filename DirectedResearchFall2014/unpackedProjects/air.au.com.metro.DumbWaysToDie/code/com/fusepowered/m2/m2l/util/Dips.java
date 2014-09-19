package com.fusepowered.m2.m2l.util;

import android.content.*;
import android.util.*;

public class Dips
{
    public static float asFloatPixels(final float n, final Context context) {
        return TypedValue.applyDimension(1, n, context.getResources().getDisplayMetrics());
    }
    
    public static int asIntPixels(final float n, final Context context) {
        return (int)(0.5f + asFloatPixels(n, context));
    }
}
