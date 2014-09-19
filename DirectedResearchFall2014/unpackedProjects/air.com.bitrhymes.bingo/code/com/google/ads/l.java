package com.google.ads;

import com.google.ads.util.*;
import com.google.ads.internal.*;

public final class l extends i
{
    public final b<n> a;
    public final c<com.google.ads.internal.c> b;
    public final c<Boolean> c;
    
    public l(final n n) {
        super();
        this.c = (c<Boolean>)new c("disableNativeScroll", false);
        this.a = (b<n>)new b("slotState", n);
        this.b = (c<com.google.ads.internal.c>)new c("adLoader", new com.google.ads.internal.c(this));
    }
}
