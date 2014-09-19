package com.vungle.sdk.model;

import javax.inject.*;
import android.media.*;
import com.vungle.sdk.*;
import java.util.*;

public final class RequestAd$$InjectAdapter extends aq<RequestAd> implements ao<RequestAd>, Provider<RequestAd>
{
    private aq<VungleUtil> e;
    private aq<AudioManager> f;
    private aq<Provider<VungleCache>> g;
    private aq<VungleUtil> h;
    
    public RequestAd$$InjectAdapter() {
        super("com.vungle.sdk.model.RequestAd", "members/com.vungle.sdk.model.RequestAd", false, RequestAd.class);
    }
    
    private void a(final RequestAd requestAd) {
        requestAd.a = this.f.get();
        requestAd.b = this.g.get();
        requestAd.c = this.h.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<VungleUtil>)av.a("com.vungle.sdk.VungleUtil", RequestAd.class, this.getClass().getClassLoader());
        this.f = (aq<AudioManager>)av.a("android.media.AudioManager", RequestAd.class, this.getClass().getClassLoader());
        this.g = (aq<Provider<VungleCache>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleCache>", RequestAd.class, this.getClass().getClassLoader());
        this.h = (aq<VungleUtil>)av.a("com.vungle.sdk.VungleUtil", RequestAd.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
        set2.add(this.h);
    }
}
