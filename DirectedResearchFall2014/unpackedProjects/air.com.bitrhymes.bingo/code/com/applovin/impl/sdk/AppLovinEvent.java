package com.applovin.impl.sdk;

import java.util.*;
import org.json.*;

public class AppLovinEvent
{
    public static final String SESSION_END = "session_end";
    public static final String SESSION_START = "session_start";
    private String a;
    private String b;
    private long c;
    private String d;
    private Map e;
    
    public AppLovinEvent(final String s) {
        this(s, new HashMap());
    }
    
    private AppLovinEvent(final String s, final long n) {
        this(s, n, UUID.randomUUID().toString(), new HashMap());
    }
    
    private AppLovinEvent(final String d, final long c, final String a, final String b, final Map e) {
        super();
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        this.e = e;
    }
    
    private AppLovinEvent(final String s, final long n, final String s2, final Map map) {
        this(s, n, s2, "NO_LINK_ID_SET", map);
    }
    
    public AppLovinEvent(final String s, final Map map) {
        this(s, System.currentTimeMillis(), UUID.randomUUID().toString(), map);
    }
    
    static AppLovinEvent a(final String s, final double d, final String s2) {
        final AppLovinEvent appLovinEvent = new AppLovinEvent("revenue");
        appLovinEvent.setField("name", s);
        appLovinEvent.setField("revenue", Double.toString(d));
        appLovinEvent.setField("currency", s2);
        return appLovinEvent;
    }
    
    static AppLovinEvent a(final String s, final long n) {
        final AppLovinEvent appLovinEvent = new AppLovinEvent("session_tracking", n);
        appLovinEvent.setField("action", s);
        return appLovinEvent;
    }
    
    static AppLovinEvent a(final String str, final String s, final String s2, final Throwable t) {
        final AppLovinEvent appLovinEvent = new AppLovinEvent("error");
        String string;
        if (t != null) {
            string = str + ": " + t.getMessage();
        }
        else {
            string = str;
        }
        appLovinEvent.setField("code", s2);
        appLovinEvent.setField("message", s);
        appLovinEvent.setField("exception", string);
        return appLovinEvent;
    }
    
    static AppLovinEvent a(final String s, final String s2, final Throwable t) {
        return a(s, s2, "ReportedError", t);
    }
    
    static AppLovinEvent a(final JSONObject jsonObject) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final JSONObject optJSONObject = jsonObject.optJSONObject("values");
        if (optJSONObject != null) {
            final Iterator keys = optJSONObject.keys();
            while (keys.hasNext()) {
                final String string = keys.next().toString();
                hashMap.put(string, optJSONObject.getString(string));
            }
        }
        return new AppLovinEvent(jsonObject.getString("type"), jsonObject.getLong("ts"), jsonObject.getString("id"), jsonObject.getString("sid"), hashMap);
    }
    
    static AppLovinEvent b(final String s, final String s2, final Throwable t) {
        return a(s, s2, "UserError", t);
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof AppLovinEvent && this.a.equals(((AppLovinEvent)o).a));
    }
    
    public String getEventID() {
        return this.a;
    }
    
    @Override
    public int hashCode() {
        return this.a.hashCode();
    }
    
    public void setField(final String s, final String s2) {
        this.e.put(s, s2);
    }
    
    protected void setSessionLinkIdentifier(final String b) {
        this.b = b;
    }
    
    public JSONObject toJson() {
        final JSONObject jsonObject = new JSONObject();
        jsonObject.put("id", (Object)this.a);
        jsonObject.put("sid", (Object)this.b);
        jsonObject.put("ts", this.c);
        jsonObject.put("type", (Object)this.d);
        final JSONObject jsonObject2 = new JSONObject();
        for (final String s : this.e.keySet()) {
            jsonObject2.put(s, this.e.get(s));
        }
        jsonObject.put("values", (Object)jsonObject2);
        return jsonObject;
    }
    
    @Override
    public String toString() {
        try {
            return "ALEvent: " + this.toJson();
        }
        catch (JSONException ex) {
            return "ALEvent: Corrupted JSON";
        }
    }
}
