package com.flurry.android;

import android.content.*;
import android.view.*;

abstract class bf
{
    private final String H;
    private final AdUnit M;
    
    public bf(final AdUnit m) {
        super();
        this.M = m;
        String string;
        if (m != null) {
            string = m.getAdSpace().toString();
        }
        else {
            string = null;
        }
        this.H = string;
    }
    
    public final AdUnit E() {
        return this.M;
    }
    
    public final String Y() {
        return this.H;
    }
    
    public abstract void a(final Context p0, final ViewGroup p1);
}
