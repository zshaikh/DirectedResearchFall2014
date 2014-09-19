package com.tapjoy;

import java.util.*;

public class TJEventManager
{
    private static Map<String, TJEvent> eventsTable;
    
    static {
        TJEventManager.eventsTable = new LinkedHashMap<String, TJEvent>() {
            private static final long serialVersionUID = 5794666578643304105L;
            
            @Override
            protected boolean removeEldestEntry(final Map.Entry<String, TJEvent> entry) {
                return this.size() > 20;
            }
        };
    }
    
    public static TJEvent get(final String s) {
        return TJEventManager.eventsTable.get(s);
    }
    
    public static void put(final String s, final TJEvent tjEvent) {
        TJEventManager.eventsTable.put(s, tjEvent);
    }
    
    public static void remove(final String s) {
        TJEventManager.eventsTable.remove(s);
    }
}
