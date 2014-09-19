package com.fusepowered.util;

public class Player
{
    private String accountId;
    private String alias;
    private boolean canAttack;
    private String fuseId;
    private int level;
    private int pending;
    private String type;
    
    public String getAccountId() {
        return this.accountId;
    }
    
    public String getAlias() {
        return this.alias;
    }
    
    public boolean getCanAttack() {
        return this.canAttack;
    }
    
    public String getFuseId() {
        return this.fuseId;
    }
    
    public int getLevel() {
        return this.level;
    }
    
    public int getPending() {
        return this.pending;
    }
    
    public String getType() {
        return this.type;
    }
    
    public void setAccountId(final String accountId) {
        this.accountId = accountId;
    }
    
    public void setAlias(final String alias) {
        this.alias = alias;
    }
    
    public void setCanAttack(final boolean canAttack) {
        this.canAttack = canAttack;
    }
    
    public void setFuseId(final String fuseId) {
        this.fuseId = fuseId;
    }
    
    public void setLevel(final int level) {
        this.level = level;
    }
    
    public void setPending(final int pending) {
        this.pending = pending;
    }
    
    public void setType(final String type) {
        this.type = type;
    }
    
    @Override
    public String toString() {
        return "Player [fuseId=" + this.fuseId + ", accountId=" + this.accountId + ", alias=" + this.alias + ", type=" + this.type + ", level=" + this.level + ", pending=" + this.pending + ", canAttack=" + this.canAttack + ']';
    }
}
