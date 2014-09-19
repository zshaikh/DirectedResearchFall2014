package com.fusepowered.util;

import java.text.*;
import java.util.*;

public class ChatMessage
{
    private static SimpleDateFormat sdf;
    private String alias;
    private int date;
    private String fuseId;
    private int id;
    private int level;
    private String message;
    
    static {
        ChatMessage.sdf = new SimpleDateFormat("yyyy MM dd HH:mm:ss");
    }
    
    public ChatMessage() {
        super();
    }
    
    public ChatMessage(final int id, final String alias, final String fuseId, final int level, final String message, final int date) {
        super();
        this.id = id;
        this.alias = alias;
        this.fuseId = fuseId;
        this.level = level;
        this.message = message;
        this.date = date;
    }
    
    public String getAlias() {
        return this.alias;
    }
    
    public int getDate() {
        return this.date;
    }
    
    public String getFuseId() {
        return this.fuseId;
    }
    
    public int getId() {
        return this.id;
    }
    
    public int getLevel() {
        return this.level;
    }
    
    public String getMessage() {
        return this.message;
    }
    
    public void setAlias(final String alias) {
        this.alias = alias;
    }
    
    public void setDate(final int date) {
        this.date = date;
    }
    
    public void setFuseId(final String fuseId) {
        this.fuseId = fuseId;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setLevel(final int level) {
        this.level = level;
    }
    
    public void setMessage(final String message) {
        this.message = message;
    }
    
    @Override
    public String toString() {
        return "ChatMessage [id=" + this.id + ", alias=" + this.alias + ", fuseId=" + this.fuseId + ", level=" + this.level + ", message=" + this.message + ", date=" + (ChatMessage.sdf.format(new Date(1000L * this.date)) + " UTC") + ']';
    }
}
