package com.google.ads.internal;

import java.util.*;
import android.os.*;
import java.io.*;

public class e
{
    private final String a;
    private HashMap<String, String> b;
    
    public e(final Bundle bundle) {
        super();
        this.a = bundle.getString("action");
        this.b = this.a(bundle.getSerializable("params"));
    }
    
    public e(final String a) {
        super();
        this.a = a;
    }
    
    public e(final String s, final HashMap<String, String> b) {
        this(s);
        this.b = b;
    }
    
    private HashMap<String, String> a(final Serializable s) {
        if (s instanceof HashMap) {
            return (HashMap<String, String>)s;
        }
        return null;
    }
    
    public Bundle a() {
        final Bundle bundle = new Bundle();
        bundle.putString("action", this.a);
        bundle.putSerializable("params", (Serializable)this.b);
        return bundle;
    }
    
    public String b() {
        return this.a;
    }
    
    public HashMap<String, String> c() {
        return this.b;
    }
}
