package com.vungle.sdk;

import com.vungle.sdk.net.http.*;
import android.os.*;

final class ae extends MaxRetryAgeHttpResponseHandler
{
    public static final Parcelable$Creator<ae> CREATOR;
    private static final ae d;
    
    static {
        d = new ae();
        CREATOR = (Parcelable$Creator)new Parcelable$Creator<ae>() {};
    }
    
    private ae() {
        super((byte)0);
        super.a = 10;
    }
    
    static ae a() {
        return ae.d;
    }
    
    protected final ae a(final Parcel parcel) {
        super.b(parcel);
        return this;
    }
    
    @Override
    protected final void a(final ah ah, final aj aj, final am am) {
    }
    
    @Override
    public final void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
    }
}
