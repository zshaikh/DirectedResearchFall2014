package com.milkmangames.extensions.android.iab;

import org.json.*;
import android.app.*;
import android.util.*;
import android.content.*;
import java.util.*;
import c.m.x.a.iab.*;

final class l implements m
{
    final /* synthetic */ int a;
    final /* synthetic */ i b;
    
    l(final i b, final int a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public final void a(final p p2, final r r) {
        if (p2.d()) {
            this.b.a(i.f, p2);
            return;
        }
        i.a(this.b, r);
        final JSONObject jsonObject = new JSONObject();
        final JSONObject a = n.a(r);
        n.a(jsonObject, "requestId", this.a);
        n.a(jsonObject, "purchase", a);
        this.b.a(i.e, jsonObject.toString());
    }
}
