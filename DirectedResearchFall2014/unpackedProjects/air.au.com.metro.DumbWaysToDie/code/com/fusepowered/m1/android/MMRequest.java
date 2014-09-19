package com.fusepowered.m1.android;

import android.location.*;
import java.util.*;

public final class MMRequest
{
    public static final String EDUCATION_ASSOCIATES = "associates";
    public static final String EDUCATION_BACHELORS = "bachelors";
    public static final String EDUCATION_DOCTORATE = "doctorate";
    public static final String EDUCATION_HIGH_SCHOOL = "highschool";
    public static final String EDUCATION_IN_COLLEGE = "incollege";
    public static final String EDUCATION_MASTERS = "masters";
    public static final String EDUCATION_OTHER = "other";
    public static final String EDUCATION_SOME_COLLEGE = "somecollege";
    public static final String ETHNICITY_ASIAN = "asian";
    public static final String ETHNICITY_BLACK = "black";
    public static final String ETHNICITY_HISPANIC = "hispanic";
    public static final String ETHNICITY_INDIAN = "indian";
    public static final String ETHNICITY_MIDDLE_EASTERN = "middleeastern";
    public static final String ETHNICITY_NATIVE_AMERICAN = "nativeamerican";
    public static final String ETHNICITY_OTHER = "other";
    public static final String ETHNICITY_PACIFIC_ISLANDER = "pacificislander";
    public static final String ETHNICITY_WHITE = "white";
    public static final String GENDER_FEMALE = "female";
    public static final String GENDER_MALE = "male";
    public static final String GENDER_OTHER = "other";
    public static final String KEY_AGE = "age";
    public static final String KEY_CHILDREN = "children";
    public static final String KEY_EDUCATION = "education";
    public static final String KEY_ETHNICITY = "ethnicity";
    public static final String KEY_GENDER = "gender";
    public static final String KEY_HEIGHT = "hsht";
    public static final String KEY_INCOME = "income";
    public static final String KEY_KEYWORDS = "keywords";
    public static final String KEY_MARITAL_STATUS = "marital";
    public static final String KEY_ORIENTATION = "orientation";
    public static final String KEY_POLITICS = "politics";
    public static final String KEY_VENDOR = "vendor";
    public static final String KEY_WIDTH = "hswd";
    public static final String KEY_ZIP_CODE = "zip";
    public static final String MARITAL_DIVORCED = "divorced";
    public static final String MARITAL_ENGAGED = "engaged";
    public static final String MARITAL_MARRIED = "married";
    public static final String MARITAL_OTHER = "other";
    public static final String MARITAL_RELATIONSHIP = "relationship";
    public static final String MARITAL_SINGLE = "single";
    public static final String ORIENTATION_BISEXUAL = "bisexual";
    public static final String ORIENTATION_GAY = "gay";
    public static final String ORIENTATION_OTHER = "other";
    public static final String ORIENTATION_STRAIGHT = "straight";
    static Location location;
    String age;
    String children;
    String education;
    String ethnicity;
    String gender;
    String income;
    String keywords;
    String marital;
    String orientation;
    String politics;
    private Map<String, String> values;
    String vendor;
    String zip;
    
    public MMRequest() {
        super();
        this.age = null;
        this.children = null;
        this.education = null;
        this.ethnicity = null;
        this.gender = null;
        this.income = null;
        this.keywords = null;
        this.marital = null;
        this.orientation = null;
        this.politics = null;
        this.vendor = null;
        this.zip = null;
        this.values = new HashMap<String, String>();
    }
    
    public static Location getUserLocation() {
        return MMRequest.location;
    }
    
    static void insertLocation(final Map<String, String> map) {
        if (MMRequest.location != null) {
            map.put("lat", Double.toString(MMRequest.location.getLatitude()));
            map.put("long", Double.toString(MMRequest.location.getLongitude()));
            if (MMRequest.location.hasAccuracy()) {
                map.put("ha", Float.toString(MMRequest.location.getAccuracy()));
                map.put("va", Float.toString(MMRequest.location.getAccuracy()));
            }
            if (MMRequest.location.hasSpeed()) {
                map.put("spd", Float.toString(MMRequest.location.getSpeed()));
            }
            if (MMRequest.location.hasBearing()) {
                map.put("brg", Float.toString(MMRequest.location.getBearing()));
            }
            if (MMRequest.location.hasAltitude()) {
                map.put("alt", Double.toString(MMRequest.location.getAltitude()));
            }
            map.put("tslr", Long.toString(MMRequest.location.getTime()));
            map.put("loc", "true");
            map.put("lsrc", MMRequest.location.getProvider());
            return;
        }
        map.put("loc", "false");
    }
    
    public static void setUserLocation(final Location location) {
        if (location == null) {
            return;
        }
        MMRequest.location = location;
    }
    
    void getUrlParams(final Map<String, String> map) {
        for (final Map.Entry<String, String> entry : this.values.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        if (this.age != null) {
            map.put("age", this.age);
        }
        if (this.children != null) {
            map.put("children", this.children);
        }
        if (this.education != null) {
            map.put("education", this.education);
        }
        if (this.ethnicity != null) {
            map.put("ethnicity", this.ethnicity);
        }
        if (this.gender != null) {
            map.put("gender", this.gender);
        }
        if (this.income != null) {
            map.put("income", this.income);
        }
        if (this.keywords != null) {
            map.put("keywords", this.keywords);
        }
        if (this.marital != null) {
            map.put("marital", this.marital);
        }
        if (this.orientation != null) {
            map.put("orientation", this.orientation);
        }
        if (this.politics != null) {
            map.put("politics", this.politics);
        }
        if (this.vendor != null) {
            map.put("vendor", this.vendor);
        }
        if (this.zip != null) {
            map.put("zip", this.zip);
        }
    }
    
    public MMRequest put(final String s, final String s2) {
        if (s.equals("age")) {
            this.age = s2;
            return this;
        }
        if (s.equals("children")) {
            this.children = s2;
            return this;
        }
        if (s.equals("education")) {
            this.education = s2;
            return this;
        }
        if (s.equals("ethnicity")) {
            this.ethnicity = s2;
            return this;
        }
        if (s.equals("gender")) {
            this.gender = s2;
            return this;
        }
        if (s.equals("income")) {
            this.income = s2;
            return this;
        }
        if (s.equals("keywords")) {
            this.keywords = s2;
            return this;
        }
        if (s.equals("marital")) {
            this.marital = s2;
            return this;
        }
        if (s.equals("orientation")) {
            this.orientation = s2;
            return this;
        }
        if (s.equals("politics")) {
            this.politics = s2;
            return this;
        }
        if (s.equals("vendor")) {
            this.vendor = s2;
            return this;
        }
        if (s.equals("zip")) {
            this.zip = s2;
            return this;
        }
        if (s2 != null) {
            this.values.put(s, s2);
            return this;
        }
        this.values.remove(s);
        return this;
    }
    
    public void setAge(final String age) {
        this.age = age;
    }
    
    public void setChildren(final String children) {
        this.children = children;
    }
    
    public void setEducation(final String education) {
        this.education = education;
    }
    
    public void setEthnicity(final String ethnicity) {
        this.ethnicity = ethnicity;
    }
    
    public void setGender(final String gender) {
        this.gender = gender;
    }
    
    public void setIncome(final String income) {
        this.income = income;
    }
    
    public void setKeywords(final String keywords) {
        this.keywords = keywords;
    }
    
    public void setMarital(final String marital) {
        this.marital = marital;
    }
    
    public void setMetaValues(final Map<String, String> map) {
        if (map != null) {
            for (final Map.Entry<String, String> entry : map.entrySet()) {
                this.put(entry.getKey(), entry.getValue());
            }
        }
    }
    
    public void setOrientation(final String orientation) {
        this.orientation = orientation;
    }
    
    public void setPolitics(final String politics) {
        this.politics = politics;
    }
    
    public void setVendor(final String vendor) {
        this.vendor = vendor;
    }
    
    public void setZip(final String zip) {
        this.zip = zip;
    }
}
