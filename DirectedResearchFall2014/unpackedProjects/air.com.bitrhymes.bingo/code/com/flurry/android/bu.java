package com.flurry.android;

import java.io.*;
import java.util.*;

final class bu
{
    private static List<String> dX;
    private final Map<String, String> bv;
    private final String dY;
    private final boolean dZ;
    private final long ea;
    
    static {
        bu.dX = Arrays.asList("requested", "filled", "unfilled", "rendered", "clicked", "videoStart", "videoCompleted", "videoProgressed", "sentToUrl", "adClosed", "adWillClose", "renderFailed", "requestAdComponents", "urlVerified", "capExhausted", "capNotExhausted");
    }
    
    bu(final DataInput dataInput) throws IOException {
        super();
        this.dY = dataInput.readUTF();
        this.dZ = dataInput.readBoolean();
        this.ea = dataInput.readLong();
        this.bv = new HashMap<String, String>();
        for (short short1 = dataInput.readShort(), n = 0; n < short1; ++n) {
            this.bv.put(dataInput.readUTF(), dataInput.readUTF());
        }
    }
    
    bu(final String s, final boolean dz, final long ea, final Map<String, String> bv) {
        super();
        if (!bu.dX.contains(s)) {
            db.c("FlurryAgent", "AdEvent initialized with unrecognized type: " + s);
        }
        this.dY = s;
        this.dZ = dz;
        this.ea = ea;
        if (bv == null) {
            this.bv = new HashMap<String, String>();
            return;
        }
        this.bv = bv;
    }
    
    final long M() {
        return this.ea;
    }
    
    final void a(final DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.dY);
        dataOutput.writeBoolean(this.dZ);
        dataOutput.writeLong(this.ea);
        dataOutput.writeShort(this.bv.size());
        for (final Map.Entry<String, String> entry : this.bv.entrySet()) {
            dataOutput.writeUTF(entry.getKey());
            dataOutput.writeUTF(entry.getValue());
        }
    }
    
    final boolean ai() {
        return this.dZ;
    }
    
    final Map<String, String> getParams() {
        return this.bv;
    }
    
    final String getType() {
        return this.dY;
    }
}
