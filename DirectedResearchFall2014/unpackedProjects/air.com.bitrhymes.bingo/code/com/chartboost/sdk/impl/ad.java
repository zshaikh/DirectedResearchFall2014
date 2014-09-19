package com.chartboost.sdk.impl;

import java.util.*;

class ad extends ac
{
    private bf<ah> a;
    
    ad() {
        super();
        this.a = new bf<ah>();
    }
    
    void a(final Class clazz, final ah ah) {
        this.a.a(clazz, ah);
    }
    
    @Override
    public void a(final Object o, final StringBuilder sb) {
        final Object a = ai.a(o);
        if (a == null) {
            sb.append(" null ");
            return;
        }
        ah ah = null;
        final Iterator<Class<?>> iterator = bf.a(a.getClass()).iterator();
        while (iterator.hasNext()) {
            ah = this.a.a((Object)iterator.next());
            if (ah != null) {
                break;
            }
        }
        if (ah == null && a.getClass().isArray()) {
            ah = this.a.a((Object)Object[].class);
        }
        if (ah == null) {
            throw new RuntimeException("json can't serialize type : " + a.getClass());
        }
        ah.a(a, sb);
    }
}
