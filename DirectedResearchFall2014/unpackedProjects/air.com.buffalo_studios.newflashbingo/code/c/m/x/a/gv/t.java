package c.m.x.a.gv;

import android.os.*;
import android.content.*;
import android.util.*;

final class t implements Parcelable
{
    public static final Parcelable$Creator<t> CREATOR;
    final String a;
    final int b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    Bundle j;
    e k;
    
    static {
        CREATOR = (Parcelable$Creator)new u();
    }
    
    public t(final Parcel parcel) {
        super();
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = (parcel.readInt() != 0);
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = (parcel.readInt() != 0);
        this.h = (parcel.readInt() != 0);
        this.i = parcel.readBundle();
        this.j = parcel.readBundle();
    }
    
    public t(final e e) {
        super();
        this.a = e.getClass().getName();
        this.b = e.mIndex;
        this.c = e.mFromLayout;
        this.d = e.mFragmentId;
        this.e = e.mContainerId;
        this.f = e.mTag;
        this.g = e.mRetainInstance;
        this.h = e.mDetached;
        this.i = e.mArguments;
    }
    
    public final e a(final j j, final e e) {
        if (this.k != null) {
            return this.k;
        }
        if (this.i != null) {
            this.i.setClassLoader(j.getClassLoader());
        }
        this.k = e.instantiate((Context)j, this.a, this.i);
        if (this.j != null) {
            this.j.setClassLoader(j.getClassLoader());
            this.k.mSavedFragmentState = this.j;
        }
        this.k.setIndex(this.b, e);
        this.k.mFromLayout = this.c;
        this.k.mRestored = true;
        this.k.mFragmentId = this.d;
        this.k.mContainerId = this.e;
        this.k.mTag = this.f;
        this.k.mRetainInstance = this.g;
        this.k.mDetached = this.h;
        this.k.mFragmentManager = j.b;
        if (o.a) {
            Log.v("FragmentManager", "Instantiated fragment " + this.k);
        }
        return this.k;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        int n2;
        if (this.c) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        int n3;
        if (this.g) {
            n3 = 1;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        int n4;
        if (this.h) {
            n4 = 1;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        parcel.writeBundle(this.i);
        parcel.writeBundle(this.j);
    }
}
