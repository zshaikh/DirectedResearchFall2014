package com.fusepowered.m2.m2l.factories;

import org.apache.http.impl.client.*;
import org.apache.http.params.*;

public class HttpClientFactory
{
    public static final int SOCKET_SIZE = 8192;
    private static HttpClientFactory instance;
    
    static {
        HttpClientFactory.instance = new HttpClientFactory();
    }
    
    public static DefaultHttpClient create() {
        return HttpClientFactory.instance.internalCreate(0);
    }
    
    public static DefaultHttpClient create(final int n) {
        return HttpClientFactory.instance.internalCreate(n);
    }
    
    @Deprecated
    public static void setInstance(final HttpClientFactory instance) {
        HttpClientFactory.instance = instance;
    }
    
    protected DefaultHttpClient internalCreate(final int n) {
        final BasicHttpParams basicHttpParams = new BasicHttpParams();
        if (n > 0) {
            HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, n);
            HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, n);
        }
        HttpConnectionParams.setSocketBufferSize((HttpParams)basicHttpParams, 8192);
        return new DefaultHttpClient((HttpParams)basicHttpParams);
    }
}
