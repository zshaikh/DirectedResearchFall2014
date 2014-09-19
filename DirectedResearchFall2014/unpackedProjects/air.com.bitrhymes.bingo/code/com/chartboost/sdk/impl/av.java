package com.chartboost.sdk.impl;

import java.io.*;
import java.util.*;

public class av implements Serializable
{
    final byte a;
    final byte[] b;
    
    public byte a() {
        return this.a;
    }
    
    public byte[] b() {
        return this.b;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof av)) {
            return false;
        }
        final av av = (av)o;
        return this.a == av.a && Arrays.equals(this.b, av.b);
    }
    
    @Override
    public int hashCode() {
        final byte b = (byte)(31 * this.a);
        int hashCode;
        if (this.b != null) {
            hashCode = Arrays.hashCode(this.b);
        }
        else {
            hashCode = 0;
        }
        return b + hashCode;
    }
}
