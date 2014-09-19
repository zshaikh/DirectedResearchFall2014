package com.fusepowered.util;

import java.util.*;

public class InAppItem
{
    private boolean autofill;
    private boolean autotranslate;
    private String id;
    private ArrayList<InappCountryPrice> inappCountryPrices;
    private ArrayList<Locale> localeList;
    private String name;
    private float price;
    private String publishState;
    private String purchaseState;
    
    public InAppItem(final String id, final String name, final float price, final String publishState, final String purchaseState, final boolean autotranslate, final ArrayList<Locale> localeList, final boolean autofill, final ArrayList<InappCountryPrice> inappCountryPrices) {
        super();
        this.id = id;
        this.name = name;
        this.price = price;
        this.publishState = publishState;
        this.purchaseState = purchaseState;
        this.autotranslate = autotranslate;
        this.localeList = localeList;
        this.autofill = autofill;
        this.inappCountryPrices = inappCountryPrices;
    }
    
    public String getId() {
        return this.id;
    }
    
    public ArrayList<InappCountryPrice> getInappCountryPrices() {
        return this.inappCountryPrices;
    }
    
    public ArrayList<Locale> getLocaleList() {
        return this.localeList;
    }
    
    public String getName() {
        return this.name;
    }
    
    public float getPrice() {
        return this.price;
    }
    
    public String getPublishState() {
        return this.publishState;
    }
    
    public String getPurchaseState() {
        return this.purchaseState;
    }
    
    public boolean isAutofill() {
        return this.autofill;
    }
    
    public boolean isAutotranslate() {
        return this.autotranslate;
    }
    
    public void setAutofill(final boolean autofill) {
        this.autofill = autofill;
    }
    
    public void setAutotranslate(final boolean autotranslate) {
        this.autotranslate = autotranslate;
    }
    
    public void setId(final String id) {
        this.id = id;
    }
    
    public void setInappCountryPrices(final ArrayList<InappCountryPrice> inappCountryPrices) {
        this.inappCountryPrices = inappCountryPrices;
    }
    
    public void setLocaleList(final ArrayList<Locale> localeList) {
        this.localeList = localeList;
    }
    
    public void setName(final String name) {
        this.name = name;
    }
    
    public void setPrice(final float price) {
        this.price = price;
    }
    
    public void setPublishState(final String publishState) {
        this.publishState = publishState;
    }
    
    public void setPurchaseState(final String purchaseState) {
        this.purchaseState = purchaseState;
    }
    
    @Override
    public String toString() {
        return "InAppItem [id=" + this.id + ", name=" + this.name + ", price=" + this.price + ", publishState=" + this.publishState + ", purchaseState=" + this.purchaseState + ", autotranslate=" + this.autotranslate + ", localeList=" + this.localeList + ", autofill=" + this.autofill + ", inappCountryPrices=" + this.inappCountryPrices + ']';
    }
}
