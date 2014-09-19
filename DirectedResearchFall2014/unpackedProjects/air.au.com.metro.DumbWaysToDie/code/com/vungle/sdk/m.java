package com.vungle.sdk;

public final class m
{
    private static final m a;
    private VungleBitmapFactory b;
    
    static {
        a = new m();
    }
    
    public static m a() {
        return m.a;
    }
    
    public final void a(final VungleBitmapFactory b) {
        this.b = b;
    }
    
    public final VungleBitmapFactory b() {
        if (this.b == null) {
            this.b = com.vungle.sdk.a.a();
        }
        return this.b;
    }
}
