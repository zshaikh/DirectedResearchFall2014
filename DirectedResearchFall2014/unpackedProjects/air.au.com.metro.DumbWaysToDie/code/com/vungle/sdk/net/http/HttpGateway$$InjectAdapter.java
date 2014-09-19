package com.vungle.sdk.net.http;

import javax.inject.*;
import com.vungle.sdk.*;
import java.util.*;

public final class HttpGateway$$InjectAdapter extends aq<HttpGateway> implements ao<HttpGateway>, Provider<HttpGateway>
{
    private aq<Provider<RequestAdHttpRequest>> e;
    
    public HttpGateway$$InjectAdapter() {
        super("com.vungle.sdk.net.http.HttpGateway", "members/com.vungle.sdk.net.http.HttpGateway", true, HttpGateway.class);
    }
    
    private void a(final HttpGateway httpGateway) {
        httpGateway.a = this.e.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<Provider<RequestAdHttpRequest>>)av.a("javax.inject.Provider<com.vungle.sdk.net.http.RequestAdHttpRequest>", HttpGateway.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
    }
}
