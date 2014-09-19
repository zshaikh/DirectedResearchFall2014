package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;

public class AdViewContainer$Builder extends SpecificRecordBuilderBase<AdViewContainer> implements RecordBuilder<AdViewContainer>
{
    private int ai;
    private int aj;
    private int ak;
    private int al;
    
    private AdViewContainer$Builder(final byte b) {
        super(AdViewContainer.SCHEMA$);
    }
    
    @Override
    public AdViewContainer build() {
        try {
            final AdViewContainer adViewContainer = new AdViewContainer();
            int ai;
            if (this.fieldSetFlags()[0]) {
                ai = this.ai;
            }
            else {
                ai = (int)this.defaultValue(this.fields()[0]);
            }
            adViewContainer.ai = ai;
            int aj;
            if (this.fieldSetFlags()[1]) {
                aj = this.aj;
            }
            else {
                aj = (int)this.defaultValue(this.fields()[1]);
            }
            adViewContainer.aj = aj;
            int ak;
            if (this.fieldSetFlags()[2]) {
                ak = this.ak;
            }
            else {
                ak = (int)this.defaultValue(this.fields()[2]);
            }
            adViewContainer.ak = ak;
            int al;
            if (this.fieldSetFlags()[3]) {
                al = this.al;
            }
            else {
                al = (int)this.defaultValue(this.fields()[3]);
            }
            adViewContainer.al = al;
            return adViewContainer;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdViewContainer$Builder clearScreenHeight() {
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public AdViewContainer$Builder clearScreenWidth() {
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public AdViewContainer$Builder clearViewHeight() {
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public AdViewContainer$Builder clearViewWidth() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public Integer getScreenHeight() {
        return this.al;
    }
    
    public Integer getScreenWidth() {
        return this.ak;
    }
    
    public Integer getViewHeight() {
        return this.aj;
    }
    
    public Integer getViewWidth() {
        return this.ai;
    }
    
    public boolean hasScreenHeight() {
        return this.fieldSetFlags()[3];
    }
    
    public boolean hasScreenWidth() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasViewHeight() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasViewWidth() {
        return this.fieldSetFlags()[0];
    }
    
    public AdViewContainer$Builder setScreenHeight(final int n) {
        this.validate(this.fields()[3], n);
        this.al = n;
        this.fieldSetFlags()[3] = true;
        return this;
    }
    
    public AdViewContainer$Builder setScreenWidth(final int n) {
        this.validate(this.fields()[2], n);
        this.ak = n;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public AdViewContainer$Builder setViewHeight(final int n) {
        this.validate(this.fields()[1], n);
        this.aj = n;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public AdViewContainer$Builder setViewWidth(final int n) {
        this.validate(this.fields()[0], n);
        this.ai = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}
