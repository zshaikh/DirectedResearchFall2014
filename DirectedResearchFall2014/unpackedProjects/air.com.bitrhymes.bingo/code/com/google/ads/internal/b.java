package com.google.ads.internal;

import com.google.ads.util.*;

public final class b extends Exception
{
    public final boolean a;
    
    public b(final String message, final boolean a) {
        super(message);
        this.a = a;
    }
    
    public b(final String message, final boolean a, final Throwable cause) {
        super(message, cause);
        this.a = a;
    }
    
    public void a(final String s) {
        com.google.ads.util.b.b(this.c(s));
        com.google.ads.util.b.a(null, this);
    }
    
    public void b(final String s) {
        final String c = this.c(s);
        b cause;
        if (this.a) {
            cause = this;
        }
        else {
            cause = null;
        }
        throw new RuntimeException(c, cause);
    }
    
    public String c(final String str) {
        if (this.a) {
            return str + ": " + this.getMessage();
        }
        return str;
    }
}
