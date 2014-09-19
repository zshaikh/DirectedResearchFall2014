package com.flurry.android;

import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.data.*;
import java.util.*;
import com.flurry.org.apache.avro.*;

public class AdRequest$Builder extends SpecificRecordBuilderBase<AdRequest> implements RecordBuilder<AdRequest>
{
    private long bU;
    private CharSequence bX;
    private CharSequence bY;
    private CharSequence bZ;
    private List<AdReportedId> ca;
    private Location cb;
    private boolean cc;
    private List<Integer> cd;
    private AdViewContainer ce;
    private CharSequence cf;
    private CharSequence cg;
    private CharSequence ch;
    private CharSequence ci;
    private TestAds cj;
    private Map<CharSequence, CharSequence> ck;
    private boolean cl;
    private int cm;
    private boolean cn;
    private List<FrequencyCapInfo> co;
    
    private AdRequest$Builder(final byte b) {
        super(AdRequest.SCHEMA$);
    }
    
    @Override
    public AdRequest build() {
        try {
            final AdRequest adRequest = new AdRequest();
            CharSequence bx;
            if (this.fieldSetFlags()[0]) {
                bx = this.bX;
            }
            else {
                bx = (CharSequence)this.defaultValue(this.fields()[0]);
            }
            adRequest.bX = bx;
            CharSequence by;
            if (this.fieldSetFlags()[1]) {
                by = this.bY;
            }
            else {
                by = (CharSequence)this.defaultValue(this.fields()[1]);
            }
            adRequest.bY = by;
            CharSequence bz;
            if (this.fieldSetFlags()[2]) {
                bz = this.bZ;
            }
            else {
                bz = (CharSequence)this.defaultValue(this.fields()[2]);
            }
            adRequest.bZ = bz;
            long bu;
            if (this.fieldSetFlags()[3]) {
                bu = this.bU;
            }
            else {
                bu = (long)this.defaultValue(this.fields()[3]);
            }
            adRequest.bU = bu;
            List<AdReportedId> ca;
            if (this.fieldSetFlags()[4]) {
                ca = this.ca;
            }
            else {
                ca = (List<AdReportedId>)this.defaultValue(this.fields()[4]);
            }
            adRequest.ca = ca;
            Location cb;
            if (this.fieldSetFlags()[5]) {
                cb = this.cb;
            }
            else {
                cb = (Location)this.defaultValue(this.fields()[5]);
            }
            adRequest.cb = cb;
            boolean cc;
            if (this.fieldSetFlags()[6]) {
                cc = this.cc;
            }
            else {
                cc = (boolean)this.defaultValue(this.fields()[6]);
            }
            adRequest.cc = cc;
            List<Integer> cd;
            if (this.fieldSetFlags()[7]) {
                cd = this.cd;
            }
            else {
                cd = (List<Integer>)this.defaultValue(this.fields()[7]);
            }
            adRequest.cd = cd;
            AdViewContainer ce;
            if (this.fieldSetFlags()[8]) {
                ce = this.ce;
            }
            else {
                ce = (AdViewContainer)this.defaultValue(this.fields()[8]);
            }
            adRequest.ce = ce;
            CharSequence cf;
            if (this.fieldSetFlags()[9]) {
                cf = this.cf;
            }
            else {
                cf = (CharSequence)this.defaultValue(this.fields()[9]);
            }
            adRequest.cf = cf;
            CharSequence cg;
            if (this.fieldSetFlags()[10]) {
                cg = this.cg;
            }
            else {
                cg = (CharSequence)this.defaultValue(this.fields()[10]);
            }
            adRequest.cg = cg;
            CharSequence ch;
            if (this.fieldSetFlags()[11]) {
                ch = this.ch;
            }
            else {
                ch = (CharSequence)this.defaultValue(this.fields()[11]);
            }
            adRequest.ch = ch;
            CharSequence ci;
            if (this.fieldSetFlags()[12]) {
                ci = this.ci;
            }
            else {
                ci = (CharSequence)this.defaultValue(this.fields()[12]);
            }
            adRequest.ci = ci;
            TestAds cj;
            if (this.fieldSetFlags()[13]) {
                cj = this.cj;
            }
            else {
                cj = (TestAds)this.defaultValue(this.fields()[13]);
            }
            adRequest.cj = cj;
            Map<CharSequence, CharSequence> ck;
            if (this.fieldSetFlags()[14]) {
                ck = this.ck;
            }
            else {
                ck = (Map<CharSequence, CharSequence>)this.defaultValue(this.fields()[14]);
            }
            adRequest.ck = ck;
            boolean cl;
            if (this.fieldSetFlags()[15]) {
                cl = this.cl;
            }
            else {
                cl = (boolean)this.defaultValue(this.fields()[15]);
            }
            adRequest.cl = cl;
            int cm;
            if (this.fieldSetFlags()[16]) {
                cm = this.cm;
            }
            else {
                cm = (int)this.defaultValue(this.fields()[16]);
            }
            adRequest.cm = cm;
            boolean cn;
            if (this.fieldSetFlags()[17]) {
                cn = this.cn;
            }
            else {
                cn = (boolean)this.defaultValue(this.fields()[17]);
            }
            adRequest.cn = cn;
            List<FrequencyCapInfo> co;
            if (this.fieldSetFlags()[18]) {
                co = this.co;
            }
            else {
                co = (List<FrequencyCapInfo>)this.defaultValue(this.fields()[18]);
            }
            adRequest.co = co;
            return adRequest;
        }
        catch (Exception ex) {
            throw new AvroRuntimeException(ex);
        }
    }
    
    public AdRequest$Builder clearAdReportedIds() {
        this.ca = null;
        this.fieldSetFlags()[4] = false;
        return this;
    }
    
    public AdRequest$Builder clearAdSpaceName() {
        this.bZ = null;
        this.fieldSetFlags()[2] = false;
        return this;
    }
    
    public AdRequest$Builder clearAdViewContainer() {
        this.ce = null;
        this.fieldSetFlags()[8] = false;
        return this;
    }
    
    public AdRequest$Builder clearAgentVersion() {
        this.bY = null;
        this.fieldSetFlags()[1] = false;
        return this;
    }
    
    public AdRequest$Builder clearApiKey() {
        this.bX = null;
        this.fieldSetFlags()[0] = false;
        return this;
    }
    
    public AdRequest$Builder clearBindings() {
        this.cd = null;
        this.fieldSetFlags()[7] = false;
        return this;
    }
    
    public AdRequest$Builder clearCanDoSKAppStore() {
        this.fieldSetFlags()[17] = false;
        return this;
    }
    
    public AdRequest$Builder clearDevicePlatform() {
        this.ci = null;
        this.fieldSetFlags()[12] = false;
        return this;
    }
    
    public AdRequest$Builder clearFrequencyCapInfos() {
        this.co = null;
        this.fieldSetFlags()[18] = false;
        return this;
    }
    
    public AdRequest$Builder clearKeywords() {
        this.ck = null;
        this.fieldSetFlags()[14] = false;
        return this;
    }
    
    public AdRequest$Builder clearLocale() {
        this.cf = null;
        this.fieldSetFlags()[9] = false;
        return this;
    }
    
    public AdRequest$Builder clearLocation() {
        this.cb = null;
        this.fieldSetFlags()[5] = false;
        return this;
    }
    
    public AdRequest$Builder clearNetworkStatus() {
        this.fieldSetFlags()[16] = false;
        return this;
    }
    
    public AdRequest$Builder clearOsVersion() {
        this.ch = null;
        this.fieldSetFlags()[11] = false;
        return this;
    }
    
    public AdRequest$Builder clearRefresh() {
        this.fieldSetFlags()[15] = false;
        return this;
    }
    
    public AdRequest$Builder clearSessionId() {
        this.fieldSetFlags()[3] = false;
        return this;
    }
    
    public AdRequest$Builder clearTestAds() {
        this.cj = null;
        this.fieldSetFlags()[13] = false;
        return this;
    }
    
    public AdRequest$Builder clearTestDevice() {
        this.fieldSetFlags()[6] = false;
        return this;
    }
    
    public AdRequest$Builder clearTimezone() {
        this.cg = null;
        this.fieldSetFlags()[10] = false;
        return this;
    }
    
    public List<AdReportedId> getAdReportedIds() {
        return this.ca;
    }
    
    public CharSequence getAdSpaceName() {
        return this.bZ;
    }
    
    public AdViewContainer getAdViewContainer() {
        return this.ce;
    }
    
    public CharSequence getAgentVersion() {
        return this.bY;
    }
    
    public CharSequence getApiKey() {
        return this.bX;
    }
    
    public List<Integer> getBindings() {
        return this.cd;
    }
    
    public Boolean getCanDoSKAppStore() {
        return this.cn;
    }
    
    public CharSequence getDevicePlatform() {
        return this.ci;
    }
    
    public List<FrequencyCapInfo> getFrequencyCapInfos() {
        return this.co;
    }
    
    public Map<CharSequence, CharSequence> getKeywords() {
        return this.ck;
    }
    
    public CharSequence getLocale() {
        return this.cf;
    }
    
    public Location getLocation() {
        return this.cb;
    }
    
    public Integer getNetworkStatus() {
        return this.cm;
    }
    
    public CharSequence getOsVersion() {
        return this.ch;
    }
    
    public Boolean getRefresh() {
        return this.cl;
    }
    
    public Long getSessionId() {
        return this.bU;
    }
    
    public TestAds getTestAds() {
        return this.cj;
    }
    
    public Boolean getTestDevice() {
        return this.cc;
    }
    
    public CharSequence getTimezone() {
        return this.cg;
    }
    
    public boolean hasAdReportedIds() {
        return this.fieldSetFlags()[4];
    }
    
    public boolean hasAdSpaceName() {
        return this.fieldSetFlags()[2];
    }
    
    public boolean hasAdViewContainer() {
        return this.fieldSetFlags()[8];
    }
    
    public boolean hasAgentVersion() {
        return this.fieldSetFlags()[1];
    }
    
    public boolean hasApiKey() {
        return this.fieldSetFlags()[0];
    }
    
    public boolean hasBindings() {
        return this.fieldSetFlags()[7];
    }
    
    public boolean hasCanDoSKAppStore() {
        return this.fieldSetFlags()[17];
    }
    
    public boolean hasDevicePlatform() {
        return this.fieldSetFlags()[12];
    }
    
    public boolean hasFrequencyCapInfos() {
        return this.fieldSetFlags()[18];
    }
    
    public boolean hasKeywords() {
        return this.fieldSetFlags()[14];
    }
    
    public boolean hasLocale() {
        return this.fieldSetFlags()[9];
    }
    
    public boolean hasLocation() {
        return this.fieldSetFlags()[5];
    }
    
    public boolean hasNetworkStatus() {
        return this.fieldSetFlags()[16];
    }
    
    public boolean hasOsVersion() {
        return this.fieldSetFlags()[11];
    }
    
    public boolean hasRefresh() {
        return this.fieldSetFlags()[15];
    }
    
    public boolean hasSessionId() {
        return this.fieldSetFlags()[3];
    }
    
    public boolean hasTestAds() {
        return this.fieldSetFlags()[13];
    }
    
    public boolean hasTestDevice() {
        return this.fieldSetFlags()[6];
    }
    
    public boolean hasTimezone() {
        return this.fieldSetFlags()[10];
    }
    
    public AdRequest$Builder setAdReportedIds(final List<AdReportedId> ca) {
        this.validate(this.fields()[4], ca);
        this.ca = ca;
        this.fieldSetFlags()[4] = true;
        return this;
    }
    
    public AdRequest$Builder setAdSpaceName(final CharSequence bz) {
        this.validate(this.fields()[2], bz);
        this.bZ = bz;
        this.fieldSetFlags()[2] = true;
        return this;
    }
    
    public AdRequest$Builder setAdViewContainer(final AdViewContainer ce) {
        this.validate(this.fields()[8], ce);
        this.ce = ce;
        this.fieldSetFlags()[8] = true;
        return this;
    }
    
    public AdRequest$Builder setAgentVersion(final CharSequence by) {
        this.validate(this.fields()[1], by);
        this.bY = by;
        this.fieldSetFlags()[1] = true;
        return this;
    }
    
    public AdRequest$Builder setApiKey(final CharSequence bx) {
        this.validate(this.fields()[0], bx);
        this.bX = bx;
        this.fieldSetFlags()[0] = true;
        return this;
    }
    
    public AdRequest$Builder setBindings(final List<Integer> cd) {
        this.validate(this.fields()[7], cd);
        this.cd = cd;
        this.fieldSetFlags()[7] = true;
        return this;
    }
    
    public AdRequest$Builder setCanDoSKAppStore(final boolean b) {
        this.validate(this.fields()[17], b);
        this.cn = b;
        this.fieldSetFlags()[17] = true;
        return this;
    }
    
    public AdRequest$Builder setDevicePlatform(final CharSequence ci) {
        this.validate(this.fields()[12], ci);
        this.ci = ci;
        this.fieldSetFlags()[12] = true;
        return this;
    }
    
    public AdRequest$Builder setFrequencyCapInfos(final List<FrequencyCapInfo> co) {
        this.validate(this.fields()[18], co);
        this.co = co;
        this.fieldSetFlags()[18] = true;
        return this;
    }
    
    public AdRequest$Builder setKeywords(final Map<CharSequence, CharSequence> ck) {
        this.validate(this.fields()[14], ck);
        this.ck = ck;
        this.fieldSetFlags()[14] = true;
        return this;
    }
    
    public AdRequest$Builder setLocale(final CharSequence cf) {
        this.validate(this.fields()[9], cf);
        this.cf = cf;
        this.fieldSetFlags()[9] = true;
        return this;
    }
    
    public AdRequest$Builder setLocation(final Location cb) {
        this.validate(this.fields()[5], cb);
        this.cb = cb;
        this.fieldSetFlags()[5] = true;
        return this;
    }
    
    public AdRequest$Builder setNetworkStatus(final int n) {
        this.validate(this.fields()[16], n);
        this.cm = n;
        this.fieldSetFlags()[16] = true;
        return this;
    }
    
    public AdRequest$Builder setOsVersion(final CharSequence ch) {
        this.validate(this.fields()[11], ch);
        this.ch = ch;
        this.fieldSetFlags()[11] = true;
        return this;
    }
    
    public AdRequest$Builder setRefresh(final boolean b) {
        this.validate(this.fields()[15], b);
        this.cl = b;
        this.fieldSetFlags()[15] = true;
        return this;
    }
    
    public AdRequest$Builder setSessionId(final long n) {
        this.validate(this.fields()[3], n);
        this.bU = n;
        this.fieldSetFlags()[3] = true;
        return this;
    }
    
    public AdRequest$Builder setTestAds(final TestAds cj) {
        this.validate(this.fields()[13], cj);
        this.cj = cj;
        this.fieldSetFlags()[13] = true;
        return this;
    }
    
    public AdRequest$Builder setTestDevice(final boolean b) {
        this.validate(this.fields()[6], b);
        this.cc = b;
        this.fieldSetFlags()[6] = true;
        return this;
    }
    
    public AdRequest$Builder setTimezone(final CharSequence cg) {
        this.validate(this.fields()[10], cg);
        this.cg = cg;
        this.fieldSetFlags()[10] = true;
        return this;
    }
}
