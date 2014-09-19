package com.fusepowered.util;

public class Mail
{
    private String alias;
    private String date;
    private String fuseId;
    private Gift gift;
    private int id;
    private String message;
    
    public Mail() {
        super();
    }
    
    public Mail(final int id, final String alias, final String fuseId, final String message, final String date, final Gift gift) {
        super();
        this.id = id;
        this.alias = alias;
        this.fuseId = fuseId;
        this.message = message;
        this.date = date;
        this.gift = gift;
    }
    
    public String getAlias() {
        return this.alias;
    }
    
    public String getDate() {
        return this.date;
    }
    
    public String getFuseId() {
        return this.fuseId;
    }
    
    public Gift getGift() {
        return this.gift;
    }
    
    public int getId() {
        return this.id;
    }
    
    public String getMessage() {
        return this.message;
    }
    
    public void setAlias(final String alias) {
        this.alias = alias;
    }
    
    public void setDate(final String date) {
        this.date = date;
    }
    
    public void setFuseId(final String fuseId) {
        this.fuseId = fuseId;
    }
    
    public void setGift(final Gift gift) {
        this.gift = gift;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setMessage(final String message) {
        this.message = message;
    }
    
    @Override
    public String toString() {
        return "Mail [id=" + this.id + ", alias=" + this.alias + ", fuseId=" + this.fuseId + ", message=" + this.message + ", date=" + this.date + ", gift=" + this.gift + ']';
    }
}
