package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class SdkLogRequest$Builder extends SpecificRecordBuilderBase<SdkLogRequest> implements RecordBuilder<SdkLogRequest>
{
    private CharSequence bX;
    private List<AdReportedId> ca;
    private boolean cc;
    private List<SdkAdLog> dl;
    private long dm;
    
    private SdkLogRequest$Builder(final byte b) {
        super(SdkLogRequest.SCHEMA$);
    }
    
    @Override
    public SdkLogRequest build() {
        try {
            final SdkLogRequest sdkLogRequest = new SdkLogRequest();
            CharSequence bx;
            if (this.fieldSetFlags()[0]) {
                bx = this.bX;
            }
            else {
                bx = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            sdkLogRequest.bX = bx;
            List<AdReportedId> ca;
            if (this.fieldSetFlags()[1]) {
                ca = this.ca;
            }
            else {
                ca = (List<AdReportedId>)this.defaultValue(this.fields()[1]);
            }
            sdkLogRequest.ca = ca;
            List<SdkAdLog> dl;
            if (this.fieldSetFlags()[2]) {
                dl = this.dl;
            }
            else {
                dl = (List<SdkAdLog>)this.defaultValue(this.fields()[2]);
            }
            sdkLogRequest.dl = dl;
            long dm;
            if (this.fieldSetFlags()[3]) {
                dm = this.dm;
            }
            else {
                dm = (long)this.defaultValue(this.fields()[3]);
            }
            sdkLogRequest.dm = dm;
            boolean cc;
            if (this.fieldSetFlags()[4]) {
                cc = this.cc;
            }
            else {
                cc = (boolean)this.defaultValue(this.fields()[4]);
            }
            sdkLogRequest.cc = cc;
            return sdkLogRequest;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public SdkLogRequest$Builder clearAdReportedIds() {
        this.ca = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public SdkLogRequest$Builder clearAgentTimestamp() {
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public SdkLogRequest$Builder clearApiKey() {
        this.bX = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public SdkLogRequest$Builder clearSdkAdLogs() {
        this.dl = null;
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public SdkLogRequest$Builder clearTestDevice() {
        this.fieldSetFlags()[4] = false;
        return this;
    }
    
    public List<AdReportedId> getAdReportedIds() {
        return this.ca;
    }
    
    public Long getAgentTimestamp() {
        return this.dm;
    }
    
    public CharSequence getApiKey() {
        return this.bX;
    }
    
    public List<SdkAdLog> getSdkAdLogs() {
        return this.dl;
    }
    
    public Boolean getTestDevice() {
        return this.cc;
    }
    
    public boolean hasAdReportedIds() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasAgentTimestamp() {
        return this.fieldSetFlags()[3];
    }
    
    public boolean hasApiKey() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasSdkAdLogs() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasTestDevice() {
        return this.fieldSetFlags()[4];
    }
    
    public SdkLogRequest$Builder setAdReportedIds(final List<AdReportedId> ca) {
        this.validate(this.fields()[1], ca);
        this.ca = ca;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public SdkLogRequest$Builder setAgentTimestamp(final long n) {
        this.validate(this.fields()[3], n);
        this.dm = n;
        this.fieldSetFlags()[3] = true;
        return this;
    }
    
    public SdkLogRequest$Builder setApiKey(final CharSequence bx) {
        this.validate(this.fields()[0], bx);
        this.bX = bx;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public SdkLogRequest$Builder setSdkAdLogs(final List<SdkAdLog> dl) {
        this.validate(this.fields()[2], dl);
        this.dl = dl;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public SdkLogRequest$Builder setTestDevice(final boolean b) {
        this.validate(this.fields()[4], b);
        this.cc = b;
        this.fieldSetFlags()[4] = true;
        return this;
    }
}
