package com.vungle.sdk.net.http;

import javax.inject.*;
import com.vungle.sdk.*;
import java.util.*;

public final class RequestAdHttpResponseHandler$Creator$$InjectAdapter extends aq<RequestAdHttpResponseHandler.Creator> implements ao<RequestAdHttpResponseHandler.Creator>, Provider<RequestAdHttpResponseHandler.Creator>
{
    private aq<Provider<RequestAdHttpResponseHandler>> e;
    
    public RequestAdHttpResponseHandler$Creator$$InjectAdapter() {
        super("com.vungle.sdk.net.http.RequestAdHttpResponseHandler$Creator", "members/com.vungle.sdk.net.http.RequestAdHttpResponseHandler$Creator", true, RequestAdHttpResponseHandler.Creator.class);
    }
    
    private void a(final RequestAdHttpResponseHandler.Creator creator) {
        creator.a = this.e.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<Provider<RequestAdHttpResponseHandler>>)av.a("javax.inject.Provider<com.vungle.sdk.net.http.RequestAdHttpResponseHandler>", RequestAdHttpResponseHandler.Creator.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
    }
}
