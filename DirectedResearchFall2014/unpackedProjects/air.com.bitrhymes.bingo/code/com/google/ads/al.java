package com.google.ads;

import android.net.*;
import android.content.*;

public class al
{
    private String a;
    private String b;
    private String[] c;
    private ai d;
    private ah e;
    
    public al(final ai d) {
        super();
        this.a = "googleads.g.doubleclick.net";
        this.b = "/pagead/ads";
        this.c = new String[] { ".doubleclick.net", ".googleadservices.com", ".googlesyndication.com" };
        this.e = new ah();
        this.d = d;
    }
    
    private Uri a(final Uri uri, final Context context, final String s, final boolean b) throws am {
        try {
            if (uri.getQueryParameter("ms") != null) {
                throw new am("Query parameter already exists: ms");
            }
        }
        catch (UnsupportedOperationException ex) {
            throw new am("Provided Uri is not in a valid state");
        }
        String s2;
        if (b) {
            s2 = this.d.a(context, s);
        }
        else {
            s2 = this.d.a(context);
        }
        return this.a(uri, "ms", s2);
    }
    
    private Uri a(final Uri uri, final String str, final String str2) throws UnsupportedOperationException {
        final String string = uri.toString();
        int n = string.indexOf("&adurl");
        if (n == -1) {
            n = string.indexOf("?adurl");
        }
        if (n != -1) {
            return Uri.parse(string.substring(0, n + 1) + str + "=" + str2 + "&" + string.substring(n + 1));
        }
        return uri.buildUpon().appendQueryParameter(str, str2).build();
    }
    
    public Uri a(final Uri uri, final Context context) throws am {
        try {
            return this.a(uri, context, uri.getQueryParameter("ai"), true);
        }
        catch (UnsupportedOperationException ex) {
            throw new am("Provided Uri is not in a valid state");
        }
    }
    
    public void a(final String s) {
        this.c = s.split(",");
    }
    
    public boolean a(final Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            final String host = uri.getHost();
            final String[] c = this.c;
            for (int length = c.length, i = 0; i < length; ++i) {
                if (host.endsWith(c[i])) {
                    return true;
                }
            }
            return false;
        }
        catch (NullPointerException ex) {
            return false;
        }
    }
}
