package com.vungle.sdk;

import android.content.*;
import android.view.*;

final class i extends k
{
    b a;
    
    public i(final Context context, final String s, final Object o) throws g.a {
        super(context, s, o);
        this.a = (b)o;
    }
    
    @Override
    protected final void a(final Context context) {
        final f f = new f(context);
        this.c = (View)f.a;
        this.b = f.b;
    }
    
    @Override
    protected final k.a d() {
        return new a((byte)0);
    }
    
    @Override
    protected final void e() {
        this.a.a();
    }
    
    final class a extends k.a
    {
        @Override
        public final boolean a(final String s, final String s2) {
            if (s.equalsIgnoreCase("close")) {
                i.this.a.b();
                return true;
            }
            if (s.equalsIgnoreCase("watch")) {
                i.this.a.a();
                return true;
            }
            if (s.equalsIgnoreCase("download")) {
                i.this.a.c();
                return true;
            }
            if (s.equalsIgnoreCase("custom")) {
                i.this.a.a(s2);
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
    }
}
