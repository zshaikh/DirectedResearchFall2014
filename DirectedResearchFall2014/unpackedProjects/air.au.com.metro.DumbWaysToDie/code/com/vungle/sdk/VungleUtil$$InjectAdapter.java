package com.vungle.sdk;

import javax.inject.*;
import android.telephony.*;
import java.util.*;

public final class VungleUtil$$InjectAdapter extends aq<VungleUtil> implements ao<VungleUtil>, Provider<VungleUtil>
{
    private aq<TelephonyManager> e;
    private aq<Provider<VungleCache>> f;
    private aq<Provider<VungleConnectionHandler>> g;
    
    public VungleUtil$$InjectAdapter() {
        super("com.vungle.sdk.VungleUtil", "members/com.vungle.sdk.VungleUtil", true, VungleUtil.class);
    }
    
    private void a(final VungleUtil vungleUtil) {
        vungleUtil.a = this.e.get();
        vungleUtil.b = this.f.get();
        vungleUtil.c = this.g.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<TelephonyManager>)av.a("android.telephony.TelephonyManager", VungleUtil.class, this.getClass().getClassLoader());
        this.f = (aq<Provider<VungleCache>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleCache>", VungleUtil.class, this.getClass().getClassLoader());
        this.g = (aq<Provider<VungleConnectionHandler>>)av.a("javax.inject.Provider<com.vungle.sdk.VungleConnectionHandler>", VungleUtil.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
        set2.add(this.f);
        set2.add(this.g);
    }
}
