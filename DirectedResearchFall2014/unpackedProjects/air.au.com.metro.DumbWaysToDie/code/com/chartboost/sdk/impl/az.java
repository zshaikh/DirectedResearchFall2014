package com.chartboost.sdk.impl;

import java.io.*;

public class az implements Serializable
{
    private final String a;
    
    public String a() {
        return this.a;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null) {
            return false;
        }
        String a;
        if (o instanceof az) {
            a = ((az)o).a;
        }
        else {
            if (!(o instanceof String)) {
                return false;
            }
            a = (String)o;
        }
        if (this.a != null) {
            if (this.a.equals(a)) {
                return true;
            }
        }
        else if (a == null) {
            return true;
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        if (this.a != null) {
            return this.a.hashCode();
        }
        return 0;
    }
    
    @Override
    public String toString() {
        return this.a;
    }
}
