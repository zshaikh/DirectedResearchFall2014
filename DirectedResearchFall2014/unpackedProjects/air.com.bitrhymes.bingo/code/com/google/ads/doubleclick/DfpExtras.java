package com.google.ads.doubleclick;

import com.google.ads.mediation.admob.*;
import java.util.*;

public class DfpExtras extends AdMobAdapterExtras
{
    private String a;
    
    public DfpExtras() {
        super();
    }
    
    public DfpExtras(final DfpExtras dfpExtras) {
        super(dfpExtras);
        if (dfpExtras != null) {
            this.a = dfpExtras.a;
        }
    }
    
    @Override
    public DfpExtras addExtra(final String s, final Object o) {
        super.addExtra(s, o);
        return this;
    }
    
    @Override
    public DfpExtras clearExtras() {
        super.clearExtras();
        return this;
    }
    
    public String getPublisherProvidedId() {
        return this.a;
    }
    
    @Override
    public DfpExtras setExtras(final Map<String, Object> extras) {
        super.setExtras(extras);
        return this;
    }
    
    @Override
    public DfpExtras setPlusOneOptOut(final boolean plusOneOptOut) {
        super.setPlusOneOptOut(plusOneOptOut);
        return this;
    }
    
    public DfpExtras setPublisherProvidedId(final String a) {
        this.a = a;
        return this;
    }
    
    @Override
    public DfpExtras setUseExactAdSize(final boolean useExactAdSize) {
        super.setUseExactAdSize(useExactAdSize);
        return this;
    }
}
