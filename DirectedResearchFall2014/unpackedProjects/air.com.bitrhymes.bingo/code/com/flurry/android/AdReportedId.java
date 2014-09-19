package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.nio.*;
import com.flurry.org.apache.avro.*;

class AdReportedId extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public ByteBuffer ev;
    public int type;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"AdReportedId\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}");
    }
    
    public static AdReportedId$Builder aq() {
        return new AdReportedId$Builder();
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.type;
            }
            case 1: {
                return this.ev;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return AdReportedId.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.type = (int)o;
            }
            case 1: {
                this.ev = (ByteBuffer)o;
            }
        }
    }
}
