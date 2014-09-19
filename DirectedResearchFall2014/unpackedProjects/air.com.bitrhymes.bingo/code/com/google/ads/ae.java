package com.google.ads;

import android.content.*;
import java.net.*;
import java.io.*;
import com.google.ads.util.*;

public class ae implements Runnable
{
    private final Context a;
    private final String b;
    
    public ae(final String b, final Context a) {
        super();
        this.b = b;
        this.a = a;
    }
    
    protected HttpURLConnection a(final URL url) throws IOException {
        return (HttpURLConnection)url.openConnection();
    }
    
    @Override
    public void run() {
        try {
            com.google.ads.util.b.a("Pinging URL: " + this.b);
            final HttpURLConnection a = this.a(new URL(this.b));
            try {
                AdUtil.a(a, this.a);
                a.setInstanceFollowRedirects(true);
                a.connect();
                final int responseCode = a.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    com.google.ads.util.b.e("Did not receive 2XX (got " + responseCode + ") from pinging URL: " + this.b);
                }
            }
            finally {
                a.disconnect();
            }
        }
        catch (Throwable t) {
            com.google.ads.util.b.d("Unable to ping the URL: " + this.b, t);
        }
    }
}
