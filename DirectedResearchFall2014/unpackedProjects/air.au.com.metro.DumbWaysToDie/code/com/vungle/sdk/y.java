package com.vungle.sdk;

import org.json.*;

public final class y
{
    public long a;
    public long b;
    public long c;
    
    public final JSONObject a() {
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("startTime", this.a);
            jsonObject.put("videoLength", this.b);
            jsonObject.put("videoViewed", this.c);
            return jsonObject;
        }
        catch (JSONException ex) {
            r.a(IVungleConstants.b, "JSONException", (Throwable)ex);
            return jsonObject;
        }
    }
}
