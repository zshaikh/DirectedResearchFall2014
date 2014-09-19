package c.m.x.a.gv;

import android.os.*;

final class r implements Parcelable
{
    public static final Parcelable$Creator<r> CREATOR;
    t[] a;
    int[] b;
    c[] c;
    
    static {
        CREATOR = (Parcelable$Creator)new s();
    }
    
    public r() {
        super();
    }
    
    public r(final Parcel parcel) {
        super();
        this.a = (t[])parcel.createTypedArray((Parcelable$Creator)t.CREATOR);
        this.b = parcel.createIntArray();
        this.c = (c[])parcel.createTypedArray((Parcelable$Creator)c.m.x.a.gv.c.CREATOR);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeTypedArray((Parcelable[])this.a, n);
        parcel.writeIntArray(this.b);
        parcel.writeTypedArray((Parcelable[])this.c, n);
    }
}
