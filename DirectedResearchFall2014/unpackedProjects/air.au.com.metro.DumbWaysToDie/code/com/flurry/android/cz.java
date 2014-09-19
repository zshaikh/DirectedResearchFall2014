package com.flurry.android;

import java.io.*;
import java.util.*;

final class cz
{
    private static int fb;
    private final int fc;
    private final long fd;
    private final String fe;
    private List<bu> ff;
    
    static {
        cz.fb = 1;
    }
    
    cz(final long fd, final String fe) {
        super();
        final int fb = cz.fb;
        cz.fb = fb + 1;
        this.fc = fb;
        this.fd = fd;
        this.fe = fe;
        this.ff = new ArrayList<bu>();
    }
    
    cz(final DataInput dataInput) throws IOException {
        super();
        this.fc = dataInput.readInt();
        this.fd = dataInput.readLong();
        this.fe = dataInput.readUTF();
        this.ff = new ArrayList<bu>();
        for (short short1 = dataInput.readShort(), n = 0; n < short1; ++n) {
            this.ff.add(new bu(dataInput));
        }
    }
    
    final void a(final bu bu) {
        this.ff.add(bu);
    }
    
    final void a(final DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(this.fc);
        dataOutput.writeLong(this.fd);
        dataOutput.writeUTF(this.fe);
        dataOutput.writeShort(this.ff.size());
        final Iterator<bu> iterator = this.ff.iterator();
        while (iterator.hasNext()) {
            iterator.next().a(dataOutput);
        }
    }
    
    final String at() {
        return this.fe;
    }
    
    final long au() {
        return this.fd;
    }
    
    final List<bu> av() {
        return this.ff;
    }
    
    final int getIndex() {
        return this.fc;
    }
}
