package com.vungle.sdk.net.http;

import javax.inject.*;
import com.vungle.sdk.model.*;
import com.vungle.sdk.*;
import java.util.*;

public final class RequestAdHttpResponseHandler$$InjectAdapter extends aq<RequestAdHttpResponseHandler> implements ao<RequestAdHttpResponseHandler>, Provider<RequestAdHttpResponseHandler>
{
    private aq<Provider<VungleCache>> e;
    private aq<VungleParser> f;
    private aq<InfiniteRetryHttpResponseHandler> g;
    
    public RequestAdHttpResponseHandler$$InjectAdapter() {
        super("com.vungle.sdk.net.http.RequestAdHttpResponseHandler", "members/com.vungle.sdk.net.http.RequestAdHttpResponseHandler", true, RequestAdHttpResponseHandler.class);
    }
    
    private void a(final RequestAdHttpResponseHandler requestAdHttpResponseHandler) {
        requestAdHttpResponseHandler.d = this.e.get();
        requestAdHttpResponseHandler.e = this.f.get();
        this.g.a(requestAdHttpResponseHandler);
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<Provider<VungleCache>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleCache>", RequestAdHttpResponseHandler.class, this.getClass().getClassLoader());
        this.f = (aq<VungleParser>)av.a("com.vungle.sdk.model.VungleParser", RequestAdHttpResponseHandler.class, this.getClass().getClassLoader());
        this.g = (aq<InfiniteRetryHttpResponseHandler>)av.a("members/com.vungle.sdk.net.http.InfiniteRetryHttpResponseHandler", RequestAdHttpResponseHandler.class, this.getClass().getClassLoader(), false);
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
    }
}
