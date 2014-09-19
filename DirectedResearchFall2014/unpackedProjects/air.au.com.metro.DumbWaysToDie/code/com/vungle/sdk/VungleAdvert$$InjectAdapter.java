package com.vungle.sdk;

import javax.inject.*;
import com.vungle.sdk.net.http.*;
import java.util.*;

public final class VungleAdvert$$InjectAdapter extends aq<VungleAdvert> implements ao<VungleAdvert>, Provider<VungleAdvert>
{
    private aq<HttpGateway> e;
    private aq<Provider<VungleCache>> f;
    private aq<VungleUtil> g;
    
    public VungleAdvert$$InjectAdapter() {
        super("com.vungle.sdk.VungleAdvert", "members/com.vungle.sdk.VungleAdvert", false, VungleAdvert.class);
    }
    
    private void a(final VungleAdvert vungleAdvert) {
        vungleAdvert.a = this.e.get();
        vungleAdvert.b = this.f.get();
        vungleAdvert.c = this.g.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<HttpGateway>)av.a("com.vungle.sdk.net.http.HttpGateway", VungleAdvert.class, this.getClass().getClassLoader());
        this.f = (aq<Provider<VungleCache>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleCache>", VungleAdvert.class, this.getClass().getClassLoader());
        this.g = (aq<VungleUtil>)av.a("com.vungle.sdk.VungleUtil", VungleAdvert.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
    }
}
