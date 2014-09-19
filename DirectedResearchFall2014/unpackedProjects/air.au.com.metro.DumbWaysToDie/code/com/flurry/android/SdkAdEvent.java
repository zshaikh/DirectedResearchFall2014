package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class SdkAdEvent extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public CharSequence af;
    public Map<CharSequence, CharSequence> ag;
    public long ah;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]}");
    }
    
    public final void a(final CharSequence af) {
        this.af = af;
    }
    
    public final void a(final Long n) {
        this.ah = n;
    }
    
    public final void a(final Map<CharSequence, CharSequence> ag) {
        this.ag = ag;
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.af;
            }
            case 1: {
                return this.ag;
            }
            case 2: {
                return this.ah;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return SdkAdEvent.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.af = (CharSequence)o;
            }
            case 1: {
                this.ag = (Map<CharSequence, CharSequence>)o;
            }
            case 2: {
                this.ah = (long)o;
            }
        }
    }
}
