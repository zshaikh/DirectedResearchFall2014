package com.tapjoy;

import android.util.*;
import java.util.*;
import android.content.*;
import java.io.*;

public class TJEvent
{
    private static final String TAG = "TJEvent";
    private boolean autoShowContent;
    private TJEventCallback callback;
    private boolean contentAvailable;
    private boolean contentShown;
    private Context context;
    private TJEventData eventData;
    private Map<String, String> eventParams;
    private Map<String, String> urlParams;
    
    public TJEvent(final Context context, final String s, final TJEventCallback tjEventCallback) {
        this(context, s, null, tjEventCallback);
    }
    
    public TJEvent(final Context context, final String name, final String value, final TJEventCallback callback) {
        super();
        this.contentShown = false;
        this.contentAvailable = false;
        this.autoShowContent = true;
        this.context = context;
        this.callback = callback;
        this.eventData = new TJEventData();
        this.eventData.name = name;
        this.eventData.value = value;
        this.eventData.guid = UUID.randomUUID().toString();
        while (TJEventManager.get(this.eventData.guid) != null) {
            this.eventData.guid = UUID.randomUUID().toString();
        }
        TJEventManager.put(this.eventData.guid, this);
    }
    
    public void enableAutoPresent(final boolean autoShowContent) {
        this.autoShowContent = autoShowContent;
    }
    
    public TJEventCallback getCallback() {
        return this.callback;
    }
    
    public String getGUID() {
        return this.eventData.guid;
    }
    
    public String getName() {
        return this.eventData.name;
    }
    
    public void send() {
        this.contentShown = false;
        if (this.callback == null) {
            Log.e("TJEvent", "TJEventSendCallback is null");
        }
        if (TapjoyConnectCore.getInstance() == null || !TapjoyConnectCore.getInstance().isInitialized()) {
            Log.e("TJEvent", "ERROR -- SDK not initialized -- requestTapjoyConnect must be called first");
            if (this.callback != null) {
                this.callback.sendEventFail(this, new TJError(0, "SDK not initialized -- requestTapjoyConnect must be called first"));
            }
        }
        else if (this.context == null) {
            if (this.callback != null) {
                this.callback.sendEventFail(this, new TJError(0, "Context is null -- TJEvent requires a valid Context."));
            }
        }
        else {
            if (this.eventData.name != null && this.eventData.name.length() != 0) {
                this.urlParams = TapjoyConnectCore.getGenericURLParams();
                if (this.eventParams == null) {
                    this.eventParams = new HashMap<String, String>();
                }
                TapjoyUtil.safePut(this.eventParams, "event_name", this.eventData.name, true);
                TapjoyUtil.safePut(this.eventParams, "event_value", this.eventData.value, true);
                this.urlParams.putAll(this.eventParams);
                this.urlParams.putAll(TapjoyConnectCore.getTimeStampAndVerifierParams());
                this.eventData.url = "https://events.tapjoy.com/events?";
                this.eventData.baseURL = "https://events.tapjoy.com/events?".substring(0, "https://events.tapjoy.com/events?".indexOf(47, "https://events.tapjoy.com/events?".indexOf("//") + (1 + "//".length())));
                new Thread() {
                    @Override
                    public void run() {
                        final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TJEvent.this.eventData.url, TJEvent.this.urlParams);
                        TJEvent.this.eventData.httpStatusCode = responseFromURL.statusCode;
                        TJEvent.this.eventData.httpResponse = responseFromURL.response;
                        if (responseFromURL != null && TJEvent.this.callback != null) {
                            switch (responseFromURL.statusCode) {
                                default: {
                                    TJEvent.this.callback.sendEventCompleted(TJEvent.this, TJEvent.this.contentAvailable);
                                    break;
                                }
                                case 200: {
                                    TJEvent.this.contentAvailable = true;
                                    TJEvent.this.callback.sendEventCompleted(TJEvent.this, TJEvent.this.contentAvailable);
                                    if (TJEvent.this.autoShowContent) {
                                        TJEvent.this.showContent();
                                        return;
                                    }
                                    break;
                                }
                                case 0: {
                                    TJEvent.this.callback.sendEventFail(TJEvent.this, new TJError(responseFromURL.statusCode, responseFromURL.response));
                                    TJEvent.this.urlParams.remove("timestamp");
                                    TJEvent.this.urlParams.remove("verifier");
                                    TapjoyConnectCore.saveOfflineLog(TJEvent.this.eventData.url + TapjoyUtil.convertURLParams(TJEvent.this.urlParams, false));
                                }
                            }
                        }
                    }
                }.start();
                return;
            }
            if (this.callback != null) {
                this.callback.sendEventFail(this, new TJError(0, "Invalid eventName -- TJEvent requires a valid eventName."));
            }
        }
    }
    
    public void setParameters(final Map<String, String> eventParams) {
        this.eventParams = eventParams;
    }
    
    public void showContent() {
        if (!this.contentAvailable) {
            Log.e("TJEvent", "cannot show content for non-200 send event");
            return;
        }
        if (this.callback == null) {
            Log.e("TJEvent", "TJEventShowCallback cb is null");
            return;
        }
        if (this.contentShown) {
            Log.e("TJEvent", "Content has already been shown for event " + this.eventData.name);
            return;
        }
        Intent intent;
        if (this.eventData.name.equals("tj_legacy_featured_ad")) {
            if (this.eventParams.containsKey("featured_app_legacy")) {
                intent = new Intent(this.context, (Class)TapjoyFeaturedAppWebView.class);
            }
            else {
                intent = new Intent(this.context, (Class)TapjoyFullScreenAdWebView.class);
            }
            intent.putExtra("legacy_view", true);
        }
        else if (this.eventData.name.equals("tj_legacy_reengagement_rewards")) {
            intent = new Intent(this.context, (Class)TapjoyDailyRewardAdWebView.class);
            intent.putExtra("legacy_view", true);
        }
        else {
            intent = new Intent(this.context, (Class)TJAdUnitView.class);
        }
        this.contentShown = true;
        intent.putExtra("view_type", 1);
        intent.putExtra("tjevent", (Serializable)this.eventData);
        intent.setFlags(268435456);
        this.context.startActivity(intent);
    }
}
