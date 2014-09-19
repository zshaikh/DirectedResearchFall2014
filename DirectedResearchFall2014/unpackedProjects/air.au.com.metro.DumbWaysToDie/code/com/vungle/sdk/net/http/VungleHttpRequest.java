package com.vungle.sdk.net.http;

import android.os.*;
import com.vungle.sdk.*;

public abstract class VungleHttpRequest extends ah
{
    protected void d() {
        super.d();
    }
    
    protected final Bundle g() {
        final Bundle g = super.g();
        g.putString("X-VUNGLE-BUNDLE-ID", n.e().getPackageName());
        g.putString("X-VUNGLE-LANGUAGE", VungleUtil.b());
        g.putString("X-VUNGLE-TIMEZONE", VungleUtil.c());
        if (this.e()) {
            g.putString("X-VUNG-AUTHORIZATION", VungleUtil.d(this.h()));
            g.putString("X-VUNG-DATE", String.valueOf(System.currentTimeMillis()));
        }
        return g;
    }
}
