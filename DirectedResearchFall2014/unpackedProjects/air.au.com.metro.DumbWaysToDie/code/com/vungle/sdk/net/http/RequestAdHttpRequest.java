package com.vungle.sdk.net.http;

import com.vungle.sdk.*;
import android.os.*;
import javax.inject.*;

public class RequestAdHttpRequest extends VungleHttpRequest
{
    public static final Creator CREATOR;
    private String c;
    
    static {
        CREATOR = u.a().a(Creator.class);
    }
    
    protected RequestAdHttpRequest(@Named("RequestAdHttpResponseHandler") final ak b) {
        super();
        super.b = b;
    }
    
    @Override
    protected final b a() {
        return ah.b.b;
    }
    
    protected final RequestAdHttpRequest a(final Parcel parcel) {
        this.c = parcel.readString();
        super.b(parcel);
        return this;
    }
    
    final void a(final String c) {
        this.c = c;
    }
    
    @Override
    protected final a b() {
        return ah.a.a;
    }
    
    protected final String c() {
        return IVungleConstants.a();
    }
    
    @Override
    protected final void d() {
        super.d();
        this.a.putString("Content-Type", "application/json");
    }
    
    @Override
    protected final String h() {
        return this.c;
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.c);
        super.writeToParcel(parcel, n);
    }
    
    @Singleton
    public static class Creator implements Parcelable$Creator<RequestAdHttpRequest>
    {
        @Inject
        Provider<RequestAdHttpRequest> a;
    }
}
