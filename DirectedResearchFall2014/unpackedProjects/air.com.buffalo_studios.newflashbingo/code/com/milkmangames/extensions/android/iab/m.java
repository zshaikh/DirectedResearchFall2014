package com.milkmangames.extensions.android.iab;

import c.m.x.a.iab.*;
import org.json.*;

final class m implements k
{
    final /* synthetic */ int a;
    final /* synthetic */ String b;
    final /* synthetic */ i c;
    
    m(final i c, final int a, final String b) {
        this.c = c;
        this.a = a;
        this.b = b;
        super();
    }
    
    @Override
    public final void a(final r r, final p p2) {
        if (p2.d()) {
            this.c.a(i.h, p2);
            return;
        }
        final JSONObject jsonObject = new JSONObject();
        final JSONObject a = n.a(r);
        n.a(jsonObject, "requestId", this.a);
        n.a(jsonObject, "sku", (Object)this.b);
        n.a(jsonObject, "purchase", a);
        this.c.a(i.g, jsonObject.toString());
    }
}
