package com.flurry.android;

import java.util.*;
import android.content.*;
import android.view.*;
import android.widget.*;

final class ad extends ck
{
    private static final Map<String, Integer> at;
    
    static {
        final HashMap<String, Integer> m = new HashMap<String, Integer>();
        m.put("b", 12);
        m.put("t", 10);
        m.put("m", 15);
        m.put("c", 14);
        m.put("l", 9);
        m.put("r", 11);
        at = Collections.unmodifiableMap((Map<?, ?>)m);
    }
    
    private static Integer d(final String s) {
        return ad.at.get(s);
    }
    
    @Override
    public final ViewGroup$LayoutParams a(final Context context, final AdSpaceLayout adSpaceLayout) {
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(this.b(context, adSpaceLayout), this.c(context, adSpaceLayout));
        final String[] split = adSpaceLayout.getAlignment().toString().split("-");
        if (split.length == 2) {
            final Integer d = d(split[0]);
            if (d != null) {
                relativeLayout$LayoutParams.addRule((int)d);
            }
            final Integer d2 = d(split[1]);
            if (d2 != null) {
                relativeLayout$LayoutParams.addRule((int)d2);
            }
        }
        return (ViewGroup$LayoutParams)relativeLayout$LayoutParams;
    }
    
    @Override
    public final int l() {
        return -1;
    }
}
