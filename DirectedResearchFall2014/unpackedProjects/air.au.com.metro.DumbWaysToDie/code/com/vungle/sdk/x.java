package com.vungle.sdk;

import java.util.*;
import org.json.*;
import com.vungle.sdk.model.*;

public final class x
{
    public long a;
    public long b;
    public long c;
    public ArrayList<y> d;
    private JSONArray e;
    
    public x() {
        super();
        this.e = new JSONArray();
        this.b = 0L;
        this.d = new ArrayList<y>();
    }
    
    public final String a() {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("clickedThrough", (Object)this.e);
            jsonObject.put("adStartTime", this.a);
            jsonObject.put("adDuration", this.b);
            jsonObject.put("ttDownload", this.c);
            if (!this.d.isEmpty() && this.d != null) {
                final JSONArray jsonArray = new JSONArray();
                for (int size = this.d.size(), i = 0; i < size; ++i) {
                    jsonArray.put((Object)this.d.get(i).a());
                }
                jsonObject.put("plays", (Object)jsonArray);
            }
            final RequestAd a = ab.a();
            if (a != null) {
                return a.a(jsonObject);
            }
        }
        catch (JSONException ex) {
            r.a(IVungleConstants.b, "JSONException", (Throwable)ex);
        }
        return null;
    }
    
    public final void a(final String s) {
        if (this.e == null) {
            this.e = new JSONArray();
        }
        this.e.put((Object)s);
    }
}
