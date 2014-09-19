package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class SdkAdLog extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public long bU;
    public CharSequence bV;
    public List<SdkAdEvent> bW;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"SdkAdLog\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adLogGUID\",\"type\":\"string\"},{\"name\":\"sdkAdEvents\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]}}}]}");
    }
    
    public final void b(final Long n) {
        this.bU = n;
    }
    
    public final void c(final CharSequence bv) {
        this.bV = bv;
    }
    
    public final void g(final List<SdkAdEvent> bw) {
        this.bW = bw;
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.bU;
            }
            case 1: {
                return this.bV;
            }
            case 2: {
                return this.bW;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return SdkAdLog.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.bU = (long)o;
            }
            case 1: {
                this.bV = (CharSequence)o;
            }
            case 2: {
                this.bW = (List<SdkAdEvent>)o;
            }
        }
    }
}
