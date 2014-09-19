package com.chartboost.sdk.impl;

import java.io.*;
import java.util.*;

public class as implements Serializable, Comparable<as>
{
    static final boolean a;
    final int b;
    final Date c;
    
    static {
        a = Boolean.getBoolean("DEBUG.DBTIMESTAMP");
    }
    
    public as() {
        super();
        this.b = 0;
        this.c = null;
    }
    
    public int a() {
        if (this.c == null) {
            return 0;
        }
        return (int)(this.c.getTime() / 1000L);
    }
    
    public int a(final as as) {
        if (this.a() != as.a()) {
            return this.a() - as.a();
        }
        return this.b() - as.b();
    }
    
    public int b() {
        return this.b;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o instanceof as) {
            final as as = (as)o;
            return this.a() == as.a() && this.b() == as.b();
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return 31 * (31 + this.b) + this.a();
    }
    
    @Override
    public String toString() {
        return "TS time:" + this.c + " inc:" + this.b;
    }
}
