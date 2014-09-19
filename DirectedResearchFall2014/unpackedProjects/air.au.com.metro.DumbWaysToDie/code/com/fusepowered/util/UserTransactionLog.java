package com.fusepowered.util;

import java.text.*;
import java.util.*;

public class UserTransactionLog
{
    private static SimpleDateFormat sdf;
    private String alias;
    private int amountLost;
    private int amountWon;
    private int date;
    private FuseAttackRobberyEventType eventType;
    private String fuseId;
    private int id;
    private int level;
    private boolean wasWon;
    
    static {
        UserTransactionLog.sdf = new SimpleDateFormat("yyyy MM dd HH:mm:ss");
    }
    
    public UserTransactionLog() {
        super();
    }
    
    public UserTransactionLog(final int id, final String alias, final String fuseId, final int level, final FuseAttackRobberyEventType eventType, final boolean wasWon, final int amountWon, final int amountLost, final int date) {
        super();
        this.id = id;
        this.alias = alias;
        this.fuseId = fuseId;
        this.level = level;
        this.eventType = eventType;
        this.wasWon = wasWon;
        this.amountWon = amountWon;
        this.amountLost = amountLost;
        this.date = date;
    }
    
    public String getAlias() {
        return this.alias;
    }
    
    public int getAmountLost() {
        return this.amountLost;
    }
    
    public int getAmountWon() {
        return this.amountWon;
    }
    
    public int getDate() {
        return this.date;
    }
    
    public FuseAttackRobberyEventType getEventType() {
        return this.eventType;
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
    
    public boolean getWasWon() {
        return this.wasWon;
    }
    
    public void setAlias(final String alias) {
        this.alias = alias;
    }
    
    public void setAmountLost(final int amountLost) {
        this.amountLost = amountLost;
    }
    
    public void setAmountWon(final int amountWon) {
        this.amountWon = amountWon;
    }
    
    public void setDate(final int date) {
        this.date = date;
    }
    
    public void setEventType(final FuseAttackRobberyEventType eventType) {
        this.eventType = eventType;
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
    
    public void setWasWon(final boolean wasWon) {
        this.wasWon = wasWon;
    }
    
    @Override
    public String toString() {
        return "UserTransactionLog [id=" + this.id + ", alias=" + this.alias + ", fuseId=" + this.fuseId + ", level=" + this.level + ", eventType=" + this.eventType + ", wasWon=" + this.wasWon + ", amountWon=" + this.amountWon + ", amountLost=" + this.amountLost + ", date=" + (UserTransactionLog.sdf.format(new Date(1000L * this.date)) + " UTC") + ']';
    }
}
