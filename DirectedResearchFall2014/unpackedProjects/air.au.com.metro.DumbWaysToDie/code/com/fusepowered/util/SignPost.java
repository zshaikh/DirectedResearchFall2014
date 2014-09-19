package com.fusepowered.util;

public class SignPost
{
    private String alias;
    private String date;
    private String fuseId;
    private int id;
    private String message;
    private int messageId;
    private String url;
    
    public SignPost() {
        super();
    }
    
    public SignPost(final int id, final int messageId, final String alias, final String fuseId, final String url, final String message, final String date) {
        super();
        this.id = id;
        this.messageId = messageId;
        this.alias = alias;
        this.fuseId = fuseId;
        this.url = url;
        this.message = message;
        this.date = date;
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
    
    public int getId() {
        return this.id;
    }
    
    public String getMessage() {
        return this.message;
    }
    
    public int getMessageId() {
        return this.messageId;
    }
    
    public String getUrl() {
        return this.url;
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
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setMessage(final String message) {
        this.message = message;
    }
    
    public void setMessageId(final int messageId) {
        this.messageId = messageId;
    }
    
    public void setUrl(final String url) {
        this.url = url;
    }
    
    @Override
    public String toString() {
        return "SignPost [id=" + this.id + ", alias=" + this.alias + ", fuseId=" + this.fuseId + ", url=" + this.url + ", message=" + this.message + ", date=" + this.date + ']';
    }
}
