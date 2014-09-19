package com.vungle.sdk;

import javax.inject.*;
import com.vungle.sdk.model.*;
import java.util.*;

public final class VunglePub$$InjectAdapter extends aq<VunglePub> implements ao<VunglePub>
{
    private aq<Provider<RequestAd>> e;
    private aq<IVungleConstants> f;
    private aq<Provider<VungleCache>> g;
    private aq<Provider<VungleConnectionHandler>> h;
    private aq<VungleParser> i;
    private aq<VungleUtil> j;
    
    public VunglePub$$InjectAdapter() {
        super(null, "members/com.vungle.sdk.VunglePub", false, VunglePub.class);
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<Provider<RequestAd>>)av.a("javax.inject.Provider<com.vungle.sdk.model.RequestAd>", VunglePub.class, this.getClass().getClassLoader());
        this.f = (aq<IVungleConstants>)av.a("com.vungle.sdk.IVungleConstants", VunglePub.class, this.getClass().getClassLoader());
        this.g = (aq<Provider<VungleCache>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleCache>", VunglePub.class, this.getClass().getClassLoader());
        this.h = (aq<Provider<VungleConnectionHandler>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleConnectionHandler>", VunglePub.class, this.getClass().getClassLoader());
        this.i = (aq<VungleParser>)av.a("com.vungle.sdk.model.VungleParser", VunglePub.class, this.getClass().getClassLoader());
        this.j = (aq<VungleUtil>)av.a("com.vungle.sdk.VungleUtil", VunglePub.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
        set2.add(this.h);
        set2.add(this.i);
        set2.add(this.j);
    }
}
