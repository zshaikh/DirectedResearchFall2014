package com.google.ads.mediation.admob;

import com.google.ads.mediation.*;
import java.util.*;

public class AdMobAdapterExtras implements NetworkExtras
{
    private boolean a;
    private Map<String, Object> b;
    
    public AdMobAdapterExtras() {
        super();
        this.a = false;
        this.clearExtras();
    }
    
    public AdMobAdapterExtras(final AdMobAdapterExtras adMobAdapterExtras) {
        this();
        if (adMobAdapterExtras != null) {
            this.a = adMobAdapterExtras.a;
            this.b.putAll(adMobAdapterExtras.b);
        }
    }
    
    public AdMobAdapterExtras addExtra(final String s, final Object o) {
        this.b.put(s, o);
        return this;
    }
    
    public AdMobAdapterExtras clearExtras() {
        this.b = new HashMap<String, Object>();
        return this;
    }
    
    public Map<String, Object> getExtras() {
        return this.b;
    }
    
    @Deprecated
    public boolean getPlusOneOptOut() {
        return false;
    }
    
    public boolean getUseExactAdSize() {
        return this.a;
    }
    
    public AdMobAdapterExtras setExtras(final Map<String, Object> b) {
        if (b == null) {
            throw new IllegalArgumentException("Argument 'extras' may not be null");
        }
        this.b = b;
        return this;
    }
    
    @Deprecated
    public AdMobAdapterExtras setPlusOneOptOut(final boolean b) {
        return this;
    }
    
    public AdMobAdapterExtras setUseExactAdSize(final boolean a) {
        this.a = a;
        return this;
    }
}
