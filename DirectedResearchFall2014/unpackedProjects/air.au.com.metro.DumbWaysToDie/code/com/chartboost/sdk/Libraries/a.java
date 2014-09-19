package com.chartboost.sdk.Libraries;

import android.graphics.*;
import java.util.*;

public class a
{
    private Map<String, a> a;
    private long b;
    private long c;
    
    public a() {
        super();
        this.a = Collections.synchronizedMap(new LinkedHashMap<String, a>(10, 1.5f, true));
        this.b = 0L;
        this.c = 1000000L;
        this.a(Runtime.getRuntime().maxMemory() / 4L);
    }
    
    private static long a(final Bitmap bitmap) {
        if (bitmap == null) {
            return 0L;
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }
    
    private void b() {
        if (this.b > this.c) {
            final Iterator<Map.Entry<String, a>> iterator = this.a.entrySet().iterator();
            while (iterator.hasNext()) {
                this.b -= a(iterator.next().getValue().b());
                iterator.remove();
                if (this.b <= this.c) {
                    return;
                }
            }
        }
    }
    
    public a a(final String s) {
        if (!this.a.containsKey(s)) {
            return null;
        }
        return this.a.get(s);
    }
    
    public void a() {
        this.a.clear();
    }
    
    public void a(final long c) {
        this.c = c;
    }
    
    public void a(final String s, final a a) {
        try {
            if (this.a.containsKey(s)) {
                this.b -= a(this.a.get(s).b());
            }
            this.a.put(s, a);
            this.b += a(a.b());
            this.b();
        }
        catch (Throwable t) {
            t.printStackTrace();
        }
    }
    
    public static class a
    {
        private Bitmap a;
        private int b;
        private boolean c;
        
        public a(final Bitmap bitmap, final int n) {
            super();
            this.a(bitmap);
            this.a(n);
            this.a(true);
        }
        
        public void a() {
            if (!this.c) {
                try {
                    if (this.a != null && !this.a.isRecycled()) {
                        this.a.recycle();
                    }
                }
                catch (Exception ex) {}
            }
        }
        
        public void a(final int b) {
            this.b = b;
        }
        
        public void a(final Bitmap a) {
            this.a = a;
        }
        
        public void a(final boolean c) {
            this.c = c;
        }
        
        public Bitmap b() {
            return this.a;
        }
        
        public int c() {
            return this.a.getWidth() * this.b;
        }
        
        public int d() {
            return this.a.getHeight() * this.b;
        }
    }
}
