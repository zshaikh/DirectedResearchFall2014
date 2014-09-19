package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class AdFrame$Builder extends SpecificRecordBuilderBase<AdFrame> implements RecordBuilder<AdFrame>
{
    private int p;
    private CharSequence q;
    private CharSequence r;
    private AdSpaceLayout s;
    private List<Callback> t;
    private CharSequence u;
    
    private AdFrame$Builder() {
        super(AdFrame.SCHEMA$);
    }
    
    @Override
    public AdFrame build() {
        try {
            final AdFrame adFrame = new AdFrame();
            int p;
            if (this.fieldSetFlags()[0]) {
                p = this.p;
            }
            else {
                p = (int)this.defaultValue(this.fields()[0]);
            }
            adFrame.p = p;
            CharSequence q;
            if (this.fieldSetFlags()[1]) {
                q = this.q;
            }
            else {
                q = (CharSequence)this.defaultValue(this.fields()[1]);
            }
            adFrame.q = q;
            CharSequence r;
            if (this.fieldSetFlags()[2]) {
                r = this.r;
            }
            else {
                r = (CharSequence)this.defaultValue(this.fields()[2]);
            }
            adFrame.r = r;
            AdSpaceLayout s;
            if (this.fieldSetFlags()[3]) {
                s = this.s;
            }
            else {
                s = (AdSpaceLayout)this.defaultValue(this.fields()[3]);
            }
            adFrame.s = s;
            List<Callback> t;
            if (this.fieldSetFlags()[4]) {
                t = this.t;
            }
            else {
                t = (List<Callback>)this.defaultValue(this.fields()[4]);
            }
            adFrame.t = t;
            CharSequence u;
            if (this.fieldSetFlags()[5]) {
                u = this.u;
            }
            else {
                u = (CharSequence)this.defaultValue(this.fields()[5]);
            }
            adFrame.u = u;
            return adFrame;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdFrame$Builder clearAdGuid() {
        this.u = null;
        this.fieldSetFlags()[5] = false;
        return this;
    }
    
    public AdFrame$Builder clearAdSpaceLayout() {
        this.s = null;
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public AdFrame$Builder clearBinding() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public AdFrame$Builder clearCallbacks() {
        this.t = null;
        this.fieldSetFlags()[4] = false;
        return this;
    }
    
    public AdFrame$Builder clearContent() {
        this.r = null;
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public AdFrame$Builder clearDisplay() {
        this.q = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public CharSequence getAdGuid() {
        return this.u;
    }
    
    public AdSpaceLayout getAdSpaceLayout() {
        return this.s;
    }
    
    public Integer getBinding() {
        return this.p;
    }
    
    public List<Callback> getCallbacks() {
        return this.t;
    }
    
    public CharSequence getContent() {
        return this.r;
    }
    
    public CharSequence getDisplay() {
        return this.q;
    }
    
    public boolean hasAdGuid() {
        return this.fieldSetFlags()[5];
    }
    
    public boolean hasAdSpaceLayout() {
        return this.fieldSetFlags()[3];
    }
    
    public boolean hasBinding() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasCallbacks() {
        return this.fieldSetFlags()[4];
    }
    
    public boolean hasContent() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasDisplay() {
        return this.fieldSetFlags()[1];
    }
    
    public AdFrame$Builder setAdGuid(final CharSequence u) {
        this.validate(this.fields()[5], u);
        this.u = u;
        this.fieldSetFlags()[5] = true;
        return this;
    }
    
    public AdFrame$Builder setAdSpaceLayout(final AdSpaceLayout s) {
        this.validate(this.fields()[3], s);
        this.s = s;
        this.fieldSetFlags()[3] = true;
        return this;
    }
    
    public AdFrame$Builder setBinding(final int n) {
        this.validate(this.fields()[0], n);
        this.p = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public AdFrame$Builder setCallbacks(final List<Callback> t) {
        this.validate(this.fields()[4], t);
        this.t = t;
        this.fieldSetFlags()[4] = true;
        return this;
    }
    
    public AdFrame$Builder setContent(final CharSequence r) {
        this.validate(this.fields()[2], r);
        this.r = r;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public AdFrame$Builder setDisplay(final CharSequence q) {
        this.validate(this.fields()[1], q);
        this.q = q;
        this.fieldSetFlags()[1] = true;
        return this;
    }
}
