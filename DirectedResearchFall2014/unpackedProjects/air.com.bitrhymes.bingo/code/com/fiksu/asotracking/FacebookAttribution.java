package com.fiksu.asotracking;

import android.net.*;
import android.util.*;
import android.database.*;
import android.content.*;

public class FacebookAttribution
{
    protected static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    protected static final Uri ATTRIBUTION_ID_CONTENT_URI;
    protected static final String[] PROJECTION;
    
    static {
        ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
        PROJECTION = new String[] { "aid" };
    }
    
    protected static String getAttributionId(final ContentResolver contentResolver) {
        Cursor query = null;
        try {
            query = contentResolver.query(FacebookAttribution.ATTRIBUTION_ID_CONTENT_URI, FacebookAttribution.PROJECTION, (String)null, (String[])null, (String)null);
            if (query == null || !query.moveToFirst()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            return query.getString(query.getColumnIndex("aid"));
        }
        catch (NullPointerException ex) {
            Log.e("FiksuTracking", "Caught NullPointerException in FacebookAttribution.getAttributionId(). Returning null");
            return null;
        }
        catch (IllegalStateException ex2) {
            Log.e("FiksuTracking", "Caught IllegalStateException in FacebookAttribution.getAttributionId(). Returning null");
            return null;
        }
        finally {
            if (query != null) {
                query.close();
            }
        }
    }
    
    protected static String getAttributionId(final Context context) {
        return getAttributionId(context.getContentResolver());
    }
}
