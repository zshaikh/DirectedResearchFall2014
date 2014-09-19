package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class SdkAdEvent$Builder extends SpecificRecordBuilderBase<SdkAdEvent> implements RecordBuilder<SdkAdEvent>
{
    private CharSequence af;
    private Map<CharSequence, CharSequence> ag;
    private long ah;
    
    private SdkAdEvent$Builder() {
        super(SdkAdEvent.SCHEMA$);
    }
    
    @Override
    public SdkAdEvent build() {
        try {
            final SdkAdEvent sdkAdEvent = new SdkAdEvent();
            CharSequence af;
            if (this.fieldSetFlags()[0]) {
                af = this.af;
            }
            else {
                af = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            sdkAdEvent.af = af;
            Map<CharSequence, CharSequence> ag;
            if (this.fieldSetFlags()[1]) {
                ag = this.ag;
            }
            else {
                ag = (Map<CharSequence, CharSequence>)this.defaultValue(this.fields()[1]);
            }
            sdkAdEvent.ag = ag;
            long ah;
            if (this.fieldSetFlags()[2]) {
                ah = this.ah;
            }
            else {
                ah = (long)this.defaultValue(this.fields()[2]);
            }
            sdkAdEvent.ah = ah;
            return sdkAdEvent;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public SdkAdEvent$Builder clearParams() {
        this.ag = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public SdkAdEvent$Builder clearTimeOffset() {
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public SdkAdEvent$Builder clearType() {
        this.af = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public Map<CharSequence, CharSequence> getParams() {
        return this.ag;
    }
    
    public Long getTimeOffset() {
        return this.ah;
    }
    
    public CharSequence getType() {
        return this.af;
    }
    
    public boolean hasParams() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasTimeOffset() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasType() {
        return this.fieldSetFlags()[0];
    }
    
    public SdkAdEvent$Builder setParams(final Map<CharSequence, CharSequence> ag) {
        this.validate(this.fields()[1], ag);
        this.ag = ag;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public SdkAdEvent$Builder setTimeOffset(final long n) {
        this.validate(this.fields()[2], n);
        this.ah = n;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public SdkAdEvent$Builder setType(final CharSequence af) {
        this.validate(this.fields()[0], af);
        this.af = af;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}
