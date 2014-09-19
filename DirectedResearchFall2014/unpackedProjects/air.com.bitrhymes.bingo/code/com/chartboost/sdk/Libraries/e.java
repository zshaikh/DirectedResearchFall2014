package com.chartboost.sdk.Libraries;

import org.json.*;
import java.util.*;
import java.math.*;

public class e
{
    private static j a;
    private static i b;
    private static f c;
    private static b d;
    private static h e;
    
    static {
        com.chartboost.sdk.Libraries.e.a = new j();
        com.chartboost.sdk.Libraries.e.b = new i(null);
        com.chartboost.sdk.Libraries.e.c = new f(null);
        com.chartboost.sdk.Libraries.e.d = new b(null);
        com.chartboost.sdk.Libraries.e.e = new h(null);
    }
    
    public static a a() {
        return (a)com.chartboost.sdk.Libraries.e.b;
    }
    
    public static a a(final a... array) {
        return (a)new k(array);
    }
    
    public static a a(final g... array) {
        return (a)new d(array);
    }
    
    public static g a(final String s, final a a) {
        return new g(s, a);
    }
    
    public abstract static class a
    {
        private String a;
        
        public a() {
            super();
            this.a = null;
        }
        
        public abstract String a();
        
        public abstract boolean a(final Object p0);
        
        public boolean a(final Object o, final StringBuilder sb) {
            final boolean a = this.a(o);
            if (!a) {
                String str;
                if (this.a != null) {
                    str = this.a;
                }
                else {
                    str = this.a();
                }
                sb.append(str);
            }
            return a;
        }
    }
    
    private static class b extends a
    {
        @Override
        public String a() {
            return "object must be a boolean.";
        }
        
        @Override
        public boolean a(final Object o) {
            return Boolean.class.isInstance(o) || Boolean.TYPE.isInstance(o);
        }
    }
    
    public abstract static class c extends a
    {
    }
    
    private static class d extends a
    {
        protected g[] a;
        protected String b;
        
        public d(final g[] a) {
            super();
            this.b = null;
            this.a = a;
        }
        
        @Override
        public String a() {
            if (this.b != null) {
                return this.b;
            }
            final StringBuilder sb = new StringBuilder();
            sb.append("object must contain the following key-value schema: {\n");
            for (int i = 0; i < this.a.length; ++i) {
                sb.append("<");
                sb.append(this.a[i].a);
                sb.append(": [");
                sb.append(this.a[i].b.a());
                sb.append("]>");
                if (i < this.a.length - 1) {
                    sb.append(",\n");
                }
            }
            sb.append("}");
            return sb.toString();
        }
        
        @Override
        public boolean a(final Object o) {
            if (o instanceof Map) {
                final Map map = (Map)o;
                for (final Map.Entry<Object, V> entry : map.entrySet()) {
                    if (!(entry.getKey() instanceof String)) {
                        this.b = "key '" + entry.getKey().toString() + "' is not a string";
                        return false;
                    }
                }
                if (this.a != null && this.a.length >= 1) {
                    for (int i = 0; i < this.a.length; ++i) {
                        final String a = this.a[i].a;
                        final a b = this.a[i].b;
                        if (!map.containsKey(a)) {
                            if (!b.a(null)) {
                                this.b = "no key for required mapping '" + a + "' : <" + b.a() + ">";
                                return false;
                            }
                        }
                        else if (!b.a(map.get(a))) {
                            this.b = "key '" + a + "' fails to match: <" + b.a() + ">";
                            return false;
                        }
                    }
                }
                return true;
            }
            if (o instanceof JSONObject) {
                final JSONObject jsonObject = (JSONObject)o;
                if (this.a != null && this.a.length >= 1) {
                    for (int j = 0; j < this.a.length; ++j) {
                        final String a2 = this.a[j].a;
                        final a b2 = this.a[j].b;
                        try {
                            if (!b2.a(jsonObject.get(a2))) {
                                this.b = "key '" + a2 + "' fails to match: <" + b2.a() + ">";
                                return false;
                            }
                        }
                        catch (JSONException ex) {
                            if (!b2.a(null)) {
                                this.b = "no key for required mapping '" + a2 + "' : <" + b2.a() + ">";
                                return false;
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        }
    }
    
    private static class e extends a
    {
        private Class<?> a;
        
        public e(final Class<?> a) {
            super();
            this.a = a;
        }
        
        @Override
        public String a() {
            return "object must be an instance of " + this.a.getName() + ".";
        }
        
        @Override
        public boolean a(final Object o) {
            return this.a.isInstance(o);
        }
    }
    
    private static class f extends a
    {
        @Override
        public String a() {
            return "object must be a number w/o decimals (int, long, short, or byte).";
        }
        
        @Override
        public boolean a(final Object o) {
            return Integer.class.isInstance(o) || Long.class.isInstance(o) || Short.class.isInstance(o) || Byte.class.isInstance(o) || BigInteger.class.isInstance(o) || Integer.TYPE.isInstance(o) || Long.TYPE.isInstance(o) || Short.TYPE.isInstance(o) || Byte.TYPE.isInstance(o);
        }
    }
    
    public static class g
    {
        private String a;
        private a b;
        
        public g(final String a, final a b) {
            super();
            this.a = a;
            this.b = b;
        }
    }
    
    private static class h extends a
    {
        @Override
        public String a() {
            return "object must be null.";
        }
        
        @Override
        public boolean a(final Object o) {
            return o == null || o == JSONObject.NULL;
        }
    }
    
    private static class i extends a
    {
        @Override
        public String a() {
            return "object must be a number (primitive type or derived from Number).";
        }
        
        @Override
        public boolean a(final Object o) {
            return o instanceof Number || Integer.TYPE.isInstance(o) || Long.TYPE.isInstance(o) || Short.TYPE.isInstance(o) || Float.TYPE.isInstance(o) || Double.TYPE.isInstance(o) || Byte.TYPE.isInstance(o);
        }
    }
    
    private static class j extends e
    {
        public j() {
            super(String.class);
        }
    }
    
    private static class k extends a
    {
        protected String a;
        private a[] b;
        
        public k(final a[] b) {
            super();
            this.a = null;
            this.b = b;
        }
        
        @Override
        public String a() {
            if (this.a != null) {
                return this.a;
            }
            final StringBuilder sb = new StringBuilder();
            sb.append("object must match ALL of the following: ");
            for (int i = 0; i < this.b.length; ++i) {
                sb.append("<");
                sb.append(this.b[i].a());
                sb.append(">");
                if (i < this.b.length - 1) {
                    sb.append(", ");
                }
            }
            return sb.toString();
        }
        
        @Override
        public boolean a(final Object o) {
            for (int i = 0; i < this.b.length; ++i) {
                if (!this.b[i].a(o)) {
                    this.a = "object failed to match: <" + this.b[i].a() + ">";
                    return false;
                }
            }
            return true;
        }
    }
}
