package com.fusepowered.util;

public class Account
{
    private String accountId;
    private AccountType accountType;
    private String alias;
    public int errorCode;
    private String fuseId;
    
    public Account(final String alias) {
        super();
        this.alias = alias;
        this.accountId = null;
    }
    
    public String getAccountId() {
        return this.accountId;
    }
    
    public AccountType getAccountType() {
        return this.accountType;
    }
    
    public String getAlias() {
        return this.alias;
    }
    
    public String getFuseId() {
        return this.fuseId;
    }
    
    public void setAccountId(final String accountId) {
        this.accountId = accountId;
    }
    
    public void setAccountType(final AccountType accountType) {
        this.accountType = accountType;
    }
    
    public void setAlias(final String alias) {
        this.alias = alias;
    }
    
    public void setFuseId(final String fuseId) {
        this.fuseId = fuseId;
    }
    
    @Override
    public String toString() {
        return "Account [accountId=" + this.accountId + ", alias=" + this.alias + ", fuseId=" + this.fuseId + ", accountType=" + this.accountType + ']';
    }
}
