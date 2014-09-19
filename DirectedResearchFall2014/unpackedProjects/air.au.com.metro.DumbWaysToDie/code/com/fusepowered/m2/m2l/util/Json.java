package com.fusepowered.m2.m2l.util;

import org.json.*;
import java.util.*;

public class Json
{
    public static String[] jsonArrayToStringArray(final String str) {
        final String string = "{key:" + str + "}";
        try {
            final JSONArray jsonArray = ((JSONObject)new JSONTokener(string).nextValue()).getJSONArray("key");
            final String[] array = new String[jsonArray.length()];
            for (int i = 0; i < array.length; ++i) {
                array[i] = jsonArray.getString(i);
            }
            return array;
        }
        catch (JSONException ex) {
            return new String[0];
        }
    }
    
    public static Map<String, String> jsonStringToMap(final String s) throws Exception {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (s != null && !s.equals("")) {
            final JSONObject jsonObject = (JSONObject)new JSONTokener(s).nextValue();
            final Iterator keys = jsonObject.keys();
            while (keys.hasNext()) {
                final String s2 = keys.next();
                hashMap.put(s2, jsonObject.getString(s2));
            }
        }
        return hashMap;
    }
    
    public static String mapToJsonString(final Map<String, String> map) {
        if (map == null) {
            return "{}";
        }
        final StringBuilder sb = new StringBuilder();
        sb.append("{");
        int n = 1;
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            if (n == 0) {
                sb.append(",");
            }
            sb.append("\"");
            sb.append(entry.getKey());
            sb.append("\":\"");
            sb.append(entry.getValue());
            sb.append("\"");
            n = 0;
        }
        sb.append("}");
        return sb.toString();
    }
}
