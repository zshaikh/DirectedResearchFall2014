package com.chartboost.sdk.impl;

import java.io.*;

public class aw implements Serializable
{
    final String a;
    
    public String a() {
        return this.a;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o instanceof aw && this.a.equals(((aw)o).a);
    }
    
    @Override
    public int hashCode() {
        return this.a.hashCode();
    }
    
    @Override
    public String toString() {
        return this.a();
    }
}
