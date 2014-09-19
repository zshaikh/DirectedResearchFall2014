package com.chartboost.sdk.impl;

import java.util.regex.*;
import java.lang.reflect.*;
import java.util.concurrent.atomic.*;
import java.util.*;

public class an implements ak
{
    protected ar a;
    
    private void a(final String s, final int n, final byte[] array) {
        this.a((byte)5, s);
        int length = array.length;
        if (n == 2) {
            length += 4;
        }
        this.a.c(length);
        this.a.write(n);
        if (n == 2) {
            this.a.c(length - 4);
        }
        final int a = this.a.a();
        this.a.write(array);
        ag.a(this.a.a() - a, array.length);
    }
    
    private void a(final String s, final Iterable iterable) {
        this.a((byte)4, s);
        final int a = this.a.a();
        this.a.c(0);
        final Iterator<Object> iterator = iterable.iterator();
        int i = 0;
        while (iterator.hasNext()) {
            this.b(String.valueOf(i), iterator.next());
            ++i;
        }
        this.a.write(0);
        this.a.a(a, this.a.a() - a);
    }
    
    private void a(final String s, final String s2, final byte b) {
        this.a(b, s);
        this.b(s2);
    }
    
    private void a(final String s, final Map map) {
        this.a((byte)3, s);
        final int a = this.a.a();
        this.a.c(0);
        for (final Map.Entry<Object, V> entry : map.entrySet()) {
            this.b(entry.getKey().toString(), entry.getValue());
        }
        this.a.write(0);
        this.a.a(a, this.a.a() - a);
    }
    
    private void a(final String s, final Pattern pattern) {
        this.a((byte)11, s);
        this.c(pattern.pattern());
        this.c(ai.a(pattern.flags()));
    }
    
    private void c(final String s, final Object o) {
        this.a((byte)4, s);
        final int a = this.a.a();
        this.a.c(0);
        for (int length = Array.getLength(o), i = 0; i < length; ++i) {
            this.b(String.valueOf(i), Array.get(o, i));
        }
        this.a.write(0);
        this.a.a(a, this.a.a() - a);
    }
    
    private void d(final String s) {
        this.a((byte)(-1), s);
    }
    
    private void e(final String s) {
        this.a((byte)127, s);
    }
    
    public void a() {
        this.a = null;
    }
    
    protected void a(final byte b, final String s) {
        this.a.write(b);
        this.c(s);
    }
    
    public void a(final ar a) {
        if (this.a != null) {
            throw new IllegalStateException("in the middle of something");
        }
        this.a = a;
    }
    
    protected void a(final String s) {
        this.a((byte)10, s);
    }
    
    protected void a(final String s, final au au) {
        this.a((byte)17, s);
        this.a.c(au.b());
        this.a.c(au.a());
    }
    
    protected void a(final String s, final av av) {
        this.a(s, av.a(), av.b());
    }
    
    protected void a(final String s, final aw aw) {
        this.a((byte)13, s);
        this.a.a();
        this.b(aw.a());
    }
    
    protected void a(final String s, final ax ax) {
        this.a((byte)15, s);
        final int a = this.a.a();
        this.a.c(0);
        this.b(ax.a());
        this.b(ax.b());
        this.a.a(a, this.a.a() - a);
    }
    
    protected void a(final String s, final ba ba) {
        this.a((byte)7, s);
        this.a.d(ba.c());
        this.a.d(ba.d());
        this.a.d(ba.e());
    }
    
    protected void a(final String s, final bb bb) {
        this.a(s, bb.a(), (byte)14);
    }
    
    protected void a(final String s, final Boolean b) {
        this.a((byte)8, s);
        final ar a = this.a;
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 0;
        }
        a.write(n);
    }
    
    protected void a(final String s, final Number n) {
        if (n instanceof Integer || n instanceof Short || n instanceof Byte || n instanceof AtomicInteger) {
            this.a((byte)16, s);
            this.a.c(n.intValue());
            return;
        }
        if (n instanceof Long || n instanceof AtomicLong) {
            this.a((byte)18, s);
            this.a.a(n.longValue());
            return;
        }
        if (n instanceof Float || n instanceof Double) {
            this.a((byte)1, s);
            this.a.a(n.doubleValue());
            return;
        }
        throw new IllegalArgumentException("can't serialize " + n.getClass());
    }
    
    protected void a(final String s, final String s2) {
        this.a(s, s2, (byte)2);
    }
    
    protected void a(final String s, final Date date) {
        this.a((byte)9, s);
        this.a.a(date.getTime());
    }
    
    protected void a(final String s, final UUID uuid) {
        this.a((byte)5, s);
        this.a.c(16);
        this.a.write(3);
        this.a.a(uuid.getMostSignificantBits());
        this.a.a(uuid.getLeastSignificantBits());
    }
    
    protected void a(final String s, final byte[] array) {
        this.a(s, 0, array);
    }
    
    protected boolean a(final String s, final al al) {
        return false;
    }
    
    protected boolean a(final String s, final Object o) {
        return false;
    }
    
    public byte[] a(final al al) {
        final aq aq = new aq();
        this.a(aq);
        this.b(al);
        this.a();
        return aq.c();
    }
    
    public int b(final al al) {
        return this.b(null, al);
    }
    
    protected int b(final String s, final al al) {
        if (al == null) {
            throw new NullPointerException("can't save a null object");
        }
        final int a = this.a.a();
        byte b;
        if (al instanceof List) {
            b = 4;
        }
        else {
            b = 3;
        }
        if (this.a(s, al)) {
            return this.a.a() - a;
        }
        if (s != null) {
            this.a(b, s);
        }
        final int a2 = this.a.a();
        this.a.c(0);
        boolean b2;
        if (b == 3 && s == null) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        while (true) {
            Label_0401: {
                if (b != 3) {
                    break Label_0401;
                }
                if (b2 && al.b("_id")) {
                    this.b("_id", al.a("_id"));
                }
                final Object a3 = al.a("_transientFields");
                if (!(a3 instanceof List)) {
                    break Label_0401;
                }
                final List list = (List)a3;
                if (al instanceof Map) {
                    for (final Map.Entry<String, V> entry : ((Map)al).entrySet()) {
                        if ((!b2 || !entry.getKey().equals("_id")) && (list == null || !list.contains(entry.getKey()))) {
                            this.b(entry.getKey(), entry.getValue());
                        }
                    }
                }
                else {
                    for (final String s2 : al.keySet()) {
                        if ((!b2 || !s2.equals("_id")) && (list == null || !list.contains(s2))) {
                            this.b(s2, al.a(s2));
                        }
                    }
                }
                this.a.write(0);
                this.a.a(a2, this.a.a() - a2);
                return this.a.a() - a;
            }
            final List list = null;
            continue;
        }
    }
    
    protected void b(final String s) {
        final int a = this.a.a();
        this.a.c(0);
        this.a.a(a, this.c(s));
    }
    
    protected void b(final String s, final Object o) {
        if (!s.equals("_transientFields")) {
            if (s.equals("$where") && o instanceof String) {
                this.a((byte)13, s);
                this.b(o.toString());
                return;
            }
            final Object a = ai.a(o);
            if (a == null) {
                this.a(s);
                return;
            }
            if (a instanceof Date) {
                this.a(s, (Date)a);
                return;
            }
            if (a instanceof Number) {
                this.a(s, (Number)a);
                return;
            }
            if (a instanceof Character) {
                this.a(s, a.toString());
                return;
            }
            if (a instanceof String) {
                this.a(s, a.toString());
                return;
            }
            if (a instanceof ba) {
                this.a(s, (ba)a);
                return;
            }
            if (a instanceof al) {
                this.b(s, (al)a);
                return;
            }
            if (a instanceof Boolean) {
                this.a(s, (Boolean)a);
                return;
            }
            if (a instanceof Pattern) {
                this.a(s, (Pattern)a);
                return;
            }
            if (a instanceof Map) {
                this.a(s, (Map)a);
                return;
            }
            if (a instanceof Iterable) {
                this.a(s, (Iterable)a);
                return;
            }
            if (a instanceof byte[]) {
                this.a(s, (byte[])a);
                return;
            }
            if (a instanceof av) {
                this.a(s, (av)a);
                return;
            }
            if (a instanceof UUID) {
                this.a(s, (UUID)a);
                return;
            }
            if (((UUID)a).getClass().isArray()) {
                this.c(s, a);
                return;
            }
            if (a instanceof bb) {
                this.a(s, (bb)a);
                return;
            }
            if (a instanceof au) {
                this.a(s, (au)a);
                return;
            }
            if (a instanceof ax) {
                this.a(s, (ax)a);
                return;
            }
            if (a instanceof aw) {
                this.a(s, (aw)a);
                return;
            }
            if (a instanceof ab) {
                final ao ao = new ao();
                ao.a("$ref", ((ab)a).b());
                ao.a("$id", ((ab)a).a());
                this.b(s, ao);
                return;
            }
            if (a instanceof az) {
                this.d(s);
                return;
            }
            if (a instanceof ay) {
                this.e(s);
                return;
            }
            if (!this.a(s, a)) {
                throw new IllegalArgumentException("can't serialize " + ((ab)a).getClass());
            }
        }
    }
    
    protected int c(final String seq) {
        final int length = seq.length();
        int i = 0;
        int n = 0;
        while (i < length) {
            final int codePoint = Character.codePointAt(seq, i);
            if (codePoint < 128) {
                this.a.write((byte)codePoint);
                ++n;
            }
            else if (codePoint < 2048) {
                this.a.write((byte)(192 + (codePoint >> 6)));
                this.a.write((byte)(128 + (codePoint & 0x3F)));
                n += 2;
            }
            else if (codePoint < 65536) {
                this.a.write((byte)(224 + (codePoint >> 12)));
                this.a.write((byte)(128 + (0x3F & codePoint >> 6)));
                this.a.write((byte)(128 + (codePoint & 0x3F)));
                n += 3;
            }
            else {
                this.a.write((byte)(240 + (codePoint >> 18)));
                this.a.write((byte)(128 + (0x3F & codePoint >> 12)));
                this.a.write((byte)(128 + (0x3F & codePoint >> 6)));
                this.a.write((byte)(128 + (codePoint & 0x3F)));
                n += 4;
            }
            i += Character.charCount(codePoint);
        }
        this.a.write(0);
        return n + 1;
    }
}
