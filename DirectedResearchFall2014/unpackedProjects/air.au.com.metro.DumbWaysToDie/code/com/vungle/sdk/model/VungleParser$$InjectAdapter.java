package com.vungle.sdk.model;

import javax.inject.*;
import com.vungle.sdk.*;
import java.util.*;

public final class VungleParser$$InjectAdapter extends aq<VungleParser> implements ao<VungleParser>, Provider<VungleParser>
{
    private aq<IVungleConstants> e;
    private aq<VungleCache> f;
    
    public VungleParser$$InjectAdapter() {
        super("com.vungle.sdk.model.VungleParser", "members/com.vungle.sdk.model.VungleParser", true, VungleParser.class);
    }
    
    private void a(final VungleParser vungleParser) {
        vungleParser.a = this.e.get();
        vungleParser.b = this.f.get();
    }
    
    @Override
    public final void a(final av av) {
        this.e = (aq<IVungleConstants>)av.a("com.vungle.sdk.IVungleConstants", VungleParser.class, this.getClass().getClassLoader());
        this.f = (aq<VungleCache>)av.a("com.vungle.sdk.VungleCache", VungleParser.class, this.getClass().getClassLoader());
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set2.add(this.e);
        set2.add(this.f);
    }
}
