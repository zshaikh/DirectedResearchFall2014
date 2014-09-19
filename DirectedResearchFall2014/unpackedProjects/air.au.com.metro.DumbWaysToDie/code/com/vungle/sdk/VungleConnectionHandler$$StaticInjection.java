package com.vungle.sdk;

import javax.inject.*;

public final class VungleConnectionHandler$$StaticInjection extends bb
{
    private aq<Provider<VungleConnectionHandler>> a;
    
    @Override
    public final void a() {
        VungleConnectionHandler.a = this.a.get();
    }
    
    @Override
    public final void a(final av av) {
        this.a = (aq<Provider<VungleConnectionHandler>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleConnectionHandler>", VungleConnectionHandler.class, this.getClass().getClassLoader());
    }
}
