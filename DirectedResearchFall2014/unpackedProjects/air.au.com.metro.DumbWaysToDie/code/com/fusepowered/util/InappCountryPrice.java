package com.fusepowered.util;

public class InappCountryPrice
{
    private String country;
    private float price;
    
    public InappCountryPrice(final String country, final float price) {
        super();
        this.country = country;
        this.price = price;
    }
    
    public String getCountry() {
        return this.country;
    }
    
    public float getPrice() {
        return this.price;
    }
    
    public void setCountry(final String country) {
        this.country = country;
    }
    
    public void setPrice(final float price) {
        this.price = price;
    }
    
    @Override
    public String toString() {
        return "InappCountryPrice [country=" + this.country + ", price=" + this.price + ']';
    }
}
