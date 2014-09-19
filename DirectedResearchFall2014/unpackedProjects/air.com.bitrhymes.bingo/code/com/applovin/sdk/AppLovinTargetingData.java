package com.applovin.sdk;

import android.location.*;

public interface AppLovinTargetingData
{
    public static final String EDUCATION_BACHELORS = "bachelors";
    public static final String EDUCATION_COLLEGE = "college";
    public static final String EDUCATION_DOCTORAL = "doctoral";
    public static final String EDUCATION_HIGH_SCHOOL = "high_school";
    public static final String EDUCATION_IN_COLLEGE = "in_college";
    public static final String EDUCATION_MASTERS = "masters";
    public static final String EDUCATION_NONE = "none";
    public static final String EDUCATION_OTHER = "other";
    public static final String ETHNICITY_ASIAN = "asian";
    public static final String ETHNICITY_BLACK = "black";
    public static final String ETHNICITY_HISPANIC = "hispanic";
    public static final String ETHNICITY_MIXED = "mixed";
    public static final String ETHNICITY_NATIVE_AMERICAN = "native_american";
    public static final String ETHNICITY_NONE = "none";
    public static final String ETHNICITY_OTHER = "other";
    public static final String ETHNICITY_WHITE = "white";
    public static final char GENDER_FEMALE = 'f';
    public static final char GENDER_MALE = 'm';
    public static final String MARITAL_STATUS_DIVORCED = "divorced";
    public static final String MARITAL_STATUS_MARRIED = "married";
    public static final String MARITAL_STATUS_NONE = "none";
    public static final String MARITAL_STATUS_SINGLE = "single";
    public static final String MARITAL_STATUS_WIDOWED = "widowed";
    
    void clearData();
    
    void putExtra(String p0, String p1);
    
    void setBirthYear(int p0);
    
    void setCarrier(String p0);
    
    void setCountry(String p0);
    
    void setEducation(String p0);
    
    void setEthnicity(String p0);
    
    void setGender(char p0);
    
    void setIncome(String p0);
    
    void setInterests(String... p0);
    
    void setKeywords(String... p0);
    
    void setLanguage(String p0);
    
    void setLocation(Location p0);
    
    void setMaritalStatus(String p0);
}
