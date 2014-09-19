package c.m.x.a.iab;

import org.json.*;

public final class t
{
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;
    
    public t(final String a, final String g) {
        super();
        this.a = a;
        this.g = g;
        final JSONObject jsonObject = new JSONObject(this.g);
        this.b = jsonObject.optString("productId");
        this.c = jsonObject.optString("type");
        this.d = jsonObject.optString("price");
        this.e = jsonObject.optString("title");
        this.f = jsonObject.optString("description");
    }
    
    public final String a() {
        return this.b;
    }
    
    public final String b() {
        return this.c;
    }
    
    public final String c() {
        return this.d;
    }
    
    public final String d() {
        return this.e;
    }
    
    public final String e() {
        return this.f;
    }
    
    public final String f() {
        return this.a;
    }
    
    @Override
    public final String toString() {
        return "SkuDetails:" + this.g;
    }
}
