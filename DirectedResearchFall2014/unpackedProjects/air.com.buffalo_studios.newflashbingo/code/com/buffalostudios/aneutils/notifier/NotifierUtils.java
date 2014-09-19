package com.buffalostudios.aneutils.notifier;

import android.content.*;
import android.util.*;
import org.json.*;
import java.util.*;

class NotifierUtils
{
    private static final String TAG = "NotifierUtils";
    
    public static JSONObject encodeNotificationIntent(final Intent intent) {
        final JSONObject jsonObject = new JSONObject();
        final JSONObject jsonObject2 = new JSONObject();
        final Iterator<String> iterator = intent.getExtras().keySet().iterator();
        while (true) {
            Label_0048: {
                if (iterator.hasNext()) {
                    break Label_0048;
                }
                try {
                    jsonObject.put("extras", (Object)jsonObject2);
                    return jsonObject;
                    final String s = iterator.next();
                    try {
                        jsonObject2.put(s, intent.getExtras().get(s));
                    }
                    catch (JSONException ex) {
                        Log.e("NotifierUtils", "Failed posting extra to callback");
                        ex.printStackTrace();
                    }
                }
                catch (JSONException ex2) {
                    Log.e("NotifierUtils", "Failed posting extras obj to callback");
                    ex2.printStackTrace();
                    return jsonObject;
                }
            }
        }
    }
}
