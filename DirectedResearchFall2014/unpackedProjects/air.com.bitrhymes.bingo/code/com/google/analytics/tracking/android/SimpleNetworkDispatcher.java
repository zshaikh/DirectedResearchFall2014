package com.google.analytics.tracking.android;

import android.content.*;
import android.os.*;
import android.text.*;
import org.apache.http.message.*;
import org.apache.http.entity.*;
import java.net.*;
import java.io.*;
import java.util.*;
import org.apache.http.client.*;
import org.apache.http.*;
import android.net.*;

class SimpleNetworkDispatcher implements Dispatcher
{
    private static final String USER_AGENT_TEMPLATE = "%s/%s (Linux; U; Android %s; %s; %s Build/%s)";
    private final Context ctx;
    private final HttpClientFactory httpClientFactory;
    private final String userAgent;
    
    SimpleNetworkDispatcher(final AnalyticsStore analyticsStore, final HttpClientFactory httpClientFactory, final Context context) {
        this(httpClientFactory, context);
    }
    
    SimpleNetworkDispatcher(final HttpClientFactory httpClientFactory, final Context context) {
        super();
        this.ctx = context.getApplicationContext();
        this.userAgent = this.createUserAgentString("GoogleAnalytics", "2.0", Build$VERSION.RELEASE, Utils.getLanguage(Locale.getDefault()), Build.MODEL, Build.ID);
        this.httpClientFactory = httpClientFactory;
    }
    
    private HttpEntityEnclosingRequest buildRequest(final String str, final String str2) {
        if (TextUtils.isEmpty((CharSequence)str)) {
            Log.w("Empty hit, discarding.");
            return null;
        }
        final String string = str2 + "?" + str;
        BasicHttpEntityEnclosingRequest basicHttpEntityEnclosingRequest;
        if (string.length() < 2036) {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("GET", string);
        }
        else {
            basicHttpEntityEnclosingRequest = new BasicHttpEntityEnclosingRequest("POST", str2);
            try {
                ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).setEntity((HttpEntity)new StringEntity(str));
            }
            catch (UnsupportedEncodingException ex) {
                Log.w("Encoding error, discarding hit");
                return null;
            }
        }
        ((HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest).addHeader("User-Agent", this.userAgent);
        return (HttpEntityEnclosingRequest)basicHttpEntityEnclosingRequest;
    }
    
    private URL getUrl(final Hit hit) {
        if (TextUtils.isEmpty((CharSequence)hit.getHitUrl())) {
            return null;
        }
        try {
            return new URL(hit.getHitUrl());
        }
        catch (MalformedURLException ex) {
            try {
                return new URL("http://www.google-analytics.com/collect");
            }
            catch (MalformedURLException ex2) {
                return null;
            }
        }
    }
    
    private void logDebugInformation(final boolean b, final HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        if (!b) {
            return;
        }
        final StringBuffer sb = new StringBuffer();
        final Header[] allHeaders = httpEntityEnclosingRequest.getAllHeaders();
        for (int length = allHeaders.length, i = 0; i < length; ++i) {
            sb.append(allHeaders[i].toString()).append("\n");
        }
        sb.append(httpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
        while (true) {
            if (httpEntityEnclosingRequest.getEntity() == null) {
                break Label_0157;
            }
            try {
                final InputStream content = httpEntityEnclosingRequest.getEntity().getContent();
                if (content != null) {
                    final int available = content.available();
                    if (available > 0) {
                        final byte[] array = new byte[available];
                        content.read(array);
                        sb.append("POST:\n");
                        sb.append(new String(array)).append("\n");
                    }
                }
                Log.i(sb.toString());
            }
            catch (IOException ex) {
                Log.w("Error Writing hit to log...");
                continue;
            }
            break;
        }
    }
    
    String createUserAgentString(final String s, final String s2, final String s3, final String s4, final String s5, final String s6) {
        return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", s, s2, s3, s4, s5, s6);
    }
    
    @Override
    public int dispatchHits(final List<Hit> list) {
        int n = 0;
        final int min = Math.min(list.size(), 40);
        int n2 = 0;
    Label_0234_Outer:
        while (true) {
            if (n2 >= min) {
                return n;
            }
            final HttpClient instance = this.httpClientFactory.newInstance();
            final Hit hit = list.get(n2);
            final URL url = this.getUrl(hit);
        Label_0096_Outer:
            while (true) {
                Label_0240: {
                    if (url == null) {
                        if (Log.isDebugEnabled()) {
                            Log.w("No destination: discarding hit: " + hit.getHitParams());
                        }
                        else {
                            Log.w("No destination: discarding hit.");
                        }
                        ++n;
                    }
                    else {
                        final HttpHost httpHost = new HttpHost(url.getHost(), url.getPort(), url.getProtocol());
                        final String path = url.getPath();
                        String postProcessHit;
                        if (TextUtils.isEmpty((CharSequence)hit.getHitParams())) {
                            postProcessHit = "";
                        }
                        else {
                            postProcessHit = HitBuilder.postProcessHit(hit, System.currentTimeMillis());
                        }
                        final HttpEntityEnclosingRequest buildRequest = this.buildRequest(postProcessHit, path);
                        if (buildRequest == null) {
                            ++n;
                        }
                        else {
                            buildRequest.addHeader("Host", httpHost.toHostString());
                            this.logDebugInformation(Log.isDebugEnabled(), buildRequest);
                            if (postProcessHit.length() > 8192) {
                                Log.w("Hit too long (> 8192 bytes)--not sent");
                                break Label_0234;
                            }
                            break Label_0240;
                        }
                    }
                    while (true) {
                        ++n2;
                        continue Label_0234_Outer;
                        ++n;
                        continue;
                    }
                    try {
                        final HttpHost httpHost;
                        final HttpEntityEnclosingRequest buildRequest;
                        final HttpResponse execute = instance.execute(httpHost, (HttpRequest)buildRequest);
                        if (execute.getStatusLine().getStatusCode() != 200) {
                            Log.w("Bad response: " + execute.getStatusLine().getStatusCode());
                            return n;
                        }
                        continue Label_0096_Outer;
                    }
                    catch (ClientProtocolException ex2) {
                        Log.w("ClientProtocolException sending hit; discarding hit...");
                        continue Label_0096_Outer;
                    }
                    catch (IOException ex) {
                        Log.w("Exception sending hit: " + ex.getClass().getSimpleName());
                        Log.w(ex.getMessage());
                        return n;
                    }
                }
                break;
            }
        }
    }
    
    @Override
    public boolean okToDispatch() {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)this.ctx.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            Log.vDebug("...no network connectivity");
            return false;
        }
        return true;
    }
}
