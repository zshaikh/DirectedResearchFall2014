package c.m.x.a.gv;

import android.os.*;

public final class h implements Parcelable
{
    public static final Parcelable$Creator CREATOR;
    final Bundle a;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    h(final Parcel parcel) {
        super();
        this.a = parcel.readBundle();
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeBundle(this.a);
    }
}
