package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;

public class FrequencyCapInfo$Builder extends SpecificRecordBuilderBase<FrequencyCapInfo> implements RecordBuilder<FrequencyCapInfo>
{
    private CharSequence W;
    private long X;
    private int Y;
    private int Z;
    private int aa;
    private long ab;
    private int df;
    
    private FrequencyCapInfo$Builder(final byte b) {
        super(FrequencyCapInfo.SCHEMA$);
    }
    
    @Override
    public FrequencyCapInfo build() {
        try {
            final FrequencyCapInfo frequencyCapInfo = new FrequencyCapInfo();
            CharSequence w;
            if (this.fieldSetFlags()[0]) {
                w = this.W;
            }
            else {
                w = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            frequencyCapInfo.W = w;
            long x;
            if (this.fieldSetFlags()[1]) {
                x = this.X;
            }
            else {
                x = (long)this.defaultValue(this.fields()[1]);
            }
            frequencyCapInfo.X = x;
            long ab;
            if (this.fieldSetFlags()[2]) {
                ab = this.ab;
            }
            else {
                ab = (long)this.defaultValue(this.fields()[2]);
            }
            frequencyCapInfo.ab = ab;
            int df;
            if (this.fieldSetFlags()[3]) {
                df = this.df;
            }
            else {
                df = (int)this.defaultValue(this.fields()[3]);
            }
            frequencyCapInfo.df = df;
            int y;
            if (this.fieldSetFlags()[4]) {
                y = this.Y;
            }
            else {
                y = (int)this.defaultValue(this.fields()[4]);
            }
            frequencyCapInfo.Y = y;
            int z;
            if (this.fieldSetFlags()[5]) {
                z = this.Z;
            }
            else {
                z = (int)this.defaultValue(this.fields()[5]);
            }
            frequencyCapInfo.Z = z;
            int aa;
            if (this.fieldSetFlags()[6]) {
                aa = this.aa;
            }
            else {
                aa = (int)this.defaultValue(this.fields()[6]);
            }
            frequencyCapInfo.aa = aa;
            return frequencyCapInfo;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public FrequencyCapInfo$Builder clearExpirationTime() {
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public FrequencyCapInfo$Builder clearIdHash() {
        this.W = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public FrequencyCapInfo$Builder clearNewCap() {
        this.fieldSetFlags()[4] = false;
        return this;
    }
    
    public FrequencyCapInfo$Builder clearPreviousCap() {
        this.fieldSetFlags()[5] = false;
        return this;
    }
    
    public FrequencyCapInfo$Builder clearPreviousCapType() {
        this.fieldSetFlags()[6] = false;
        return this;
    }
    
    public FrequencyCapInfo$Builder clearServeTime() {
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public FrequencyCapInfo$Builder clearViews() {
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public Long getExpirationTime() {
        return this.ab;
    }
    
    public CharSequence getIdHash() {
        return this.W;
    }
    
    public Integer getNewCap() {
        return this.Y;
    }
    
    public Integer getPreviousCap() {
        return this.Z;
    }
    
    public Integer getPreviousCapType() {
        return this.aa;
    }
    
    public Long getServeTime() {
        return this.X;
    }
    
    public Integer getViews() {
        return this.df;
    }
    
    public boolean hasExpirationTime() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasIdHash() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasNewCap() {
        return this.fieldSetFlags()[4];
    }
    
    public boolean hasPreviousCap() {
        return this.fieldSetFlags()[5];
    }
    
    public boolean hasPreviousCapType() {
        return this.fieldSetFlags()[6];
    }
    
    public boolean hasServeTime() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasViews() {
        return this.fieldSetFlags()[3];
    }
    
    public FrequencyCapInfo$Builder setExpirationTime(final long n) {
        this.validate(this.fields()[2], n);
        this.ab = n;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public FrequencyCapInfo$Builder setIdHash(final CharSequence w) {
        this.validate(this.fields()[0], w);
        this.W = w;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public FrequencyCapInfo$Builder setNewCap(final int n) {
        this.validate(this.fields()[4], n);
        this.Y = n;
        this.fieldSetFlags()[4] = true;
        return this;
    }
    
    public FrequencyCapInfo$Builder setPreviousCap(final int n) {
        this.validate(this.fields()[5], n);
        this.Z = n;
        this.fieldSetFlags()[5] = true;
        return this;
    }
    
    public FrequencyCapInfo$Builder setPreviousCapType(final int n) {
        this.validate(this.fields()[6], n);
        this.aa = n;
        this.fieldSetFlags()[6] = true;
        return this;
    }
    
    public FrequencyCapInfo$Builder setServeTime(final long n) {
        this.validate(this.fields()[1], n);
        this.X = n;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public FrequencyCapInfo$Builder setViews(final int n) {
        this.validate(this.fields()[3], n);
        this.df = n;
        this.fieldSetFlags()[3] = true;
        return this;
    }
}
