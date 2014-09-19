package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.*;

class FrequencyCapInfo extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public CharSequence W;
    public long X;
    public int Y;
    public int Z;
    public int aa;
    public long ab;
    public int df;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}");
    }
    
    public static FrequencyCapInfo$Builder ak() {
        return new FrequencyCapInfo$Builder();
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.W;
            }
            case 1: {
                return this.X;
            }
            case 2: {
                return this.ab;
            }
            case 3: {
                return this.df;
            }
            case 4: {
                return this.Y;
            }
            case 5: {
                return this.Z;
            }
            case 6: {
                return this.aa;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return FrequencyCapInfo.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.W = (CharSequence)o;
            }
            case 1: {
                this.X = (long)o;
            }
            case 2: {
                this.ab = (long)o;
            }
            case 3: {
                this.df = (int)o;
            }
            case 4: {
                this.Y = (int)o;
            }
            case 5: {
                this.Z = (int)o;
            }
            case 6: {
                this.aa = (int)o;
            }
        }
    }
}
