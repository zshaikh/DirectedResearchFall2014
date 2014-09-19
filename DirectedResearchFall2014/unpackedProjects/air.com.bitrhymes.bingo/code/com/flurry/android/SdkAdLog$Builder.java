package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class SdkAdLog$Builder extends SpecificRecordBuilderBase<SdkAdLog> implements RecordBuilder<SdkAdLog>
{
    private long bU;
    private CharSequence bV;
    private List<SdkAdEvent> bW;
    
    private SdkAdLog$Builder() {
        super(SdkAdLog.SCHEMA$);
    }
    
    @Override
    public SdkAdLog build() {
        try {
            final SdkAdLog sdkAdLog = new SdkAdLog();
            long bu;
            if (this.fieldSetFlags()[0]) {
                bu = this.bU;
            }
            else {
                bu = (long)this.defaultValue(this.fields()[0]);
            }
            sdkAdLog.bU = bu;
            CharSequence bv;
            if (this.fieldSetFlags()[1]) {
                bv = this.bV;
            }
            else {
                bv = (CharSequence)this.defaultValue(this.fields()[1]);
            }
            sdkAdLog.bV = bv;
            List<SdkAdEvent> bw;
            if (this.fieldSetFlags()[2]) {
                bw = this.bW;
            }
            else {
                bw = (List<SdkAdEvent>)this.defaultValue(this.fields()[2]);
            }
            sdkAdLog.bW = bw;
            return sdkAdLog;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public SdkAdLog$Builder clearAdLogGUID() {
        this.bV = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public SdkAdLog$Builder clearSdkAdEvents() {
        this.bW = null;
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public SdkAdLog$Builder clearSessionId() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public CharSequence getAdLogGUID() {
        return this.bV;
    }
    
    public List<SdkAdEvent> getSdkAdEvents() {
        return this.bW;
    }
    
    public Long getSessionId() {
        return this.bU;
    }
    
    public boolean hasAdLogGUID() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasSdkAdEvents() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasSessionId() {
        return this.fieldSetFlags()[0];
    }
    
    public SdkAdLog$Builder setAdLogGUID(final CharSequence bv) {
        this.validate(this.fields()[1], bv);
        this.bV = bv;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public SdkAdLog$Builder setSdkAdEvents(final List<SdkAdEvent> bw) {
        this.validate(this.fields()[2], bw);
        this.bW = bw;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public SdkAdLog$Builder setSessionId(final long n) {
        this.validate(this.fields()[0], n);
        this.bU = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}
