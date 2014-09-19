package com.flurry.org.apache.avro.io;

import com.flurry.org.apache.avro.*;
import java.util.*;
import java.io.*;

public abstract class ParsingEncoder extends Encoder
{
    private long[] counts;
    protected int pos;
    
    public ParsingEncoder() {
        super();
        this.counts = new long[10];
        this.pos = -1;
    }
    
    protected final int depth() {
        return this.pos;
    }
    
    protected final void pop() {
        if (this.counts[this.pos] != 0L) {
            throw new AvroTypeException("Incorrect number of items written. " + this.counts[this.pos] + " more required.");
        }
        --this.pos;
    }
    
    protected final void push() {
        if (this.pos == this.counts.length) {
            this.counts = Arrays.copyOf(this.counts, 10 + this.pos);
        }
        this.counts[++this.pos] = 0L;
    }
    
    @Override
    public void setItemCount(final long n) throws IOException {
        if (this.counts[this.pos] != 0L) {
            throw new AvroTypeException("Incorrect number of items written. " + this.counts[this.pos] + " more required.");
        }
        this.counts[this.pos] = n;
    }
    
    @Override
    public void startItem() throws IOException {
        final long[] counts = this.counts;
        final int pos = this.pos;
        --counts[pos];
    }
}
