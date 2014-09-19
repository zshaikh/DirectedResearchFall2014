package com.vungle.sdk;

import javax.inject.*;
import android.content.*;
import com.vungle.sdk.net.http.*;
import com.vungle.sdk.model.*;
import java.util.*;

public final class VungleConnectionHandler$$InjectAdapter extends aq<VungleConnectionHandler> implements ao<VungleConnectionHandler>, Provider<VungleConnectionHandler>
{
    private aq<Context> e;
    private aq<HttpGateway> f;
    private aq<Provider<VungleCache>> g;
    private aq<VungleParser> h;
    private aq<VungleUtil> i;
    
    public VungleConnectionHandler$$InjectAdapter() {
        super("com.vungle.sdk.VungleConnectionHandler", "members/com.vungle.sdk.VungleConnectionHandler", false, VungleConnectionHandler.class);
    }
    
    private void a(final VungleConnectionHandler vungleConnectionHandler) {
        vungleConnectionHandler.b = this.f.get();
        vungleConnectionHandler.c = this.g.get();
        vungleConnectionHandler.d = this.h.get();
        vungleConnectionHandler.e = this.i.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<Context>)av.a("android.content.Context", VungleConnectionHandler.class, this.getClass().getClassLoader());
        this.f = (aq<HttpGateway>)av.a("com.vungle.sdk.net.http.HttpGateway", VungleConnectionHandler.class, this.getClass().getClassLoader());
        this.g = (aq<Provider<VungleCache>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleCache>", VungleConnectionHandler.class, this.getClass().getClassLoader());
        this.h = (aq<VungleParser>)av.a("com.vungle.sdk.model.VungleParser", VungleConnectionHandler.class, this.getClass().getClassLoader());
        this.i = (aq<VungleUtil>)av.a("com.vungle.sdk.VungleUtil", VungleConnectionHandler.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
        set2.add(this.h);
        set2.add(this.i);
    }
}
