package c.m.x.a.iab;

import org.json.*;

public final class r
{
    String a;
    String b;
    String c;
    String d;
    long e;
    int f;
    String g;
    String h;
    String i;
    String j;
    
    public r(final String a, final String i, final String j) {
        super();
        this.a = a;
        this.i = i;
        final JSONObject jsonObject = new JSONObject(this.i);
        this.b = jsonObject.optString("orderId");
        this.c = jsonObject.optString("packageName");
        this.d = jsonObject.optString("productId");
        this.e = jsonObject.optLong("purchaseTime");
        this.f = jsonObject.optInt("purchaseState");
        this.g = jsonObject.optString("developerPayload");
        this.h = jsonObject.optString("token", jsonObject.optString("purchaseToken"));
        this.j = j;
    }
    
    public final String a() {
        return this.a;
    }
    
    public final String b() {
        return this.b;
    }
    
    public final String c() {
        return this.c;
    }
    
    public final String d() {
        return this.d;
    }
    
    public final long e() {
        return this.e;
    }
    
    public final int f() {
        return this.f;
    }
    
    public final String g() {
        return this.g;
    }
    
    public final String h() {
        return this.h;
    }
    
    public final String i() {
        return this.i;
    }
    
    public final String j() {
        return this.j;
    }
    
    @Override
    public final String toString() {
        return "PurchaseInfo(type:" + this.a + "):" + this.i;
    }
}
