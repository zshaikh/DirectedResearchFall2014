package com.chartboost.sdk.impl;

import java.nio.*;
import java.util.logging.*;

public class z extends ai
{
    static final Logger a;
    static final boolean b;
    public static final ByteOrder c;
    static final int d;
    static final ba e;
    
    static {
        a = Logger.getLogger("com.mongodb");
        b = Boolean.getBoolean("DEBUG.MONGO");
        if (z.a.getLevel() == null) {
            if (z.b) {
                z.a.setLevel(Level.ALL);
            }
            else {
                z.a.setLevel(Level.WARNING);
            }
        }
        c = ByteOrder.LITTLE_ENDIAN;
        d = Integer.parseInt(System.getProperty("MONGO.POOLSIZE", "10"));
        e = new ba(-1, -1, -1);
    }
}
