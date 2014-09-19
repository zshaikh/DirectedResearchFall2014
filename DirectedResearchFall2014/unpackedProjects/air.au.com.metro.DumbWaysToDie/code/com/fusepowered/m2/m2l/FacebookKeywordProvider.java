package com.fusepowered.m2.m2l;

import android.net.*;
import android.content.*;
import android.util.*;
import android.database.*;

public class FacebookKeywordProvider
{
    private static final String ID_COLUMN_NAME = "aid";
    private static final String ID_PREFIX = "FBATTRID:";
    private static final Uri ID_URL;
    
    static {
        ID_URL = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    }
    
    public static String getKeyword(final Context context) {
        Cursor query = null;
        try {
            query = context.getContentResolver().query(FacebookKeywordProvider.ID_URL, new String[] { "aid" }, (String)null, (String[])null, (String)null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            final String string2 = query.getString(query.getColumnIndex("aid"));
            if (string2 == null || string2.length() == 0) {
                return null;
            }
            return "FBATTRID:" + string2;
        }
        catch (Exception ex) {
            Log.d("MoPub", "Unable to retrieve FBATTRID: " + ex.toString());
            return null;
        }
        finally {
            if (query != null) {
                query.close();
            }
        }
    }
}
