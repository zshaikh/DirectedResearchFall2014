package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class SdkLogRequest extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public CharSequence bX;
    public List<AdReportedId> ca;
    public boolean cc;
    public List<SdkAdLog> dl;
    public long dm;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"SdkLogRequest\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"sdkAdLogs\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdLog\",\"fields\":[{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adLogGUID\",\"type\":\"string\"},{\"name\":\"sdkAdEvents\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]}}}]}}},{\"name\":\"agentTimestamp\",\"type\":\"long\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false}]}");
    }
    
    public static SdkLogRequest$Builder aa() {
        return new SdkLogRequest$Builder();
    }
    
    @Override
    public Object get(final int n) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                return this.bX;
            }
            case 1: {
                return this.ca;
            }
            case 2: {
                return this.dl;
            }
            case 3: {
                return this.dm;
            }
            case 4: {
                return this.cc;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return SdkLogRequest.SCHEMA$;
    }
    
    @Override
    public void put(final int n, final Object o) {
        switch (n) {
            default: {
                throw new AvroRuntimeException("Bad index");
            }
            case 0: {
                this.bX = (CharSequence)o;
            }
            case 1: {
                this.ca = (List<AdReportedId>)o;
            }
            case 2: {
                this.dl = (List<SdkAdLog>)o;
            }
            case 3: {
                this.dm = (long)o;
            }
            case 4: {
                this.cc = (boolean)o;
            }
        }
    }
}
