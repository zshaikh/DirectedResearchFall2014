package com.inmobi.androidsdk.impl.net;

public interface IMHttpRequestCallback
{
    public static final int HTTP_FAILURE = 1;
    public static final int HTTP_SUCCESS;
    
    void notifyResult(int p0, Object p1);
}
