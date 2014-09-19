package com.vungle.sdk;

import android.os.*;

public final class al implements Parcelable
{
    public static final Parcelable$Creator<al> CREATOR;
    private long a;
    private int b;
    private int c;
    
    static {
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<al>() {};
    }
    
    al() {
        super();
        this.a = System.currentTimeMillis();
        this.b = 1;
        this.c = 1;
    }
    
    public final long a() {
        return this.a;
    }
    
    final al a(final Parcel parcel) {
        this.a = parcel.readLong();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        return this;
    }
    
    public final int b() {
        return this.b;
    }
    
    public final int c() {
        return this.c;
    }
    
    final void d() {
        ++this.b;
        ++this.c;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final int e() {
        final int c = this.c - 1;
        this.c = c;
        if (c < 0) {
            final String a = IVungleConstants.a;
            this.c = 0;
        }
        return this.c;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }
}
