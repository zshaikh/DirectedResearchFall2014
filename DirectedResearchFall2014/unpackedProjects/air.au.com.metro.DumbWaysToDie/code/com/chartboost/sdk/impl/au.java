package com.chartboost.sdk.impl;

import java.io.*;

public class au implements Serializable
{
    final String a;
    
    public String a() {
        return this.a;
    }
    
    @Override
    public boolean equals(final Object o) {
        return o instanceof au && this.a.equals(((au)o).a);
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
