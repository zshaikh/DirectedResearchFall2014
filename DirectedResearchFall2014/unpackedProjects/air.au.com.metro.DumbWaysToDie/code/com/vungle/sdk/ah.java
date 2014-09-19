package com.vungle.sdk;

import android.os.*;

public abstract class ah implements Parcelable
{
    protected final Bundle a;
    public ak b;
    private al c;
    
    public ah() {
        super();
        this.a = new Bundle();
        this.d();
    }
    
    protected abstract b a();
    
    protected abstract a b();
    
    public ah b(final Parcel parcel) {
        final ClassLoader classLoader = ah.class.getClassLoader();
        this.b = (ak)parcel.readParcelable(classLoader);
        this.c = (al)parcel.readParcelable(classLoader);
        return this;
    }
    
    public abstract String c();
    
    public void d() {
        this.a.putString("User-Agent", "VungleDroid/1.3.10");
    }
    
    public int describeContents() {
        return 0;
    }
    
    protected final boolean e() {
        final String c = this.c();
        return c != null && c.startsWith("https");
    }
    
    protected final Bundle f() {
        return this.g();
    }
    
    public Bundle g() {
        return (Bundle)this.a.clone();
    }
    
    protected String h() {
        return null;
    }
    
    protected final void i() {
        if (this.c == null) {
            this.c = new al();
            return;
        }
        this.c.d();
    }
    
    public final al j() {
        return this.c;
    }
    
    protected final ak k() {
        return this.b;
    }
    
    @Override
    public String toString() {
        return "{" + this.a() + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable((Parcelable)this.b, n);
        parcel.writeParcelable((Parcelable)this.c, n);
    }
    
    public enum a
    {
        a, 
        b, 
        c;
    }
    
    public enum b
    {
        a, 
        b;
    }
}
