package com.chartboost.sdk.impl;

import java.nio.*;
import java.util.logging.*;

public class x extends ag
{
    static final Logger a;
    static final boolean b;
    public static final ByteOrder c;
    static final int d;
    static final ay e;
    
    static {
        a = Logger.getLogger("com.mongodb");
        b = Boolean.getBoolean("DEBUG.MONGO");
        if (x.a.getLevel() == null) {
            if (x.b) {
                x.a.setLevel(Level.ALL);
            }
            else {
                x.a.setLevel(Level.WARNING);
            }
        }
        c = ByteOrder.LITTLE_ENDIAN;
        d = Integer.parseInt(System.getProperty("MONGO.POOLSIZE", "10"));
        e = new ay(-1, -1, -1);
    }
}
