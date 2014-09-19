package com.fusepowered.util;

public class Gift
{
    private int amount;
    private int id;
    private String name;
    private String url;
    
    public Gift() {
        super();
    }
    
    public Gift(final int id, final String name, final String url, final int amount) {
        super();
        this.id = id;
        this.name = name;
        this.url = url;
        this.amount = amount;
    }
    
    public int getAmount() {
        return this.amount;
    }
    
    public int getId() {
        return this.id;
    }
    
    public String getName() {
        return this.name;
    }
    
    public String getUrl() {
        return this.url;
    }
    
    public void setAmount(final int amount) {
        this.amount = amount;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setName(final String name) {
        this.name = name;
    }
    
    public void setUrl(final String url) {
        this.url = url;
    }
    
    @Override
    public String toString() {
        return "Gift [id=" + this.id + ", name=" + this.name + ", url=" + this.url + ", amount=" + this.amount + ']';
    }
}
