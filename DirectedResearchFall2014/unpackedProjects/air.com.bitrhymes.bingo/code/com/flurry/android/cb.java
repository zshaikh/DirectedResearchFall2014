package com.flurry.android;

import android.content.*;
import android.view.*;

final class cb extends bf
{
    private final ao eo;
    
    public cb(final ao eo, final AdUnit adUnit) {
        super(adUnit);
        this.eo = eo;
    }
    
    @Override
    public final void a(final Context context, final ViewGroup viewGroup) {
        if (this.eo != null) {
            this.eo.f();
        }
    }
}
