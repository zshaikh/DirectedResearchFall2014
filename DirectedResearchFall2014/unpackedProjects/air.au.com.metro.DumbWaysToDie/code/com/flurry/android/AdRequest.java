package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

class AdRequest extends SpecificRecordBase implements SpecificRecord
{
    public static final Schema SCHEMA$;
    public long bU;
    public CharSequence bX;
    public CharSequence bY;
    public CharSequence bZ;
    public List<AdReportedId> ca;
    public Location cb;
    public boolean cc;
    public List<Integer> cd;
    public AdViewContainer ce;
    public CharSequence cf;
    public CharSequence cg;
    public CharSequence ch;
    public CharSequence ci;
    public TestAds cj;
    public Map<CharSequence, CharSequence> ck;
    public boolean cl;
    public int cm;
    public boolean cn;
    public List<FrequencyCapInfo> co;
    
    static {
        SCHEMA$ = new Schema.Parser().parse("{\"type\":\"record\",\"name\":\"AdRequest\",\"namespace\":\"com.flurry.android\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"agentVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"adSpaceName\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}}},{\"name\":\"location\",\"type\":{\"type\":\"record\",\"name\":\"Location\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]},\"default\":\"null\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false},{\"name\":\"bindings\",\"type\":{\"type\":\"array\",\"items\":\"int\"}},{\"name\":\"adViewContainer\",\"type\":{\"type\":\"record\",\"name\":\"AdViewContainer\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0}]},\"default\":\"null\"},{\"name\":\"locale\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"timezone\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"osVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"devicePlatform\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"testAds\",\"type\":{\"type\":\"record\",\"name\":\"TestAds\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]},\"default\":\"null\"},{\"name\":\"keywords\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]},{\"name\":\"refresh\",\"type\":\"boolean\",\"default\":false},{\"name\":\"networkStatus\",\"type\":\"int\",\"default\":1},{\"name\":\"canDoSKAppStore\",\"type\":\"boolean\",\"default\":false},{\"name\":\"frequencyCapInfos\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}}}]}");
    }
    
    public static AdRequest$Builder ab() {
        return new AdRequest$Builder();
    }
    
    public final void a(final TestAds cj) {
        this.cj = cj;
    }
    
    public final void a(final Boolean b) {
        this.cl = b;
    }
    
    public final void b(final CharSequence bz) {
        this.bZ = bz;
    }
    
    public final void c(final Map<CharSequence, CharSequence> ck) {
        this.ck = ck;
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
                return this.bY;
            }
            case 2: {
                return this.bZ;
            }
            case 3: {
                return this.bU;
            }
            case 4: {
                return this.ca;
            }
            case 5: {
                return this.cb;
            }
            case 6: {
                return this.cc;
            }
            case 7: {
                return this.cd;
            }
            case 8: {
                return this.ce;
            }
            case 9: {
                return this.cf;
            }
            case 10: {
                return this.cg;
            }
            case 11: {
                return this.ch;
            }
            case 12: {
                return this.ci;
            }
            case 13: {
                return this.cj;
            }
            case 14: {
                return this.ck;
            }
            case 15: {
                return this.cl;
            }
            case 16: {
                return this.cm;
            }
            case 17: {
                return this.cn;
            }
            case 18: {
                return this.co;
            }
        }
    }
    
    @Override
    public Schema getSchema() {
        return AdRequest.SCHEMA$;
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
                this.bY = (CharSequence)o;
            }
            case 2: {
                this.bZ = (CharSequence)o;
            }
            case 3: {
                this.bU = (long)o;
            }
            case 4: {
                this.ca = (List<AdReportedId>)o;
            }
            case 5: {
                this.cb = (Location)o;
            }
            case 6: {
                this.cc = (boolean)o;
            }
            case 7: {
                this.cd = (List<Integer>)o;
            }
            case 8: {
                this.ce = (AdViewContainer)o;
            }
            case 9: {
                this.cf = (CharSequence)o;
            }
            case 10: {
                this.cg = (CharSequence)o;
            }
            case 11: {
                this.ch = (CharSequence)o;
            }
            case 12: {
                this.ci = (CharSequence)o;
            }
            case 13: {
                this.cj = (TestAds)o;
            }
            case 14: {
                this.ck = (Map<CharSequence, CharSequence>)o;
            }
            case 15: {
                this.cl = (boolean)o;
            }
            case 16: {
                this.cm = (int)o;
            }
            case 17: {
                this.cn = (boolean)o;
            }
            case 18: {
                this.co = (List<FrequencyCapInfo>)o;
            }
        }
    }
}
