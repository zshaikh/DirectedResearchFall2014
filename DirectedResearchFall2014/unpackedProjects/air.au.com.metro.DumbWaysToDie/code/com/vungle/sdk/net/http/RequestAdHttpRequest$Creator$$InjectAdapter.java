package com.vungle.sdk.net.http;

import javax.inject.*;
import com.vungle.sdk.*;
import java.util.*;

public final class RequestAdHttpRequest$Creator$$InjectAdapter extends aq<RequestAdHttpRequest.Creator> implements ao<RequestAdHttpRequest.Creator>, Provider<RequestAdHttpRequest.Creator>
{
    private aq<Provider<RequestAdHttpRequest>> e;
    
    public RequestAdHttpRequest$Creator$$InjectAdapter() {
        super("com.vungle.sdk.net.http.RequestAdHttpRequest$Creator", "members/com.vungle.sdk.net.http.RequestAdHttpRequest$Creator", true, RequestAdHttpRequest.Creator.class);
    }
    
    private void a(final RequestAdHttpRequest.Creator creator) {
        creator.a = this.e.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<Provider<RequestAdHttpRequest>>)av.a("javax.inject.Provider<com.vungle.sdk.net.http.RequestAdHttpRequest>", RequestAdHttpRequest.Creator.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
    }
}
