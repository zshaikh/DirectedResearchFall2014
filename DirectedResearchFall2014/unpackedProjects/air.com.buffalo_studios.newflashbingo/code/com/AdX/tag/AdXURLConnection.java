package com.AdX.tag;

import org.apache.http.params.*;
import org.apache.http.impl.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.util.*;
import android.util.*;
import org.apache.http.*;
import org.apache.http.client.*;

public class AdXURLConnection
{
    public static String connectToURL(final String obj, final String str) {
        String string = null;
        try {
            final HttpGet httpGet = new HttpGet((String.valueOf(obj) + str).replaceAll(" ", "%20"));
            final BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout((HttpParams)basicHttpParams, 15000);
            HttpConnectionParams.setSoTimeout((HttpParams)basicHttpParams, 30000);
            final HttpResponse execute = ((HttpClient)new DefaultHttpClient((HttpParams)basicHttpParams)).execute((HttpUriRequest)httpGet);
            string = EntityUtils.toString(execute.getEntity());
            Log.i("AdXAppTracker", "--------------------");
            Log.i("AdXAppTracker", "response status: " + execute.getStatusLine().getStatusCode());
            Log.i("AdXAppTracker", "response size: " + string.length());
            Log.i("AdXAppTracker", "response: ");
            Log.i("AdXAppTracker", new StringBuilder().append(string).toString());
            Log.i("AdXAppTracker", "--------------------");
            return string;
        }
        catch (Exception ex) {
            Log.e("AdXAppTracker", "Exception: " + ex.toString());
            return string;
        }
    }
}
