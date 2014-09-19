package com.google.ads.mediation;

import com.google.ads.*;
import android.content.*;
import java.util.*;
import android.location.*;

public class MediationAdRequest
{
    private AdRequest a;
    private boolean b;
    private boolean c;
    
    public MediationAdRequest(final AdRequest a, final Context context, final boolean c) {
        super();
        this.a = a;
        this.c = c;
        if (context == null) {
            this.b = true;
            return;
        }
        this.b = a.isTestDevice(context);
    }
    
    public Integer getAgeInYears() {
        if (this.a.getBirthday() == null) {
            return null;
        }
        final Calendar instance = Calendar.getInstance();
        final Calendar instance2 = Calendar.getInstance();
        instance.setTime(this.a.getBirthday());
        final Integer value = instance2.get(1) - instance.get(1);
        if (instance2.get(6) < instance.get(6)) {
            return value - 1;
        }
        return value;
    }
    
    public Date getBirthday() {
        return this.a.getBirthday();
    }
    
    public AdRequest.Gender getGender() {
        return this.a.getGender();
    }
    
    public Set<String> getKeywords() {
        if (this.a.getKeywords() == null) {
            return null;
        }
        return Collections.unmodifiableSet((Set<? extends String>)this.a.getKeywords());
    }
    
    public Location getLocation() {
        if (this.a.getLocation() == null || !this.c) {
            return null;
        }
        return new Location(this.a.getLocation());
    }
    
    public boolean isTesting() {
        return this.b;
    }
}
