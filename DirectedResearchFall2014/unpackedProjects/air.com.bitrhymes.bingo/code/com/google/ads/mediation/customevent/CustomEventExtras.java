package com.google.ads.mediation.customevent;

import com.google.ads.mediation.*;
import java.util.*;

public class CustomEventExtras implements NetworkExtras
{
    private final HashMap<String, Object> a;
    
    public CustomEventExtras() {
        super();
        this.a = new HashMap<String, Object>();
    }
    
    public CustomEventExtras addExtra(final String key, final Object value) {
        this.a.put(key, value);
        return this;
    }
    
    public CustomEventExtras clearExtras() {
        this.a.clear();
        return this;
    }
    
    public Object getExtra(final String key) {
        return this.a.get(key);
    }
    
    public Object removeExtra(final String key) {
        return this.a.remove(key);
    }
}
