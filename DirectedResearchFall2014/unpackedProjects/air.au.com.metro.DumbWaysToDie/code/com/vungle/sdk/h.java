package com.vungle.sdk;

import android.content.*;
import android.view.*;

final class h extends k
{
    b a;
    
    public h(final Context context, final String s, final Object o) throws g.a {
        super(context, s, o);
        (this.a = (b)o).a();
    }
    
    @Override
    protected final void a(final Context context) {
        final e e = new e(context);
        this.c = (View)e.a;
        this.b = e.b;
    }
    
    @Override
    protected final k.a d() {
        return new a((byte)0);
    }
    
    @Override
    protected final void e() {
        this.a.b();
    }
    
    final class a extends k.a
    {
        @Override
        public final boolean a(final String s, final String s2) {
            if (s.equalsIgnoreCase("close")) {
                h.this.a.b();
                return true;
            }
            if (s.equalsIgnoreCase("download")) {
                h.this.a.c();
                return true;
            }
            if (s.equalsIgnoreCase("replay")) {
                h.this.a.d();
                return true;
            }
            if (s.equalsIgnoreCase("custom")) {
                h.this.a.a(s2);
                return true;
            }
            return false;
        }
    }
    
    public interface b
    {
        void a();
        
        void a(String p0);
        
        void b();
        
        void c();
        
        void d();
    }
}
