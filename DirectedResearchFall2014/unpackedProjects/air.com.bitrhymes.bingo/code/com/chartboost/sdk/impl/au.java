package com.chartboost.sdk.impl;

import java.io.*;
import java.util.*;

public class au implements Serializable, Comparable<au>
{
    static final boolean a;
    final int b;
    final Date c;
    
    static {
        a = Boolean.getBoolean("DEBUG.DBTIMESTAMP");
    }
    
    public au() {
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
    
    public int a(final au au) {
        if (this.a() != au.a()) {
            return this.a() - au.a();
        }
        return this.b() - au.b();
    }
    
    public int b() {
        return this.b;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (o instanceof au) {
            final au au = (au)o;
            return this.a() == au.a() && this.b() == au.b();
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
