package com.inmobi.androidsdk;

import android.location.*;
import java.util.*;

public class IMAdRequest
{
    private boolean a;
    private Location b;
    private String c;
    private boolean d;
    private String e;
    private String f;
    private Calendar g;
    private GenderType h;
    private String i;
    private String j;
    private int k;
    private EducationType l;
    private EthnicityType m;
    private int n;
    private String o;
    private Map<String, String> p;
    private Map<IMIDType, String> q;
    
    public IMAdRequest() {
        super();
        this.a = true;
        this.d = false;
        this.q = new HashMap<IMIDType, String>();
    }
    
    public void addIDType(final IMIDType imidType, final String s) {
        if (this.q != null) {
            this.q.put(imidType, s);
        }
    }
    
    public int getAge() {
        return this.n;
    }
    
    public String getAreaCode() {
        return this.f;
    }
    
    public Location getCurrentLocation() {
        return this.b;
    }
    
    public Calendar getDateOfBirth() {
        return this.g;
    }
    
    public EducationType getEducation() {
        return this.l;
    }
    
    public EthnicityType getEthnicity() {
        return this.m;
    }
    
    public GenderType getGender() {
        return this.h;
    }
    
    public String getIDType(final IMIDType imidType) {
        if (this.q != null) {
            return this.q.get(imidType);
        }
        return null;
    }
    
    public int getIncome() {
        return this.k;
    }
    
    public String getInterests() {
        return this.o;
    }
    
    public String getKeywords() {
        return this.i;
    }
    
    public String getLocationWithCityStateCountry() {
        return this.c;
    }
    
    public String getPostalCode() {
        return this.e;
    }
    
    public Map<String, String> getRequestParams() {
        return this.p;
    }
    
    public String getSearchString() {
        return this.j;
    }
    
    public boolean isLocationInquiryAllowed() {
        return this.a;
    }
    
    public boolean isTestMode() {
        return this.d;
    }
    
    public void removeIDType(final IMIDType imidType) {
        if (this.q != null) {
            this.q.remove(imidType);
        }
    }
    
    public void setAge(final int n) {
        this.n = n;
    }
    
    public void setAreaCode(final String f) {
        this.f = f;
    }
    
    public void setCurrentLocation(final Location b) {
        this.b = b;
    }
    
    public void setDateOfBirth(final Calendar g) {
        this.g = g;
    }
    
    public void setDateOfBirth(final Date time) {
        if (this.g == null) {
            this.g = Calendar.getInstance();
        }
        this.g.setTime(time);
    }
    
    public void setEducation(final EducationType l) {
        this.l = l;
    }
    
    public void setEthnicity(final EthnicityType m) {
        this.m = m;
    }
    
    public void setGender(final GenderType h) {
        this.h = h;
    }
    
    public void setIncome(final int k) {
        this.k = k;
    }
    
    public void setInterests(final String o) {
        this.o = o;
    }
    
    public void setKeywords(final String i) {
        this.i = i;
    }
    
    public void setLocationInquiryAllowed(final boolean a) {
        this.a = a;
    }
    
    public void setLocationWithCityStateCountry(final String obj, final String str, final String str2) {
        this.c = String.valueOf(obj) + "-" + str + "-" + str2;
    }
    
    public void setPostalCode(final String e) {
        this.e = e;
    }
    
    public void setRequestParams(final Map<String, String> p) {
        this.p = p;
    }
    
    public void setSearchString(final String j) {
        this.j = j;
    }
    
    public void setTestMode(final boolean d) {
        this.d = d;
    }
    
    public enum EducationType
    {
        Edu_BachelorsDegree("Edu_BachelorsDegree", 4), 
        Edu_DoctoralDegree("Edu_DoctoralDegree", 6), 
        Edu_HighSchool("Edu_HighSchool", 1), 
        Edu_InCollege("Edu_InCollege", 3), 
        Edu_MastersDegree("Edu_MastersDegree", 5), 
        Edu_None("Edu_None", 0), 
        Edu_Other("Edu_Other", 7), 
        Edu_SomeCollege("Edu_SomeCollege", 2);
        
        static {
            a = new EducationType[] { EducationType.Edu_None, EducationType.Edu_HighSchool, EducationType.Edu_SomeCollege, EducationType.Edu_InCollege, EducationType.Edu_BachelorsDegree, EducationType.Edu_MastersDegree, EducationType.Edu_DoctoralDegree, EducationType.Edu_Other };
        }
    }
    
    public enum ErrorCode
    {
        AD_CLICK_IN_PROGRESS("AD_CLICK_IN_PROGRESS", 2), 
        AD_DOWNLOAD_IN_PROGRESS("AD_DOWNLOAD_IN_PROGRESS", 1), 
        AD_FETCH_TIMEOUT("AD_FETCH_TIMEOUT", 3), 
        AD_RENDERING_TIMEOUT("AD_RENDERING_TIMEOUT", 4), 
        INTERNAL_ERROR("INTERNAL_ERROR", 6), 
        INVALID_APP_ID("INVALID_APP_ID", 8), 
        INVALID_REQUEST("INVALID_REQUEST", 0), 
        NETWORK_ERROR("NETWORK_ERROR", 5), 
        NO_FILL("NO_FILL", 7);
        
        static {
            a = new ErrorCode[] { ErrorCode.INVALID_REQUEST, ErrorCode.AD_DOWNLOAD_IN_PROGRESS, ErrorCode.AD_CLICK_IN_PROGRESS, ErrorCode.AD_FETCH_TIMEOUT, ErrorCode.AD_RENDERING_TIMEOUT, ErrorCode.NETWORK_ERROR, ErrorCode.INTERNAL_ERROR, ErrorCode.NO_FILL, ErrorCode.INVALID_APP_ID };
        }
    }
    
    public enum EthnicityType
    {
        Eth_Asian("Eth_Asian", 2), 
        Eth_Black("Eth_Black", 3), 
        Eth_Hispanic("Eth_Hispanic", 4), 
        Eth_Mixed("Eth_Mixed", 1), 
        Eth_NativeAmerican("Eth_NativeAmerican", 5), 
        Eth_None("Eth_None", 0), 
        Eth_Other("Eth_Other", 7), 
        Eth_White("Eth_White", 6);
        
        static {
            a = new EthnicityType[] { EthnicityType.Eth_None, EthnicityType.Eth_Mixed, EthnicityType.Eth_Asian, EthnicityType.Eth_Black, EthnicityType.Eth_Hispanic, EthnicityType.Eth_NativeAmerican, EthnicityType.Eth_White, EthnicityType.Eth_Other };
        }
    }
    
    public enum GenderType
    {
        FEMALE("FEMALE", 2), 
        MALE("MALE", 1), 
        NONE("NONE", 0);
        
        static {
            a = new GenderType[] { GenderType.NONE, GenderType.MALE, GenderType.FEMALE };
        }
    }
    
    public enum IMIDType
    {
        ID_LOGIN("ID_LOGIN", 0), 
        ID_SESSION("ID_SESSION", 1);
        
        static {
            a = new IMIDType[] { IMIDType.ID_LOGIN, IMIDType.ID_SESSION };
        }
    }
}
