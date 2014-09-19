package com.flurry.org.codehaus.jackson.util;

import java.util.*;

public final class InternCache extends LinkedHashMap<String, String>
{
    private static final int MAX_ENTRIES = 192;
    public static final InternCache instance;
    
    static {
        instance = new InternCache();
    }
    
    private InternCache() {
        super(192, 0.8f, true);
    }
    
    public String intern(final String key) {
        synchronized (this) {
            String intern = ((LinkedHashMap<K, String>)this).get(key);
            if (intern == null) {
                intern = key.intern();
                this.put(intern, intern);
            }
            return intern;
        }
    }
    
    @Override
    protected boolean removeEldestEntry(final Map.Entry<String, String> entry) {
        return this.size() > 192;
    }
}
