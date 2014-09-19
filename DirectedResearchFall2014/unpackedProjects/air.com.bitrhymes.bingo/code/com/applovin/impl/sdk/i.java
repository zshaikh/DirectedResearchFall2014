package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import android.content.*;
import java.util.*;
import android.location.*;

class i implements AppLovinTargetingData
{
    private final AppLovinSdkImpl a;
    private final Context b;
    
    i(final AppLovinSdkImpl a) {
        super();
        if (a == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.a = a;
        this.b = a.getApplicationContext();
    }
    
    private static String a(final String[] array) {
        if (array != null && array.length > 0) {
            final StringBuffer sb = new StringBuffer();
            for (final String s : array) {
                if (bc.d(s)) {
                    sb.append(bc.c(s));
                    sb.append(",");
                }
            }
            if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            return sb.toString();
        }
        return "";
    }
    
    private void a(final String s, final String s2) {
        if (bc.d(s)) {
            final SharedPreferences$Editor edit = this.b.getSharedPreferences("applovin.sdk.targeting", 0).edit();
            edit.putString(s, bc.c(s2));
            edit.commit();
        }
    }
    
    Map a() {
        final HashMap<Object, String> hashMap = new HashMap<Object, String>();
        final Map all = this.b.getSharedPreferences("applovin.sdk.targeting", 0).getAll();
        if (all != null && all.size() > 0) {
            for (final Map.Entry<Object, V> entry : all.entrySet()) {
                hashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        return hashMap;
    }
    
    @Override
    public void clearData() {
        final SharedPreferences$Editor edit = this.b.getSharedPreferences("applovin.sdk.targeting", 0).edit();
        edit.clear();
        edit.commit();
    }
    
    @Override
    public void putExtra(final String str, final String s) {
        if (bc.d(str) && bc.d(s)) {
            this.a("ex_" + str, s);
        }
    }
    
    @Override
    public void setBirthYear(final int i) {
        if (i < 9999 && i > 1900) {
            this.a("yob", Integer.toString(i));
        }
    }
    
    @Override
    public void setCarrier(final String s) {
        if (bc.d(s)) {
            this.a("carrier", s);
        }
    }
    
    @Override
    public void setCountry(final String s) {
        if (bc.d(s) && s.length() == 2) {
            this.a("country", s.toUpperCase());
        }
    }
    
    @Override
    public void setEducation(final String s) {
        if (bc.d(s)) {
            this.a("education", s);
        }
    }
    
    @Override
    public void setEthnicity(final String s) {
        if (bc.d(s)) {
            this.a("ethnicity", s);
        }
    }
    
    @Override
    public void setGender(final char c) {
        String s;
        if (c == 'm') {
            s = "m";
        }
        else if (c == 'f') {
            s = "f";
        }
        else {
            s = "u";
        }
        this.a("gender", s);
    }
    
    @Override
    public void setIncome(final String s) {
        if (bc.d(s)) {
            this.a("income", s);
        }
    }
    
    @Override
    public void setInterests(final String... array) {
        if (array != null && array.length > 0) {
            this.a("interests", a(array));
        }
    }
    
    @Override
    public void setKeywords(final String... array) {
        if (array != null && array.length > 0) {
            this.a("keywords", a(array));
        }
    }
    
    @Override
    public void setLanguage(final String s) {
        if (bc.d(s)) {
            this.a("language", s.toLowerCase());
        }
    }
    
    @Override
    public void setLocation(final Location location) {
        if (location != null) {
            this.a("lat", Double.toString(location.getLatitude()));
            this.a("lon", Double.toString(location.getLongitude()));
        }
    }
    
    @Override
    public void setMaritalStatus(final String s) {
        if (bc.d(s)) {
            this.a("marital_status", s);
        }
    }
}
