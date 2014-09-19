package com.bitrhymes.iab.util;

public class IabException extends Exception
{
    private static final long serialVersionUID = 1L;
    IabResult mResult;
    
    public IabException(final int n, final String s) {
        this(new IabResult(n, s));
    }
    
    public IabException(final int n, final String s, final Exception ex) {
        this(new IabResult(n, s), ex);
    }
    
    public IabException(final IabResult iabResult) {
        this(iabResult, null);
    }
    
    public IabException(final IabResult mResult, final Exception cause) {
        super(mResult.getMessage(), cause);
        this.mResult = mResult;
    }
    
    public IabResult getResult() {
        return this.mResult;
    }
}
