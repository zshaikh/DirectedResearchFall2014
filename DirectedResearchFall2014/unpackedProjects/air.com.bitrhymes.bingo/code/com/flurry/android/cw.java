package com.flurry.android;

import android.content.*;
import java.util.*;

final class cw
{
    final Context J;
    final cz L;
    final AdUnit M;
    final Map<String, String> bv;
    final String eW;
    final int eX;
    
    cw(final String ew, final Map<String, String> bv, final Context j, final AdUnit m, final cz l, final int ex) {
        super();
        this.eW = ew;
        this.bv = bv;
        this.J = j;
        this.M = m;
        this.L = l;
        this.eX = ex;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("event=").append(this.eW);
        sb.append(",params=").append(this.bv);
        sb.append(",adspace=").append(this.M.getAdSpace());
        return sb.toString();
    }
}
