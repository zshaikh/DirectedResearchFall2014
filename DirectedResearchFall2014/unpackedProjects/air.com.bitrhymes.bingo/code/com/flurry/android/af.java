package com.flurry.android;

import java.util.*;

final class af
{
    final String bu;
    final Map<String, String> bv;
    final cw bw;
    
    af(final String bu, final Map<String, String> bv, final cw bw) {
        super();
        this.bu = bu;
        this.bv = bv;
        this.bw = bw;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("action=");
        sb.append(this.bu);
        sb.append(",params=");
        sb.append(this.bv);
        sb.append(",");
        sb.append(this.bw);
        return sb.toString();
    }
}
