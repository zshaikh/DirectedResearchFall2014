package com.chartboost.sdk.impl;

import java.util.regex.*;
import java.text.*;
import java.util.*;
import java.lang.reflect.*;

public class ad
{
    public static af a() {
        final ab b = b();
        b.a(Date.class, new i(b));
        b.a(as.class, new g(b));
        b.a(at.class, new h());
        b.a(byte[].class, new h());
        return b;
    }
    
    static ab b() {
        final ab ab = new ab();
        ab.a(Object[].class, new m(ab));
        ab.a(Boolean.class, new q());
        ab.a(au.class, new a(ab));
        ab.a(av.class, new b(ab));
        ab.a(y.class, new d(ab));
        ab.a(z.class, new e(ab));
        ab.a(Iterable.class, new f(ab));
        ab.a(Map.class, new j(ab));
        ab.a(aw.class, new k(ab));
        ab.a(ax.class, new l(ab));
        ab.a(Number.class, new q());
        ab.a(ay.class, new n(ab));
        ab.a(Pattern.class, new o(ab));
        ab.a(String.class, new p());
        ab.a(UUID.class, new r(ab));
        return ab;
    }
    
    private static class a extends c
    {
        a(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final au au = (au)o;
            final w w = new w();
            w.a("$code", au.a());
            this.a.a(w, sb);
        }
    }
    
    private static class b extends c
    {
        b(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final av av = (av)o;
            final w w = new w();
            w.a("$code", av.a());
            w.a("$scope", av.b());
            this.a.a(w, sb);
        }
    }
    
    private abstract static class c extends aa
    {
        protected final af a;
        
        c(final af a) {
            super();
            this.a = a;
        }
    }
    
    private static class d extends c
    {
        d(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append("{ ");
            final y y = (y)o;
            final Iterator<String> iterator = y.keySet().iterator();
            int n = 1;
            while (iterator.hasNext()) {
                final String s = iterator.next();
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append(" , ");
                }
                ac.a(sb, s);
                sb.append(" : ");
                this.a.a(y.a(s), sb);
            }
            sb.append("}");
        }
    }
    
    private static class e extends c
    {
        e(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final z z = (z)o;
            final w w = new w();
            w.a("$ref", z.b());
            w.a("$id", z.a());
            this.a.a(w, sb);
        }
    }
    
    private static class f extends c
    {
        f(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            int n = 1;
            sb.append("[ ");
            for (final Object next : (Iterable)o) {
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append(" , ");
                }
                this.a.a(next, sb);
            }
            sb.append("]");
        }
    }
    
    private static class g extends c
    {
        g(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final as as = (as)o;
            final w w = new w();
            w.a("$ts", as.a());
            w.a("$inc", as.b());
            this.a.a(w, sb);
        }
    }
    
    private static class h extends aa
    {
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append("<Binary Data>");
        }
    }
    
    private static class i extends c
    {
        i(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final Date date = (Date)o;
            final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
            this.a.a(new w("$date", simpleDateFormat.format(date)), sb);
        }
    }
    
    private static class j extends c
    {
        j(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append("{ ");
            final Iterator<Map.Entry<Object, V>> iterator = ((Map)o).entrySet().iterator();
            int n = 1;
            while (iterator.hasNext()) {
                final Map.Entry<Object, V> entry = iterator.next();
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append(" , ");
                }
                ac.a(sb, entry.getKey().toString());
                sb.append(" : ");
                this.a.a(entry.getValue(), sb);
            }
            sb.append("}");
        }
    }
    
    private static class k extends c
    {
        k(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            this.a.a(new w("$maxKey", 1), sb);
        }
    }
    
    private static class l extends c
    {
        l(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            this.a.a(new w("$minKey", 1), sb);
        }
    }
    
    private static class m extends c
    {
        m(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append("[ ");
            for (int i = 0; i < Array.getLength(o); ++i) {
                if (i > 0) {
                    sb.append(" , ");
                }
                this.a.a(Array.get(o, i), sb);
            }
            sb.append("]");
        }
    }
    
    private static class n extends c
    {
        n(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            this.a.a(new w("$oid", o.toString()), sb);
        }
    }
    
    private static class o extends c
    {
        o(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final w w = new w();
            w.a("$regex", o.toString());
            if (((Pattern)o).flags() != 0) {
                w.a("$options", ag.a(((Pattern)o).flags()));
            }
            this.a.a(w, sb);
        }
    }
    
    private static class p extends aa
    {
        @Override
        public void a(final Object o, final StringBuilder sb) {
            ac.a(sb, (String)o);
        }
    }
    
    private static class q extends aa
    {
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append(o.toString());
        }
    }
    
    private static class r extends c
    {
        r(final af af) {
            super(af);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final UUID uuid = (UUID)o;
            final w w = new w();
            w.a("$uuid", uuid.toString());
            this.a.a(w, sb);
        }
    }
}
