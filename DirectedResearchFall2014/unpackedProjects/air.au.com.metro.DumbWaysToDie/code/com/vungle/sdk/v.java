package com.vungle.sdk;

import org.json.*;

public final class v
{
    public static String[] a(final JSONObject jsonObject, final String s) throws JSONException {
        final boolean null = jsonObject.isNull(s);
        String[] array = null;
        if (!null) {
            final JSONArray jsonArray = jsonObject.getJSONArray(s);
            final int length = jsonArray.length();
            final String[] array2 = new String[length];
            for (int i = 0; i < length; ++i) {
                array2[i] = jsonArray.getString(i);
            }
            array = array2;
        }
        return array;
    }
}
