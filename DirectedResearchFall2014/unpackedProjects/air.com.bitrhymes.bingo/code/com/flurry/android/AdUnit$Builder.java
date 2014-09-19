package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class AdUnit$Builder extends SpecificRecordBuilderBase<AdUnit> implements RecordBuilder<AdUnit>
{
    private CharSequence R;
    private long S;
    private List<AdFrame> T;
    private int U;
    private CharSequence V;
    private CharSequence W;
    private long X;
    private int Y;
    private int Z;
    private int aa;
    private long ab;
    
    private AdUnit$Builder() {
        super(AdUnit.SCHEMA$);
    }
    
    @Override
    public AdUnit build() {
        try {
            final AdUnit adUnit = new AdUnit();
            CharSequence r;
            if (this.fieldSetFlags()[0]) {
                r = this.R;
            }
            else {
                r = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            adUnit.R = r;
            long s;
            if (this.fieldSetFlags()[1]) {
                s = this.S;
            }
            else {
                s = (long)this.defaultValue(this.fields()[1]);
            }
            adUnit.S = s;
            List<AdFrame> t;
            if (this.fieldSetFlags()[2]) {
                t = this.T;
            }
            else {
                t = (List<AdFrame>)this.defaultValue(this.fields()[2]);
            }
            adUnit.T = t;
            int u;
            if (this.fieldSetFlags()[3]) {
                u = this.U;
            }
            else {
                u = (int)this.defaultValue(this.fields()[3]);
            }
            adUnit.U = u;
            CharSequence v;
            if (this.fieldSetFlags()[4]) {
                v = this.V;
            }
            else {
                v = (CharSequence)this.defaultValue(this.fields()[4]);
            }
            adUnit.V = v;
            CharSequence w;
            if (this.fieldSetFlags()[5]) {
                w = this.W;
            }
            else {
                w = (CharSequence)this.defaultValue(this.fields()[5]);
            }
            adUnit.W = w;
            long x;
            if (this.fieldSetFlags()[6]) {
                x = this.X;
            }
            else {
                x = (long)this.defaultValue(this.fields()[6]);
            }
            adUnit.X = x;
            int y;
            if (this.fieldSetFlags()[7]) {
                y = this.Y;
            }
            else {
                y = (int)this.defaultValue(this.fields()[7]);
            }
            adUnit.Y = y;
            int z;
            if (this.fieldSetFlags()[8]) {
                z = this.Z;
            }
            else {
                z = (int)this.defaultValue(this.fields()[8]);
            }
            adUnit.Z = z;
            int aa;
            if (this.fieldSetFlags()[9]) {
                aa = this.aa;
            }
            else {
                aa = (int)this.defaultValue(this.fields()[9]);
            }
            adUnit.aa = aa;
            long ab;
            if (this.fieldSetFlags()[10]) {
                ab = this.ab;
            }
            else {
                ab = (long)this.defaultValue(this.fields()[10]);
            }
            adUnit.ab = ab;
            return adUnit;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdUnit$Builder clearAdFrames() {
        this.T = null;
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public AdUnit$Builder clearAdSpace() {
        this.R = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public AdUnit$Builder clearCombinable() {
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public AdUnit$Builder clearExpiration() {
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public AdUnit$Builder clearExpirationTime() {
        this.fieldSetFlags()[10] = false;
        return this;
    }
    
    public AdUnit$Builder clearGroupId() {
        this.V = null;
        this.fieldSetFlags()[4] = false;
        return this;
    }
    
    public AdUnit$Builder clearIdHash() {
        this.W = null;
        this.fieldSetFlags()[5] = false;
        return this;
    }
    
    public AdUnit$Builder clearNewCap() {
        this.fieldSetFlags()[7] = false;
        return this;
    }
    
    public AdUnit$Builder clearPreviousCap() {
        this.fieldSetFlags()[8] = false;
        return this;
    }
    
    public AdUnit$Builder clearPreviousCapType() {
        this.fieldSetFlags()[9] = false;
        return this;
    }
    
    public AdUnit$Builder clearServeTime() {
        this.fieldSetFlags()[6] = false;
        return this;
    }
    
    public List<AdFrame> getAdFrames() {
        return this.T;
    }
    
    public CharSequence getAdSpace() {
        return this.R;
    }
    
    public Integer getCombinable() {
        return this.U;
    }
    
    public Long getExpiration() {
        return this.S;
    }
    
    public Long getExpirationTime() {
        return this.ab;
    }
    
    public CharSequence getGroupId() {
        return this.V;
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
    
    public boolean hasAdFrames() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasAdSpace() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasCombinable() {
        return this.fieldSetFlags()[3];
    }
    
    public boolean hasExpiration() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasExpirationTime() {
        return this.fieldSetFlags()[10];
    }
    
    public boolean hasGroupId() {
        return this.fieldSetFlags()[4];
    }
    
    public boolean hasIdHash() {
        return this.fieldSetFlags()[5];
    }
    
    public boolean hasNewCap() {
        return this.fieldSetFlags()[7];
    }
    
    public boolean hasPreviousCap() {
        return this.fieldSetFlags()[8];
    }
    
    public boolean hasPreviousCapType() {
        return this.fieldSetFlags()[9];
    }
    
    public boolean hasServeTime() {
        return this.fieldSetFlags()[6];
    }
    
    public AdUnit$Builder setAdFrames(final List<AdFrame> t) {
        this.validate(this.fields()[2], t);
        this.T = t;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public AdUnit$Builder setAdSpace(final CharSequence r) {
        this.validate(this.fields()[0], r);
        this.R = r;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public AdUnit$Builder setCombinable(final int n) {
        this.validate(this.fields()[3], n);
        this.U = n;
        this.fieldSetFlags()[3] = true;
        return this;
    }
    
    public AdUnit$Builder setExpiration(final long n) {
        this.validate(this.fields()[1], n);
        this.S = n;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public AdUnit$Builder setExpirationTime(final long n) {
        this.validate(this.fields()[10], n);
        this.ab = n;
        this.fieldSetFlags()[10] = true;
        return this;
    }
    
    public AdUnit$Builder setGroupId(final CharSequence v) {
        this.validate(this.fields()[4], v);
        this.V = v;
        this.fieldSetFlags()[4] = true;
        return this;
    }
    
    public AdUnit$Builder setIdHash(final CharSequence w) {
        this.validate(this.fields()[5], w);
        this.W = w;
        this.fieldSetFlags()[5] = true;
        return this;
    }
    
    public AdUnit$Builder setNewCap(final int n) {
        this.validate(this.fields()[7], n);
        this.Y = n;
        this.fieldSetFlags()[7] = true;
        return this;
    }
    
    public AdUnit$Builder setPreviousCap(final int n) {
        this.validate(this.fields()[8], n);
        this.Z = n;
        this.fieldSetFlags()[8] = true;
        return this;
    }
    
    public AdUnit$Builder setPreviousCapType(final int n) {
        this.validate(this.fields()[9], n);
        this.aa = n;
        this.fieldSetFlags()[9] = true;
        return this;
    }
    
    public AdUnit$Builder setServeTime(final long n) {
        this.validate(this.fields()[6], n);
        this.X = n;
        this.fieldSetFlags()[6] = true;
        return this;
    }
}
