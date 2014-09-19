package com.chartboost.sdk.impl;

import java.util.*;

class ab extends aa
{
    private bd<af> a;
    
    ab() {
        super();
        this.a = new bd<af>();
    }
    
    void a(final Class clazz, final af af) {
        this.a.a(clazz, af);
    }
    
    @Override
    public void a(final Object o, final StringBuilder sb) {
        final Object a = ag.a(o);
        if (a == null) {
            sb.append(" null ");
            return;
        }
        af af = null;
        final Iterator<Class<?>> iterator = bd.a(a.getClass()).iterator();
        while (iterator.hasNext()) {
            af = this.a.a((Object)iterator.next());
            if (af != null) {
                break;
            }
        }
        if (af == null && a.getClass().isArray()) {
            af = this.a.a((Object)Object[].class);
        }
        if (af == null) {
            throw new RuntimeException("json can't serialize type : " + a.getClass());
        }
        af.a(a, sb);
    }
}
