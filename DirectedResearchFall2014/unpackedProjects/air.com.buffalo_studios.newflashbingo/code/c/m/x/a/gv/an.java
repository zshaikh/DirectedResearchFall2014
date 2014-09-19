package c.m.x.a.gv;

import c.m.x.a.gv.an$c.m.x.a.gv.*;
import java.lang.reflect.*;
import java.util.*;

abstract class an<K, V>
{
    ap b;
    aq c;
    as d;
    
    public static <T> boolean a(final Set<T> set, final Object o) {
        if (set == o) {
            return true;
        }
        if (o instanceof Set) {
            final Set set2 = (Set)o;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            }
            catch (NullPointerException ex) {
                return false;
            }
            catch (ClassCastException ex2) {
                return false;
            }
        }
        return false;
    }
    
    protected abstract int a();
    
    protected abstract int a(final Object p0);
    
    protected abstract Object a(final int p0, final int p1);
    
    protected abstract V a(final int p0, final V p1);
    
    protected abstract void a(final int p0);
    
    protected abstract void a(final K p0, final V p1);
    
    public final <T> T[] a(final T[] array, final int n) {
        final int a = this.a();
        Object[] array2;
        if (array.length < a) {
            array2 = (Object[])Array.newInstance(array.getClass().getComponentType(), a);
        }
        else {
            array2 = array;
        }
        for (int i = 0; i < a; ++i) {
            array2[i] = this.a(i, n);
        }
        if (array2.length > a) {
            array2[a] = null;
        }
        return (T[])array2;
    }
    
    protected abstract int b(final Object p0);
    
    protected abstract Map<K, V> b();
    
    public final Object[] b(final int n) {
        final int a = this.a();
        final Object[] array = new Object[a];
        for (int i = 0; i < a; ++i) {
            array[i] = this.a(i, n);
        }
        return array;
    }
    
    protected abstract void c();
}
