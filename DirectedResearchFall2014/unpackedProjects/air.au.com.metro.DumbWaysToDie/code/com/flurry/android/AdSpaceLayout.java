package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.*;

class AdSpaceLayout extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public int do;
    public int dp;
    public CharSequence dq;
    public CharSequence dr;
    public CharSequence ds;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}");
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.do;
            }
            case 1: {
                return this.dp;
            }
            case 2: {
                return this.dq;
            }
            case 3: {
                return this.dr;
            }
            case 4: {
                return this.ds;
            }
        }
    }
    
    public final Integer getAdHeight() {
        return this.dp;
    }
    
    public final Integer getAdWidth() {
        return this.do;
    }
    
    public final CharSequence getAlignment() {
        return this.ds;
    }
    
    public final CharSequence getFix() {
        return this.dq;
    }
    
    public final CharSequence getFormat() {
        return this.dr;
    }
    
    @Override
    public Schema getSchema() {
        return AdSpaceLayout.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.do = (int)o;
            }
            case 1: {
                this.dp = (int)o;
            }
            case 2: {
                this.dq = (CharSequence)o;
            }
            case 3: {
                this.dr = (CharSequence)o;
            }
            case 4: {
                this.ds = (CharSequence)o;
            }
        }
    }
}
