package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.*;

class Location extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public float eY;
    public float eZ;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"Location\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]}");
    }
    
    public static Location$Builder as() {
        return new Location$Builder();
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.eY;
            }
            case 1: {
                return this.eZ;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return Location.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.eY = (float)o;
            }
            case 1: {
                this.eZ = (float)o;
            }
        }
    }
}
