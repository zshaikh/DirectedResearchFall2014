package com.flurry.android;

import org.apache.http.params.*;
import org.apache.http.client.*;
import java.security.*;
import java.io.*;
import org.apache.http.conn.scheme.*;
import org.apache.http.impl.conn.tsccm.*;
import org.apache.http.impl.client.*;
import org.apache.http.conn.*;

final class cn
{
    static HttpClient a(final HttpParams httpParams) {
        synchronized (cn.class) {
            try {
                final KeyStore instance = KeyStore.getInstance(KeyStore.getDefaultType());
                instance.load(null, null);
                final cv cv = new cv(instance);
                final SchemeRegistry schemeRegistry = new SchemeRegistry();
                schemeRegistry.register(new Scheme("http", (SocketFactory)PlainSocketFactory.getSocketFactory(), 80));
                schemeRegistry.register(new Scheme("https", (SocketFactory)cv, 443));
                final DefaultHttpClient defaultHttpClient = new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager(httpParams, schemeRegistry), httpParams);
                return (HttpClient)defaultHttpClient;
            }
            catch (Exception ex) {
                final DefaultHttpClient defaultHttpClient = new DefaultHttpClient(httpParams);
                return (HttpClient)defaultHttpClient;
            }
        }
    }
}
