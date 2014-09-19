package com.facebook.model;

import org.json.*;
import java.util.*;
import android.annotation.*;

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
        final HashSet<JSONObjectEntry> set = (HashSet<JSONObjectEntry>)new HashSet<Map.Entry<String, Object>>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            final String s = keys.next();
            set.add(new JSONObjectEntry(s, jsonObject.opt(s)));
        }
        return (Set<Map.Entry<String, Object>>)set;
    }
    
    static Set<String> jsonObjectKeySet(final JSONObject jsonObject) {
        final HashSet<String> set = new HashSet<String>();
        final Iterator keys = jsonObject.keys();
        while (keys.hasNext()) {
            set.add(keys.next());
        }
        return set;
    }
    
    static void jsonObjectPutAll(final JSONObject jsonObject, final Map<String, Object> map) {
        for (final Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jsonObject.putOpt((String)entry.getKey(), entry.getValue());
            }
            catch (JSONException cause) {
                throw new IllegalArgumentException((Throwable)cause);
            }
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
    
    private static final class JSONObjectEntry implements Entry<String, Object>
    {
        private final String key;
        private final Object value;
        
        JSONObjectEntry(final String key, final Object value) {
            super();
            this.key = key;
            this.value = value;
        }
        
        @SuppressLint({ "FieldGetter" })
        public String getKey() {
            return this.key;
        }
        
        @Override
        public Object getValue() {
            return this.value;
        }
        
        @Override
        public Object setValue(final Object o) {
            throw new UnsupportedOperationException("JSONObjectEntry is immutable");
        }
    }
}
