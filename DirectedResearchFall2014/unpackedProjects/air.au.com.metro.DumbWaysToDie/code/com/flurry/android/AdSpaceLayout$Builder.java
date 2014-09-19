package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;

public class AdSpaceLayout$Builder extends SpecificRecordBuilderBase<AdSpaceLayout> implements RecordBuilder<AdSpaceLayout>
{
    private int do;
    private int dp;
    private CharSequence dq;
    private CharSequence dr;
    private CharSequence ds;
    
    private AdSpaceLayout$Builder() {
        super(AdSpaceLayout.SCHEMA$);
    }
    
    @Override
    public AdSpaceLayout build() {
        try {
            final AdSpaceLayout adSpaceLayout = new AdSpaceLayout();
            int do1;
            if (this.fieldSetFlags()[0]) {
                do1 = this.do;
            }
            else {
                do1 = (int)this.defaultValue(this.fields()[0]);
            }
            adSpaceLayout.do = do1;
            int dp;
            if (this.fieldSetFlags()[1]) {
                dp = this.dp;
            }
            else {
                dp = (int)this.defaultValue(this.fields()[1]);
            }
            adSpaceLayout.dp = dp;
            CharSequence dq;
            if (this.fieldSetFlags()[2]) {
                dq = this.dq;
            }
            else {
                dq = (CharSequence)this.defaultValue(this.fields()[2]);
            }
            adSpaceLayout.dq = dq;
            CharSequence dr;
            if (this.fieldSetFlags()[3]) {
                dr = this.dr;
            }
            else {
                dr = (CharSequence)this.defaultValue(this.fields()[3]);
            }
            adSpaceLayout.dr = dr;
            CharSequence ds;
            if (this.fieldSetFlags()[4]) {
                ds = this.ds;
            }
            else {
                ds = (CharSequence)this.defaultValue(this.fields()[4]);
            }
            adSpaceLayout.ds = ds;
            return adSpaceLayout;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdSpaceLayout$Builder clearAdHeight() {
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public AdSpaceLayout$Builder clearAdWidth() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public AdSpaceLayout$Builder clearAlignment() {
        this.ds = null;
        this.fieldSetFlags()[4] = false;
        return this;
    }
    
    public AdSpaceLayout$Builder clearFix() {
        this.dq = null;
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public AdSpaceLayout$Builder clearFormat() {
        this.dr = null;
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public Integer getAdHeight() {
        return this.dp;
    }
    
    public Integer getAdWidth() {
        return this.do;
    }
    
    public CharSequence getAlignment() {
        return this.ds;
    }
    
    public CharSequence getFix() {
        return this.dq;
    }
    
    public CharSequence getFormat() {
        return this.dr;
    }
    
    public boolean hasAdHeight() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasAdWidth() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasAlignment() {
        return this.fieldSetFlags()[4];
    }
    
    public boolean hasFix() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasFormat() {
        return this.fieldSetFlags()[3];
    }
    
    public AdSpaceLayout$Builder setAdHeight(final int n) {
        this.validate(this.fields()[1], n);
        this.dp = n;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public AdSpaceLayout$Builder setAdWidth(final int n) {
        this.validate(this.fields()[0], n);
        this.do = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public AdSpaceLayout$Builder setAlignment(final CharSequence ds) {
        this.validate(this.fields()[4], ds);
        this.ds = ds;
        this.fieldSetFlags()[4] = true;
        return this;
    }
    
    public AdSpaceLayout$Builder setFix(final CharSequence dq) {
        this.validate(this.fields()[2], dq);
        this.dq = dq;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public AdSpaceLayout$Builder setFormat(final CharSequence dr) {
        this.validate(this.fields()[3], dr);
        this.dr = dr;
        this.fieldSetFlags()[3] = true;
        return this;
    }
}
