package com.chartboost.sdk.impl;

import org.apache.http.client.*;
import android.app.*;
import java.util.concurrent.atomic.*;
import java.util.concurrent.*;
import java.util.*;
import android.os.*;
import android.content.pm.*;
import com.chartboost.sdk.*;
import org.apache.http.impl.client.*;
import android.content.*;
import org.apache.http.conn.ssl.*;
import org.apache.http.conn.*;
import org.apache.http.conn.scheme.*;
import org.apache.http.impl.conn.tsccm.*;
import org.apache.http.params.*;

public class l
{
    private static ExecutorService a;
    private static ThreadFactory b;
    private static HttpClient c;
    
    static {
        l.a = null;
        l.b = null;
        l.c = null;
    }
    
    public static ExecutorService a() {
        if (l.b == null) {
            l.b = new ThreadFactory() {
                private final AtomicInteger a = new AtomicInteger(1);
                
                @Override
                public Thread newThread(final Runnable target) {
                    return new Thread(target, "Chartboost Thread #" + this.a.getAndIncrement());
                }
            };
        }
        if (l.a == null) {
            l.a = Executors.newFixedThreadPool(5, l.b);
        }
        return l.a;
    }
    
    private static String b(final Application application, final String str) {
        try {
            final String versionName = application.getPackageManager().getPackageInfo(application.getPackageName(), 0).versionName;
            final StringBuilder sb = new StringBuilder();
            sb.append(application.getPackageName());
            sb.append("/");
            sb.append(versionName);
            sb.append(" (");
            sb.append("Linux; U; Android ");
            sb.append(Build$VERSION.RELEASE);
            sb.append("; ");
            sb.append(Locale.getDefault());
            sb.append("; ");
            sb.append(Build.PRODUCT);
            sb.append(")");
            if (str != null) {
                sb.append(" ");
                sb.append(str);
            }
            return sb.toString();
        }
        catch (PackageManager$NameNotFoundException cause) {
            throw new RuntimeException((Throwable)cause);
        }
    }
    
    protected static HttpClient b() {
        if (l.c != null) {
            return l.c;
        }
        try {
            return l.c = (HttpClient)new DefaultHttpClient() {
                private final /* synthetic */ Application a = (Application)Chartboost.sharedChartboost().getContext().getApplicationContext();
                
                protected SocketFactory a() {
                    try {
                        final Class<?> forName = Class.forName("android.net.SSLSessionCache");
                        return (SocketFactory)Class.forName("android.net.SSLCertificateSocketFactory").getMethod("getHttpSocketFactory", Integer.TYPE, forName).invoke(null, Chartboost.sharedChartboost().getTimeout(), forName.getConstructor(Context.class).newInstance(this.a));
                    }
                    catch (Exception ex) {
                        return (SocketFactory)SSLSocketFactory.getSocketFactory();
                    }
                }
                
                protected ClientConnectionManager createClientConnectionManager() {
                    final SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme("http", (SocketFactory)PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", this.a(), 443));
                    final HttpParams params = this.getParams();
                    HttpConnectionParams.setConnectionTimeout(params, Chartboost.sharedChartboost().getTimeout());
                    HttpConnectionParams.setSoTimeout(params, Chartboost.sharedChartboost().getTimeout());
                    HttpProtocolParams.setUserAgent(params, b(this.a, HttpProtocolParams.getUserAgent(params)));
                    return (ClientConnectionManager)new ThreadSafeClientConnManager(params, schemeRegistry);
                }
            };
        }
        catch (Exception ex) {
            try {
                final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                final ClientConnectionManager connectionManager = ((HttpClient)defaultHttpClient).getConnectionManager();
                final HttpParams params = ((HttpClient)defaultHttpClient).getParams();
                return l.c = (HttpClient)new DefaultHttpClient((ClientConnectionManager)new ThreadSafeClientConnManager(params, connectionManager.getSchemeRegistry()), params);
            }
            catch (Exception ex2) {
                return l.c = (HttpClient)new DefaultHttpClient();
            }
        }
    }
}
