package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class AdUnit extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public CharSequence R;
    public long S;
    public List<AdFrame> T;
    public int U;
    public CharSequence V;
    public CharSequence W;
    public long X;
    public int Y;
    public int Z;
    public int aa;
    public long ab;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"AdUnit\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"adSpace\",\"type\":\"string\"},{\"name\":\"expiration\",\"type\":\"long\"},{\"name\":\"adFrames\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdFrame\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"}]}}},{\"name\":\"combinable\",\"type\":\"int\",\"default\":0},{\"name\":\"groupId\",\"type\":\"string\"},{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"newCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCapType\",\"type\":\"int\",\"default\":0},{\"name\":\"expirationTime\",\"type\":\"long\"}]}");
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.R;
            }
            case 1: {
                return this.S;
            }
            case 2: {
                return this.T;
            }
            case 3: {
                return this.U;
            }
            case 4: {
                return this.V;
            }
            case 5: {
                return this.W;
            }
            case 6: {
                return this.X;
            }
            case 7: {
                return this.Y;
            }
            case 8: {
                return this.Z;
            }
            case 9: {
                return this.aa;
            }
            case 10: {
                return this.ab;
            }
        }
    }
    
    public final List<AdFrame> getAdFrames() {
        return this.T;
    }
    
    public final CharSequence getAdSpace() {
        return this.R;
    }
    
    public final Integer getCombinable() {
        return this.U;
    }
    
    public final Long getExpiration() {
        return this.S;
    }
    
    public final Long getExpirationTime() {
        return this.ab;
    }
    
    public final CharSequence getGroupId() {
        return this.V;
    }
    
    public final CharSequence getIdHash() {
        return this.W;
    }
    
    public final Integer getNewCap() {
        return this.Y;
    }
    
    public final Integer getPreviousCap() {
        return this.Z;
    }
    
    public final Integer getPreviousCapType() {
        return this.aa;
    }
    
    @Override
    public Schema getSchema() {
        return AdUnit.SCHEMA$;
    }
    
    public final Long getServeTime() {
        return this.X;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.R = (CharSequence)o;
            }
            case 1: {
                this.S = (long)o;
            }
            case 2: {
                this.T = (List<AdFrame>)o;
            }
            case 3: {
                this.U = (int)o;
            }
            case 4: {
                this.V = (CharSequence)o;
            }
            case 5: {
                this.W = (CharSequence)o;
            }
            case 6: {
                this.X = (long)o;
            }
            case 7: {
                this.Y = (int)o;
            }
            case 8: {
                this.Z = (int)o;
            }
            case 9: {
                this.aa = (int)o;
            }
            case 10: {
                this.ab = (long)o;
            }
        }
    }
}
