package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.*;

class AdViewContainer extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public int ai;
    public int aj;
    public int ak;
    public int al;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"AdViewContainer\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0}]}");
    }
    
    public static AdViewContainer$Builder A() {
        return new AdViewContainer$Builder();
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.ai;
            }
            case 1: {
                return this.aj;
            }
            case 2: {
                return this.ak;
            }
            case 3: {
                return this.al;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return AdViewContainer.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.ai = (int)o;
            }
            case 1: {
                this.aj = (int)o;
            }
            case 2: {
                this.ak = (int)o;
            }
            case 3: {
                this.al = (int)o;
            }
        }
    }
}
