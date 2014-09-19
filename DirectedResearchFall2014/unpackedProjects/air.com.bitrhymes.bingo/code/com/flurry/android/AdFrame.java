package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class AdFrame extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public int p;
    public CharSequence q;
    public CharSequence r;
    public AdSpaceLayout s;
    public List<Callback> t;
    public CharSequence u;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"AdFrame\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"}]}");
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.p;
            }
            case 1: {
                return this.q;
            }
            case 2: {
                return this.r;
            }
            case 3: {
                return this.s;
            }
            case 4: {
                return this.t;
            }
            case 5: {
                return this.u;
            }
        }
    }
    
    public final CharSequence getAdGuid() {
        return this.u;
    }
    
    public final AdSpaceLayout getAdSpaceLayout() {
        return this.s;
    }
    
    public final Integer getBinding() {
        return this.p;
    }
    
    public final List<Callback> getCallbacks() {
        return this.t;
    }
    
    public final CharSequence getContent() {
        return this.r;
    }
    
    public final CharSequence getDisplay() {
        return this.q;
    }
    
    @Override
    public Schema getSchema() {
        return AdFrame.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.p = (int)o;
            }
            case 1: {
                this.q = (CharSequence)o;
            }
            case 2: {
                this.r = (CharSequence)o;
            }
            case 3: {
                this.s = (AdSpaceLayout)o;
            }
            case 4: {
                this.t = (List<Callback>)o;
            }
            case 5: {
                this.u = (CharSequence)o;
            }
        }
    }
}
