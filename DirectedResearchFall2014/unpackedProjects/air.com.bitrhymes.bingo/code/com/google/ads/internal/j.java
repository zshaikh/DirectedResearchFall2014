package com.google.ads.internal;

import android.content.*;
import java.io.*;
import java.net.*;
import com.google.ads.*;
import com.google.ads.util.*;
import org.json.*;

public class j implements Runnable
{
    private String a;
    private Context b;
    
    public j(final String a, final Context b) {
        super();
        this.a = a;
        this.b = b;
    }
    
    protected BufferedOutputStream a(final HttpURLConnection httpURLConnection) throws IOException {
        return new BufferedOutputStream(httpURLConnection.getOutputStream());
    }
    
    protected HttpURLConnection a(final URL url) throws IOException {
        final HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(true);
        AdUtil.a(httpURLConnection, this.b);
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        return httpURLConnection;
    }
    
    @Override
    public void run() {
        final String spec = ((m.a)m.a().b.a()).h.a();
        try {
            final HttpURLConnection a = this.a(new URL(spec));
            final byte[] bytes = new a(this.a).a().toString().getBytes();
            a.setFixedLengthStreamingMode(bytes.length);
            try {
                final BufferedOutputStream a2 = this.a(a);
                a2.write(bytes);
                a2.close();
                if (a.getResponseCode() != 200) {
                    com.google.ads.util.b.b("Got error response from BadAd backend: " + a.getResponseMessage());
                }
            }
            finally {
                a.disconnect();
            }
        }
        catch (IOException ex) {
            com.google.ads.util.b.b("Error reporting bad ad.", ex);
        }
    }
    
    public static class a
    {
        private final String a;
        
        public a(final String a) {
            super();
            this.a = a;
        }
        
        public JSONObject a() {
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("debugHeader", (Object)this.a);
                return jsonObject;
            }
            catch (JSONException ex) {
                com.google.ads.util.b.b("Could not build ReportAdJson from inputs.", (Throwable)ex);
                return jsonObject;
            }
        }
    }
}
