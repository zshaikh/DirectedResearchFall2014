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
    
    static Set jsonObjectEntrySet(final JSONObject jsonObject) {
        final HashSet<JsonUtil$JSONObjectEntry> set = new HashSet<JsonUtil$JSONObjectEntry>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            final String s = keys.next();
            set.add(new JsonUtil$JSONObjectEntry(s, jsonObject.opt(s)));
        }
        return set;
    }
    
    static Set jsonObjectKeySet(final JSONObject jsonObject) {
        final HashSet<Object> set = new HashSet<Object>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            set.add(keys.next());
        }
        return set;
    }
    
    static void jsonObjectPutAll(final JSONObject jsonObject, final Map map) {
        for (final Map.Entry<String, V> entry : map.entrySet()) {
            try {
                jsonObject.putOpt((String)entry.getKey(), (Object)entry.getValue());
                continue;
            }
            catch (JSONException cause) {
                throw new IllegalArgumentException((Throwable)cause);
            }
            break;
        }
    }
    
    static Collection jsonObjectValues(final JSONObject jsonObject) {
        final ArrayList<Object> list = new ArrayList<Object>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            list.add(jsonObject.opt((String)keys.next()));
        }
        return list;
    }
}
