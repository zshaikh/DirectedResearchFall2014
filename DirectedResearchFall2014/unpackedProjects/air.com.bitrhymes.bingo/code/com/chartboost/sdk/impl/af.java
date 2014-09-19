package com.chartboost.sdk.impl;

import java.util.regex.*;
import java.text.*;
import java.util.*;
import java.lang.reflect.*;

public class af
{
    public static ah a() {
        final ad b = b();
        b.a(Date.class, new i(b));
        b.a(au.class, new g(b));
        b.a(av.class, new h(null));
        b.a(byte[].class, new h(null));
        return b;
    }
    
    static ad b() {
        final ad ad = new ad();
        ad.a(Object[].class, new m(ad));
        ad.a(Boolean.class, new q(null));
        ad.a(aw.class, new a(ad));
        ad.a(ax.class, new b(ad));
        ad.a(aa.class, new d(ad));
        ad.a(ab.class, new e(ad));
        ad.a(Iterable.class, new f(ad));
        ad.a(Map.class, new j(ad));
        ad.a(ay.class, new k(ad));
        ad.a(az.class, new l(ad));
        ad.a(Number.class, new q(null));
        ad.a(ba.class, new n(ad));
        ad.a(Pattern.class, new o(ad));
        ad.a(String.class, new p(null));
        ad.a(UUID.class, new r(ad));
        return ad;
    }
    
    private static class a extends c
    {
        a(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final aw aw = (aw)o;
            final y y = new y();
            y.a("$code", aw.a());
            this.a.a(y, sb);
        }
    }
    
    private static class b extends c
    {
        b(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final ax ax = (ax)o;
            final y y = new y();
            y.a("$code", ax.a());
            y.a("$scope", ax.b());
            this.a.a(y, sb);
        }
    }
    
    private abstract static class c extends ac
    {
        protected final ah a;
        
        c(final ah a) {
            super();
            this.a = a;
        }
    }
    
    private static class d extends c
    {
        d(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append("{ ");
            final aa aa = (aa)o;
            final Iterator<String> iterator = aa.keySet().iterator();
            int n = 1;
            while (iterator.hasNext()) {
                final String s = iterator.next();
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append(" , ");
                }
                ae.a(sb, s);
                sb.append(" : ");
                this.a.a(aa.a(s), sb);
            }
            sb.append("}");
        }
    }
    
    private static class e extends c
    {
        e(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final ab ab = (ab)o;
            final y y = new y();
            y.a("$ref", ab.b());
            y.a("$id", ab.a());
            this.a.a(y, sb);
        }
    }
    
    private static class f extends c
    {
        f(final ah ah) {
            super(ah);
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
        g(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final au au = (au)o;
            final y y = new y();
            y.a("$ts", au.a());
            y.a("$inc", au.b());
            this.a.a(y, sb);
        }
    }
    
    private static class h extends ac
    {
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append("<Binary Data>");
        }
    }
    
    private static class i extends c
    {
        i(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final Date date = (Date)o;
            final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpleDateFormat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
            this.a.a(new y("$date", simpleDateFormat.format(date)), sb);
        }
    }
    
    private static class j extends c
    {
        j(final ah ah) {
            super(ah);
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
                ae.a(sb, entry.getKey().toString());
                sb.append(" : ");
                this.a.a(entry.getValue(), sb);
            }
            sb.append("}");
        }
    }
    
    private static class k extends c
    {
        k(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            this.a.a(new y("$maxKey", 1), sb);
        }
    }
    
    private static class l extends c
    {
        l(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            this.a.a(new y("$minKey", 1), sb);
        }
    }
    
    private static class m extends c
    {
        m(final ah ah) {
            super(ah);
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
        n(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            this.a.a(new y("$oid", o.toString()), sb);
        }
    }
    
    private static class o extends c
    {
        o(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final y y = new y();
            y.a("$regex", o.toString());
            if (((Pattern)o).flags() != 0) {
                y.a("$options", ai.a(((Pattern)o).flags()));
            }
            this.a.a(y, sb);
        }
    }
    
    private static class p extends ac
    {
        @Override
        public void a(final Object o, final StringBuilder sb) {
            ae.a(sb, (String)o);
        }
    }
    
    private static class q extends ac
    {
        @Override
        public void a(final Object o, final StringBuilder sb) {
            sb.append(o.toString());
        }
    }
    
    private static class r extends c
    {
        r(final ah ah) {
            super(ah);
        }
        
        @Override
        public void a(final Object o, final StringBuilder sb) {
            final UUID uuid = (UUID)o;
            final y y = new y();
            y.a("$uuid", uuid.toString());
            this.a.a(y, sb);
        }
    }
}
