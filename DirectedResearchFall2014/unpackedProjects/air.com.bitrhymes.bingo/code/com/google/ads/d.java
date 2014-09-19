package com.google.ads;

import java.util.concurrent.*;
import android.os.*;

public class d
{
    private c a;
    private long b;
    
    public d() {
        super();
        this.a = null;
        this.b = -1L;
    }
    
    public void a(final c a, final int n) {
        this.a = a;
        this.b = TimeUnit.MILLISECONDS.convert(n, TimeUnit.SECONDS) + SystemClock.elapsedRealtime();
    }
    
    public boolean a() {
        return this.a != null && SystemClock.elapsedRealtime() < this.b;
    }
    
    public c b() {
        return this.a;
    }
}
