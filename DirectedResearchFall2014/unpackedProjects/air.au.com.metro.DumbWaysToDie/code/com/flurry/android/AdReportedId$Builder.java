package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.nio.*;
import com.flurry.org.apache.avro.*;

public class AdReportedId$Builder extends SpecificRecordBuilderBase<AdReportedId> implements RecordBuilder<AdReportedId>
{
    private ByteBuffer ev;
    private int type;
    
    private AdReportedId$Builder(final byte b) {
        super(AdReportedId.SCHEMA$);
    }
    
    @Override
    public AdReportedId build() {
        try {
            final AdReportedId adReportedId = new AdReportedId();
            int type;
            if (this.fieldSetFlags()[0]) {
                type = this.type;
            }
            else {
                type = (int)this.defaultValue(this.fields()[0]);
            }
            adReportedId.type = type;
            ByteBuffer ev;
            if (this.fieldSetFlags()[1]) {
                ev = this.ev;
            }
            else {
                ev = (ByteBuffer)this.defaultValue(this.fields()[1]);
            }
            adReportedId.ev = ev;
            return adReportedId;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdReportedId$Builder clearId() {
        this.ev = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public AdReportedId$Builder clearType() {
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public ByteBuffer getId() {
        return this.ev;
    }
    
    public Integer getType() {
        return this.type;
    }
    
    public boolean hasId() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasType() {
        return this.fieldSetFlags()[0];
    }
    
    public AdReportedId$Builder setId(final ByteBuffer ev) {
        this.validate(this.fields()[1], ev);
        this.ev = ev;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public AdReportedId$Builder setType(final int n) {
        this.validate(this.fields()[0], n);
        this.type = n;
        this.fieldSetFlags()[0] = true;
        return this;
    }
}
