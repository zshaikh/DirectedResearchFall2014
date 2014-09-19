package com.tapjoy;

import android.content.*;
import java.util.*;

public class TapjoyEvent
{
    public static final int EVENT_TYPE_IAP = 1;
    public static final int EVENT_TYPE_SHUTDOWN = 2;
    private static final String TAG = "Event";
    private static TapjoyURLConnection tapjoyURLConnection;
    private Context context;
    
    static {
        TapjoyEvent.tapjoyURLConnection = null;
    }
    
    public TapjoyEvent(final Context context) {
        super();
        this.context = context;
        TapjoyEvent.tapjoyURLConnection = new TapjoyURLConnection();
    }
    
    public String createEventParameter(final String str) {
        return "ue[" + str + "]";
    }
    
    public void sendEvent(final int n, final Map<String, String> map) {
        TapjoyLog.i("Event", "sendEvent type: " + n);
        final Map<String, String> genericURLParams = TapjoyConnectCore.getGenericURLParams();
        TapjoyUtil.safePut(genericURLParams, "event_type_id", String.valueOf(n), true);
        if (map != null) {
            genericURLParams.putAll(map);
        }
        new Thread(new EventThread(genericURLParams)).start();
    }
    
    public void sendIAPEvent(final String s, final float f, final int i, final String s2) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        TapjoyUtil.safePut(hashMap, this.createEventParameter("name"), s, true);
        TapjoyUtil.safePut(hashMap, this.createEventParameter("price"), String.valueOf(f), true);
        TapjoyUtil.safePut(hashMap, this.createEventParameter("quantity"), String.valueOf(i), true);
        TapjoyUtil.safePut(hashMap, this.createEventParameter("currency_code"), s2, true);
        this.sendEvent(1, hashMap);
    }
    
    public void sendShutDownEvent() {
        this.sendEvent(2, null);
    }
    
    public class EventThread implements Runnable
    {
        private Map<String, String> params;
        
        public EventThread(final Map<String, String> params) {
            super();
            this.params = params;
        }
        
        @Override
        public void run() {
            final String string = TapjoyConnectCore.getHostURL() + "user_events?";
            final TapjoyHttpURLResponse responseFromURL = TapjoyEvent.tapjoyURLConnection.getResponseFromURL(string, this.params, 1);
            if (responseFromURL == null) {
                TapjoyLog.e("Event", "Server/network error");
                return;
            }
            switch (responseFromURL.statusCode) {
                default: {
                    TapjoyLog.e("Event", "Unknown error: " + responseFromURL.statusCode);
                }
                case 0: {
                    TapjoyLog.e("Event", "Event network error: " + responseFromURL.statusCode);
                    TapjoyConnectCore.saveOfflineLog(string + "?" + this.params);
                }
                case 200: {
                    TapjoyLog.i("Event", "Successfully sent Tapjoy event");
                }
                case 400: {
                    TapjoyLog.e("Event", "Error sending event: " + responseFromURL.response);
                }
            }
        }
    }
}
