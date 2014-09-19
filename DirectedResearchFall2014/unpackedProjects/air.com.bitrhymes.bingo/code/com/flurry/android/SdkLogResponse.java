package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class SdkLogResponse extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public CharSequence w;
    public List<CharSequence> x;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"SdkLogResponse\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"result\",\"type\":\"string\"},{\"name\":\"errors\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}");
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.w;
            }
            case 1: {
                return this.x;
            }
        }
    }
    
    public final List<CharSequence> getErrors() {
        return this.x;
    }
    
    public final CharSequence getResult() {
        return this.w;
    }
    
    @Override
    public Schema getSchema() {
        return SdkLogResponse.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.w = (CharSequence)o;
            }
            case 1: {
                this.x = (List<CharSequence>)o;
            }
        }
    }
}
