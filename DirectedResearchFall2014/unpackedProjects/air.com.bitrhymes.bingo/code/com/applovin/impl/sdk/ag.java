package com.applovin.impl.sdk;

import java.net.*;
import org.apache.http.client.utils.*;
import com.applovin.sdk.*;
import org.apache.http.*;
import java.util.*;
import org.json.*;
import java.io.*;

class ag extends an
{
    private final Socket a;
    
    ag(final Socket a, final AppLovinSdkImpl appLovinSdkImpl) {
        super("HandleWebRequest", appLovinSdkImpl);
        if (a == null) {
            throw new IllegalArgumentException("No clientspecified");
        }
        this.a = a;
    }
    
    private void a(final String s) {
        final int index = s.indexOf(32);
        final int index2 = s.indexOf(32, index + 2);
        String substring = null;
        List<Object> list = null;
        Label_0106: {
            if (index <= 0 || index2 <= index) {
                break Label_0106;
            }
            substring = s.substring(index + 1, index2);
            while (true) {
                try {
                    while (true) {
                        list = (List<Object>)URLEncodedUtils.parse(new URI(substring), "utf-8");
                        this.f.d(this.d, "Handling request: " + substring);
                        if (substring.startsWith("/ad")) {
                            this.a(list);
                            return;
                        }
                        break Label_0106;
                        substring = "";
                        continue;
                    }
                }
                catch (Exception ex) {
                    this.f.e(this.d, "Unable to parse query string", ex);
                    list = Collections.emptyList();
                    continue;
                }
                break;
            }
        }
        if (substring.startsWith("/conv")) {
            this.b(list);
            return;
        }
        if (substring.startsWith("/test.js")) {
            this.b();
            return;
        }
        this.a(new aj(404, this.e, this.a), am.a);
    }
    
    private void a(final List list) {
        this.a(new ah(this, AppLovinAdSize.fromString(b("size", list)), new ai(this, list), this.e, list), am.a);
    }
    
    private static String b(final String s, final List list) {
        for (final NameValuePair nameValuePair : list) {
            if (s.equals(nameValuePair.getName())) {
                return nameValuePair.getValue();
            }
        }
        return null;
    }
    
    private void b() {
        this.a(new aj(200, "applovin_serverTest = '5.1.1';", "application/javascript", this.e, this.a), am.a);
    }
    
    private void b(final List list) {
        new ax(b("advertiser_id", list), this.e).run();
        this.a(new aj(200, this.e, this.a), am.a);
    }
    
    private static byte[] b(final int i, final int j, final String str) {
        return ("HTTP/1.1 " + i + " OK\r\n" + "Content-Type: " + str + "; charset=utf-8\r\n" + "Content-Length: " + j + "\r\n" + "\r\n").getBytes();
    }
    
    private static byte[] b(final int n, final String s) {
        return b(n, 0, s);
    }
    
    private static String c(final AppLovinAd appLovinAd) {
        return appLovinAd.getHtml().replace("applovin://com.applovin.sdk/adservice/track_click", appLovinAd.getClickTrackerUrl());
    }
    
    private static String d(final AppLovinAd appLovinAd) {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("html", (Object)appLovinAd.getHtml());
            jsonObject.put("redirect_url", (Object)appLovinAd.getDestinationUrl());
            jsonObject.put("click_url", (Object)appLovinAd.getClickTrackerUrl());
            return jsonObject.toString();
        }
        catch (JSONException cause) {
            throw new RuntimeException("Programming error: unable to create JSON message", (Throwable)cause);
        }
    }
    
    @Override
    public void run() {
        final byte[] array = new byte[2048];
        try {
            final int read = new BufferedInputStream(this.a.getInputStream(), 2048).read(array);
            String s;
            if (read > 0) {
                s = new String(array, 0, read);
            }
            else {
                s = "";
            }
            this.a(s);
        }
        catch (IOException ex) {
            this.f.e(this.d, "Unable to communicate with the client", ex);
        }
    }
}
