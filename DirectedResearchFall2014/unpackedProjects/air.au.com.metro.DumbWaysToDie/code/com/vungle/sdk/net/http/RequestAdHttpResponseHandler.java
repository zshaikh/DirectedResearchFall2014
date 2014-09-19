package com.vungle.sdk.net.http;

import javax.inject.*;
import com.vungle.sdk.model.*;
import com.vungle.sdk.*;
import android.os.*;

@Singleton
public class RequestAdHttpResponseHandler extends InfiniteRetryHttpResponseHandler
{
    public static final Creator CREATOR;
    @Inject
    Provider<VungleCache> d;
    @Inject
    VungleParser e;
    
    static {
        CREATOR = u.a().a(Creator.class);
    }
    
    protected final RequestAdHttpResponseHandler a(final Parcel parcel) {
        super.b(parcel);
        return this;
    }
    
    @Override
    protected final void a(final ah obj, final aj aj, final am am) {
        final z a = this.e.a(aj.b());
        ab.a().a(a);
        if (a == null) {
            final long c = this.c(obj.j().c());
            final String a2 = IVungleConstants.a;
            new StringBuilder("Retrying ").append(obj).append(" request in ").append(c / 1000L).append(" seconds");
            am.a(obj, c);
        }
        else {
            final Long a3 = a.a();
            if (a3 != null) {
                am.a(obj, a3);
                return;
            }
            final VungleCache vungleCache = (VungleCache)this.d.get();
            if (vungleCache != null) {
                vungleCache.a(a);
            }
        }
    }
    
    @Singleton
    public static class Creator implements Parcelable$Creator<RequestAdHttpResponseHandler>
    {
        @Inject
        Provider<RequestAdHttpResponseHandler> a;
    }
}
