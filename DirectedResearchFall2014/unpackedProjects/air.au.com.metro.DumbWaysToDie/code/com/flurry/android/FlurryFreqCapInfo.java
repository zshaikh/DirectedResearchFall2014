package com.flurry.android;

import java.io.*;

public class FlurryFreqCapInfo
{
    private String ef;
    private long eg;
    private long eh;
    private int ei;
    private int ej;
    private int ek;
    private int el;
    
    FlurryFreqCapInfo() {
        super();
    }
    
    FlurryFreqCapInfo(final DataInput dataInput) throws IOException {
        super();
        this.ef = dataInput.readUTF();
        this.eg = dataInput.readLong();
        this.eh = dataInput.readLong();
        this.ei = dataInput.readInt();
        this.ej = dataInput.readInt();
        this.ek = dataInput.readInt();
        this.el = dataInput.readInt();
    }
    
    FlurryFreqCapInfo(final String ef, final long eg, final long eh, final int ej, final int ek, final int el) {
        super();
        this.ef = ef;
        this.eg = eg;
        this.eh = eh;
        this.ej = ej;
        this.ek = ek;
        this.el = el;
        this.ei = 0;
    }
    
    final void a(final DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.ef);
        dataOutput.writeLong(this.eg);
        dataOutput.writeLong(this.eh);
        dataOutput.writeInt(this.ei);
        dataOutput.writeInt(this.ej);
        dataOutput.writeInt(this.ek);
        dataOutput.writeInt(this.el);
    }
    
    public FlurryFreqCapInfo getCopy() {
        final FlurryFreqCapInfo flurryFreqCapInfo = new FlurryFreqCapInfo(this.getIdHash(), this.getServeTime(), this.getExpirationTime(), this.getNewCap(), this.getPreviousCap(), this.getPreviousCapType());
        flurryFreqCapInfo.setViews(this.getViews());
        return flurryFreqCapInfo;
    }
    
    public long getExpirationTime() {
        return this.eh;
    }
    
    public String getIdHash() {
        return this.ef;
    }
    
    public int getNewCap() {
        return this.ej;
    }
    
    public int getPreviousCap() {
        return this.ek;
    }
    
    public int getPreviousCapType() {
        return this.el;
    }
    
    public long getServeTime() {
        return this.eg;
    }
    
    public int getViews() {
        return this.ei;
    }
    
    public void setIdHash(final String ef) {
        this.ef = ef;
    }
    
    public void setViews(final int ei) {
        this.ei = ei;
    }
    
    public void updateViews() {
        ++this.ei;
    }
}
