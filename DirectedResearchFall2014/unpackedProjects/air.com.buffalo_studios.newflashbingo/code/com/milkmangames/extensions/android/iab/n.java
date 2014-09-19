package com.milkmangames.extensions.android.iab;

import c.m.x.a.iab.*;
import android.util.*;
import org.json.*;

public final class n
{
    public static JSONObject a(final r r) {
        final JSONObject jsonObject = new JSONObject();
        a(jsonObject, "itemType", (Object)r.a());
        a(jsonObject, "orderId", (Object)r.b());
        a(jsonObject, "packageName", (Object)r.c());
        a(jsonObject, "sku", (Object)r.d());
        a(jsonObject, "purchaseTime", r.e());
        a(jsonObject, "purchaseState", r.f());
        a(jsonObject, "developerPayload", (Object)r.g());
        a(jsonObject, "token", (Object)r.h());
        a(jsonObject, "signature", (Object)r.j());
        a(jsonObject, "json", (Object)r.i().toString());
        return jsonObject;
    }
    
    public static void a(final JSONObject jsonObject, final String str, final Object o) {
        try {
            jsonObject.putOpt(str, o);
        }
        catch (JSONException ex) {
            Log.e(i.j, "Parse error encoding data '" + str + "':");
            ex.printStackTrace();
        }
    }
    
    public static void a(final JSONObject jsonObject, final String str, final String s) {
        String s2 = "";
        Label_0015: {
            if (s != null) {
                break Label_0015;
            }
            try {
                while (true) {
                    jsonObject.put(str, (Object)s2);
                    return;
                    s2 = s;
                    continue;
                }
            }
            catch (Exception ex) {
                Log.e(i.j, "Parse error encoding data '" + str + "':");
                ex.printStackTrace();
            }
        }
    }
}
