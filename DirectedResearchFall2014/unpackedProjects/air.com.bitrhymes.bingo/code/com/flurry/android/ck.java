package com.flurry.android;

import android.content.*;
import android.view.*;

abstract class ck
{
    private ck(final byte b) {
        super();
    }
    
    public abstract ViewGroup$LayoutParams a(final Context p0, final AdSpaceLayout p1);
    
    public final int b(final Context context, final AdSpaceLayout adSpaceLayout) {
        int n;
        if (adSpaceLayout.getAdWidth() != 0) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            return bd.b(context, adSpaceLayout.getAdWidth());
        }
        return -1;
    }
    
    public final int c(final Context context, final AdSpaceLayout adSpaceLayout) {
        int n;
        if (adSpaceLayout.getAdHeight() != 0) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            return bd.b(context, adSpaceLayout.getAdHeight());
        }
        return this.l();
    }
    
    public int l() {
        return -2;
    }
}
