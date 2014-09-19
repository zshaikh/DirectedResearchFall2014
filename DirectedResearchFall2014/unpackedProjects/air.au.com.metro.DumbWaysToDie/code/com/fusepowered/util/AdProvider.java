package com.fusepowered.util;

public class AdProvider
{
    private String ids;
    private int interstitial;
    private String keywords;
    private int provider_id;
    private boolean test;
    private int value;
    
    public String getIds() {
        return this.ids;
    }
    
    public int getInterstitial() {
        return this.interstitial;
    }
    
    public String getKeywords() {
        return this.keywords;
    }
    
    public int getProvider_id() {
        return this.provider_id;
    }
    
    public int getValue() {
        return this.value;
    }
    
    public boolean isTest() {
        return this.test;
    }
    
    public void setIds(final String ids) {
        this.ids = ids;
    }
    
    public void setInterstitial(final int interstitial) {
        this.interstitial = interstitial;
    }
    
    public void setKeywords(final String keywords) {
        this.keywords = keywords;
    }
    
    public void setProvider_id(final int provider_id) {
        this.provider_id = provider_id;
    }
    
    public void setTest(final boolean test) {
        this.test = test;
    }
    
    public void setValue(final int value) {
        this.value = value;
    }
    
    @Override
    public String toString() {
        return "AdProvider [provider_id=" + this.provider_id + ", test=" + this.test + ", value=" + this.value + ", interstitial=" + this.interstitial + ", keywords=" + this.keywords + ", ids=" + this.ids + ']';
    }
}
