package com.vungle.sdk;

import java.util.*;

public final class ba<T> extends aq<Set<T>>
{
    private final Set<aq<?>> e;
    
    @Override
    public final void a(final av av) {
        final Iterator<aq<?>> iterator = this.e.iterator();
        while (iterator.hasNext()) {
            iterator.next().a(av);
        }
    }
    
    @Override
    public final void a(final Set<aq<?>> set, final Set<aq<?>> set2) {
        set.addAll(this.e);
    }
    
    @Override
    public final String toString() {
        return "SetBinding" + this.e;
    }
}
