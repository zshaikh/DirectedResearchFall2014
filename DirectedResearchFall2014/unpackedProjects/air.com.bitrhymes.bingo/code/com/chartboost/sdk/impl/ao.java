package com.chartboost.sdk.impl;

import java.util.regex.*;
import java.util.*;

public class ao extends LinkedHashMap<String, Object> implements al
{
    public ao() {
        super();
    }
    
    public ao(final String s, final Object o) {
        super();
        this.a(s, o);
    }
    
    @Override
    public Object a(final String key) {
        return super.get(key);
    }
    
    @Override
    public Object a(final String key, final Object value) {
        return super.put(key, value);
    }
    
    @Override
    public boolean b(final String key) {
        return super.containsKey(key);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (!(o instanceof al)) {
            return false;
        }
        final al al = (al)o;
        if (!((HashMap<String, V>)this).keySet().equals(al.keySet())) {
            return false;
        }
        for (final String s : ((HashMap<String, V>)this).keySet()) {
            final Object a = this.a(s);
            final Object a2 = al.a(s);
            if (a == null && a2 != null) {
                return false;
            }
            if (a2 == null) {
                if (a != null) {
                    return false;
                }
                continue;
            }
            else if (a instanceof Number && a2 instanceof Number) {
                if (((Number)a).doubleValue() != ((Number)a2).doubleValue()) {
                    return false;
                }
                continue;
            }
            else if (a instanceof Pattern && a2 instanceof Pattern) {
                final Pattern pattern = (Pattern)a;
                final Pattern pattern2 = (Pattern)a2;
                if (!pattern.pattern().equals(pattern2.pattern()) || pattern.flags() != pattern2.flags()) {
                    return false;
                }
                continue;
            }
            else {
                if (!a.equals(a2)) {
                    return false;
                }
                continue;
            }
        }
        return true;
    }
    
    @Override
    public void putAll(final Map map) {
        for (final Map.Entry<Object, V> entry : map.entrySet()) {
            this.a(entry.getKey().toString(), entry.getValue());
        }
    }
    
    @Override
    public String toString() {
        return ae.a(this);
    }
}
