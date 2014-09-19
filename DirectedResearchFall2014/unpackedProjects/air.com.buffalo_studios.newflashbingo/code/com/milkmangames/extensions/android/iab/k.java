package com.milkmangames.extensions.android.iab;

import org.json.*;
import android.app.*;
import android.util.*;
import android.content.*;
import c.m.x.a.iab.*;
import java.util.*;

final class k implements o
{
    final /* synthetic */ int a;
    final /* synthetic */ i b;
    
    k(final i b, final int a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public final void a(final p p2, final q q) {
        if (p2.d()) {
            this.b.a(i.c, p2);
            return;
        }
        final JSONObject jsonObject = new JSONObject();
        final JSONObject jsonObject2 = new JSONObject();
        final JSONObject jsonObject3 = new JSONObject();
        for (final t t : q.a().values()) {
            final JSONObject jsonObject4 = new JSONObject();
            n.a(jsonObject4, "itemType", t.f());
            n.a(jsonObject4, "type", t.b());
            n.a(jsonObject4, "price", t.c());
            n.a(jsonObject4, "title", t.d());
            n.a(jsonObject4, "description", t.e());
            n.a(jsonObject2, t.a(), jsonObject4);
        }
        for (final r r : q.b().values()) {
            n.a(jsonObject3, r.d(), n.a(r));
            i.a(this.b, r);
        }
        n.a(jsonObject, "skus", jsonObject2);
        n.a(jsonObject, "purchases", jsonObject3);
        n.a(jsonObject, "requestId", this.a);
        this.b.a(i.d, jsonObject.toString());
    }
}
