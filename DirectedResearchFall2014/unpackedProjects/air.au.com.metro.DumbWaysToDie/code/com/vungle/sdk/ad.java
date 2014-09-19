package com.vungle.sdk;

import android.os.*;

public final class ad extends ah
{
    public static final Parcelable$Creator<ad> CREATOR;
    private String c;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<ad>() {};
    }
    
    protected ad() {
        super();
    }
    
    public ad(final String c) {
        super();
        this.c = c;
        super.b = ae.a();
    }
    
    protected final ad a(final Parcel parcel) {
        this.c = parcel.readString();
        super.b(parcel);
        return this;
    }
    
    @Override
    protected final b a() {
        return ah.b.a;
    }
    
    @Override
    protected final a b() {
        return ah.a.a;
    }
    
    protected final String c() {
        return this.c;
    }
    
    @Override
    public final String toString() {
        return "{" + ah.b.a + ": " + this.c + "}";
    }
    
    @Override
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.c);
        super.writeToParcel(parcel, n);
    }
}
