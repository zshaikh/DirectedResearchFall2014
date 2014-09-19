package com.bitrhymes.iab.util;

public class IabResult
{
    String mMessage;
    int mResponse;
    
    public IabResult(final int mResponse, final String obj) {
        super();
        this.mResponse = mResponse;
        if (obj == null || obj.trim().length() == 0) {
            this.mMessage = IabHelper.getResponseDesc(mResponse);
            return;
        }
        this.mMessage = String.valueOf(obj) + " (response: " + IabHelper.getResponseDesc(mResponse) + ")";
    }
    
    public String getMessage() {
        return this.mMessage;
    }
    
    public int getResponse() {
        return this.mResponse;
    }
    
    public boolean isFailure() {
        return !this.isSuccess();
    }
    
    public boolean isSuccess() {
        return this.mResponse == 0;
    }
    
    @Override
    public String toString() {
        return "IabResult: " + this.getMessage();
    }
}
