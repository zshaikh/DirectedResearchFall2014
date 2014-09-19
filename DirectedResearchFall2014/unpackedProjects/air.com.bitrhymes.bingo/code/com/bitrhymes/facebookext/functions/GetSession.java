package com.bitrhymes.facebookext.functions;

import com.adobe.fre.*;
import org.json.*;
import com.facebook.*;
import android.util.*;

public class GetSession implements FREFunction
{
    public static String accessToken;
    public static String appId;
    public static String expiresTime;
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final JSONObject jsonObject = new JSONObject();
            final Session activeSession = Session.getActiveSession();
            if (activeSession != null) {
                jsonObject.put("access_token", (Object)activeSession.getAccessToken());
                jsonObject.put("expiry_time", (Object)activeSession.getExpirationDate());
                Log.d("GetSession", "session is not null, got access token and expiry time");
            }
            return FREObject.newObject(jsonObject.toString());
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
