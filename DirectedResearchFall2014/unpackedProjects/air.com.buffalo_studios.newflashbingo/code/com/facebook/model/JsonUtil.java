package com.facebook.model;

import org.json.*;
import java.util.*;

class JsonUtil
{
    static void jsonObjectClear(final JSONObject jsonObject) {
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            keys.next();
            keys.remove();
        }
    }
    
    static boolean jsonObjectContainsValue(final JSONObject jsonObject, final Object obj) {
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            final Object opt = jsonObject.opt((String)keys.next());
            if (opt != null && opt.equals(obj)) {
                return true;
            }
        }
        return false;
    }
    
    static Set<Map.Entry<String, Object>> jsonObjectEntrySet(final JSONObject jsonObject) {
        final HashSet<JsonUtil$JSONObjectEntry> set = (HashSet<JsonUtil$JSONObjectEntry>)new HashSet<Map.Entry<String, Object>>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            final String s = keys.next();
            set.add(new JsonUtil$JSONObjectEntry(s, jsonObject.opt(s)));
        }
        return (Set<Map.Entry<String, Object>>)set;
    }
    
    static Set<String> jsonObjectKeySet(final JSONObject jsonObject) {
        final HashSet<Object> set = (HashSet<Object>)new HashSet<String>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            set.add(keys.next());
        }
        return (Set<String>)set;
    }
    
    static void jsonObjectPutAll(final JSONObject jsonObject, final Map<String, Object> map) {
        for (final Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jsonObject.putOpt((String)entry.getKey(), entry.getValue());
                continue;
            }
            catch (JSONException cause) {
                throw new IllegalArgumentException((Throwable)cause);
            }
            break;
        }
    }
    
    static Collection<Object> jsonObjectValues(final JSONObject jsonObject) {
        final ArrayList<Object> list = new ArrayList<Object>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            list.add(jsonObject.opt((String)keys.next()));
        }
        return list;
    }
}
