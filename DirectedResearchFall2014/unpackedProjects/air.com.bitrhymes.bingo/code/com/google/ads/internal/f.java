package com.google.ads.internal;

import android.content.*;
import android.preference.*;
import android.text.*;
import com.google.ads.util.*;
import java.io.*;
import java.net.*;
import com.google.ads.*;

public final class f implements Runnable
{
    private final l a;
    private final a b;
    private volatile boolean c;
    private boolean d;
    private String e;
    private Thread f;
    
    f(final l l) {
        this(l, (a)new a() {
            @Override
            public HttpURLConnection a(final URL url) throws IOException {
                return (HttpURLConnection)url.openConnection();
            }
        });
    }
    
    f(final l a, final a b) {
        super();
        this.f = null;
        this.a = a;
        this.b = b;
    }
    
    private void a(final Context context, final HttpURLConnection httpURLConnection) {
        final String string = PreferenceManager.getDefaultSharedPreferences(context).getString("drt", "");
        if (this.d && !TextUtils.isEmpty((CharSequence)string)) {
            if (AdUtil.a != 8) {
                httpURLConnection.addRequestProperty("Cookie", string);
                return;
            }
            httpURLConnection.addRequestProperty("X-Afma-drt-Cookie", string);
        }
    }
    
    private void a(final HttpURLConnection httpURLConnection) {
        this.b(httpURLConnection);
        this.f(httpURLConnection);
        this.g(httpURLConnection);
        this.h(httpURLConnection);
        this.i(httpURLConnection);
        this.e(httpURLConnection);
        this.j(httpURLConnection);
        this.k(httpURLConnection);
        this.l(httpURLConnection);
        this.d(httpURLConnection);
        this.c(httpURLConnection);
        this.m(httpURLConnection);
        this.n(httpURLConnection);
    }
    
    private void a(final HttpURLConnection httpURLConnection, final int n) throws IOException {
        if (300 <= n && n < 400) {
            final String headerField = httpURLConnection.getHeaderField("Location");
            if (headerField == null) {
                com.google.ads.util.b.c("Could not get redirect location from a " + n + " redirect.");
                this.a.b.a().a(AdRequest.ErrorCode.INTERNAL_ERROR);
                this.a();
                return;
            }
            this.a(httpURLConnection);
            this.e = headerField;
        }
        else if (n == 200) {
            this.a(httpURLConnection);
            final String trim = AdUtil.a(new InputStreamReader(httpURLConnection.getInputStream())).trim();
            com.google.ads.util.b.a("Response content is: " + trim);
            if (TextUtils.isEmpty((CharSequence)trim)) {
                com.google.ads.util.b.a("Response message is null or zero length: " + trim);
                this.a.b.a().a(AdRequest.ErrorCode.NO_FILL);
                this.a();
                return;
            }
            this.a.b.a().a(trim, this.e);
            this.a();
        }
        else {
            if (n == 400) {
                com.google.ads.util.b.c("Bad request");
                this.a.b.a().a(AdRequest.ErrorCode.INVALID_REQUEST);
                this.a();
                return;
            }
            com.google.ads.util.b.c("Invalid response code: " + n);
            this.a.b.a().a(AdRequest.ErrorCode.INTERNAL_ERROR);
            this.a();
        }
    }
    
    private void b() throws MalformedURLException, IOException {
        while (!this.c) {
            final HttpURLConnection a = this.b.a(new URL(this.e));
            try {
                this.a(this.a.a.a().f.a(), a);
                AdUtil.a(a, this.a.a.a().f.a());
                a.setInstanceFollowRedirects(false);
                a.connect();
                this.a(a, a.getResponseCode());
                continue;
            }
            finally {
                a.disconnect();
            }
            break;
        }
    }
    
    private void b(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Debug-Dialog");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            this.a.b.a().f(headerField);
        }
    }
    
    private void c(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("Content-Type");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            this.a.b.a().b(headerField);
        }
    }
    
    private void d(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Mediation");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            this.a.b.a().b(Boolean.valueOf(headerField));
        }
    }
    
    private void e(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if (TextUtils.isEmpty((CharSequence)headerField)) {
            return;
        }
        try {
            this.a.a.a().b.a().a((long)(Float.parseFloat(headerField) * 1000.0f));
        }
        catch (NumberFormatException ex) {
            com.google.ads.util.b.d("Could not get timeout value: " + headerField, ex);
        }
    }
    
    private void f(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Tracking-Urls");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            final String[] split = headerField.trim().split("\\s+");
            for (int length = split.length, i = 0; i < length; ++i) {
                this.a.a.a().b.a().b(split[i]);
            }
        }
    }
    
    private void g(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Manual-Tracking-Urls");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            final String[] split = headerField.trim().split("\\s+");
            for (int length = split.length, i = 0; i < length; ++i) {
                this.a.a.a().b.a().c(split[i]);
            }
        }
    }
    
    private void h(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            final String[] split = headerField.trim().split("\\s+");
            for (int length = split.length, i = 0; i < length; ++i) {
                this.a.b.a().a(split[i]);
            }
        }
    }
    
    private void i(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Refresh-Rate");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            d d;
            while (true) {
                try {
                    final float float1 = Float.parseFloat(headerField);
                    d = this.a.a.a().b.a();
                    if (float1 > 0.0f) {
                        d.a(float1);
                        if (!d.t()) {
                            d.g();
                        }
                        return;
                    }
                }
                catch (NumberFormatException ex) {
                    com.google.ads.util.b.d("Could not get refresh value: " + headerField, ex);
                    return;
                }
                if (d.t()) {
                    break;
                }
                return;
            }
            d.f();
        }
    }
    
    private void j(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Orientation");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            if (headerField.equals("portrait")) {
                this.a.b.a().a(AdUtil.b());
            }
            else if (headerField.equals("landscape")) {
                this.a.b.a().a(AdUtil.a());
            }
        }
    }
    
    private void k(final HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty((CharSequence)httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life"))) {
            return;
        }
        try {
            this.a.a.a().b.a().b(Long.parseLong(httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life")));
        }
        catch (NumberFormatException ex) {
            com.google.ads.util.b.e("Got bad value of Doritos cookie cache life from header: " + httpURLConnection.getHeaderField("X-Afma-Doritos-Cache-Life") + ". Using default value instead.");
        }
    }
    
    private void l(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("Cache-Control");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            this.a.b.a().c(headerField);
        }
    }
    
    private void m(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Ad-Size");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            try {
                final String[] split = headerField.split("x", 2);
                if (split.length != 2) {
                    com.google.ads.util.b.e("Could not parse size header: " + headerField);
                    return;
                }
                this.a.b.a().a(new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1])));
            }
            catch (NumberFormatException ex) {
                com.google.ads.util.b.e("Could not parse size header: " + headerField);
            }
        }
    }
    
    private void n(final HttpURLConnection httpURLConnection) {
        final String headerField = httpURLConnection.getHeaderField("X-Afma-Disable-Activation-And-Scroll");
        if (!TextUtils.isEmpty((CharSequence)headerField)) {
            this.a.b.a().a(headerField.equals("1"));
        }
    }
    
    void a() {
        this.c = true;
    }
    
    void a(final String e) {
        synchronized (this) {
            if (this.f == null) {
                this.e = e;
                this.c = false;
                (this.f = new Thread(this)).start();
            }
        }
    }
    
    public void a(final boolean d) {
        this.d = d;
    }
    
    @Override
    public void run() {
        try {
            this.b();
        }
        catch (MalformedURLException ex) {
            com.google.ads.util.b.b("Received malformed ad url from javascript.", ex);
            this.a.b.a().a(AdRequest.ErrorCode.INTERNAL_ERROR);
        }
        catch (IOException ex2) {
            com.google.ads.util.b.b("IOException connecting to ad url.", ex2);
            this.a.b.a().a(AdRequest.ErrorCode.NETWORK_ERROR);
        }
        catch (Throwable t) {
            com.google.ads.util.b.b("An unknown error occurred in AdResponseLoader.", t);
            this.a.b.a().a(AdRequest.ErrorCode.INTERNAL_ERROR);
        }
    }
    
    public interface a
    {
        HttpURLConnection a(URL p0) throws IOException;
    }
}
