package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class Callback extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public CharSequence bJ;
    public List<CharSequence> bK;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"Callback\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}");
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.bJ;
            }
            case 1: {
                return this.bK;
            }
        }
    }
    
    public final List<CharSequence> getActions() {
        return this.bK;
    }
    
    public final CharSequence getEvent() {
        return this.bJ;
    }
    
    @Override
    public Schema getSchema() {
        return Callback.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.bJ = (CharSequence)o;
            }
            case 1: {
                this.bK = (List<CharSequence>)o;
            }
        }
    }
}
