package com.applovin.impl.sdk;

import android.util.*;
import org.json.*;

class at implements l
{
    final /* synthetic */ AppLovinSdkImpl a;
    final /* synthetic */ String b;
    final /* synthetic */ as c;
    
    at(final as c, final AppLovinSdkImpl a, final String b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super();
    }
    
    @Override
    public void a(final int i) {
        boolean b;
        if (i < 200 || i >= 500) {
            b = true;
        }
        else {
            b = false;
        }
        boolean b2;
        if (i != -103) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if (b && b2 && this.c.a > 0) {
            final long longValue = (long)this.a.a(v.p);
            Log.w(this.b, "Unable to send requset due to server failure (code " + i + "). " + this.c.a + " attempts left, retrying in " + longValue / 1000.0 + " seconds...");
            as.b(this.c, 1);
            if (this.c.a == 0) {
                this.c.b();
            }
            this.a.a().a(this.c, am.b, longValue);
            return;
        }
        this.c.a(i);
    }
    
    @Override
    public void a(final JSONObject jsonObject, final int n) {
        this.c.a = 0;
        this.c.a(jsonObject, n);
    }
}
