package com.vungle.sdk.net.http;

import javax.inject.*;
import com.vungle.sdk.*;
import java.util.*;

public final class RequestAdHttpRequest$$InjectAdapter extends aq<RequestAdHttpRequest> implements ao<RequestAdHttpRequest>, Provider<RequestAdHttpRequest>
{
    private aq<ak> e;
    private aq<VungleHttpRequest> f;
    
    public RequestAdHttpRequest$$InjectAdapter() {
        super("com.vungle.sdk.net.http.RequestAdHttpRequest", "members/com.vungle.sdk.net.http.RequestAdHttpRequest", false, RequestAdHttpRequest.class);
    }
    
    private void a(final RequestAdHttpRequest requestAdHttpRequest) {
        this.f.a(requestAdHttpRequest);
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<ak>)av.a("@javax.inject.Named(value=RequestAdHttpResponseHandler)/com.vungle.sdk.net.http.HttpResponseHandler", RequestAdHttpRequest.class, this.getClass().getClassLoader());
        this.f = (aq<VungleHttpRequest>)av.a("members/com.vungle.sdk.net.http.VungleHttpRequest", RequestAdHttpRequest.class, this.getClass().getClassLoader(), false);
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set.add(this.e);
        set2.add(this.f);
    }
}
