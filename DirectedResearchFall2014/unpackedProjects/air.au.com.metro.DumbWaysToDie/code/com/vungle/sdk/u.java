package com.vungle.sdk;

import android.content.*;
import java.util.*;

public class u
{
    private static final Object a;
    private static ap b;
    
    static {
        a = u.class;
    }
    
    public static ap a() {
        synchronized (u.a) {
            return u.b;
        }
    }
    
    public static ap a(final Context context) {
        while (true) {
            as as = null;
            LinkedHashMap<String, Class<?>> linkedHashMap = null;
            LinkedHashMap<Class<?>, bb> linkedHashMap2 = null;
            bd<String, aq<?>> bd = null;
            bd<String, aq<?>> bd2 = null;
        Label_0241:
            while (true) {
                Label_0234: {
                    synchronized (u.a) {
                        if (u.b == null) {
                            final Object[] array = { new af(context) };
                            as = new as();
                            linkedHashMap = new LinkedHashMap<String, Class<?>>();
                            linkedHashMap2 = new LinkedHashMap<Class<?>, bb>();
                            bd = new bd<String, aq<?>>();
                            bd2 = new bd<String, aq<?>>();
                            for (final ay<Object> ay : az.a(as, array).values()) {
                                final String[] a = ay.a;
                                for (int length = a.length, i = 0; i < length; ++i) {
                                    linkedHashMap.put(a[i], ay.a().getClass());
                                }
                                final Class<?>[] b = ay.b;
                                for (int length2 = b.length, j = 0; j < length2; ++j) {
                                    linkedHashMap2.put(b[j], null);
                                }
                                if (!ay.c) {
                                    break Label_0234;
                                }
                                final bd<String, aq<?>> bd3 = bd2;
                                ay.a(bd3);
                            }
                            break Label_0241;
                        }
                        break;
                    }
                }
                final bd<String, aq<?>> bd3 = bd;
                continue;
            }
            final av av = new av(as, (av.b)new bc());
            av.a(bd);
            av.a(bd2);
            u.b = new ap.a(av, as, linkedHashMap2, linkedHashMap);
            break;
        }
        // monitorexit(o)
        return u.b;
    }
}
