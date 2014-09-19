package com.fusepowered.a1.webapp;

import com.fusepowered.a1.campaign.*;
import com.fusepowered.a1.data.*;
import org.json.*;
import com.fusepowered.a1.*;
import java.util.*;

public class ApplifierImpactInstrumentation
{
    private static ArrayList<Map<String, JSONObject>> _unsentEvents;
    
    static {
        ApplifierImpactInstrumentation._unsentEvents = null;
    }
    
    public static void gaInstrumentationVideoAbort(final ApplifierImpactCampaign applifierImpactCampaign, final Map<String, Object> map) {
        final JSONObject mergeJSON = mergeJSON(getBasicGAVideoProperties(applifierImpactCampaign), mapToJSON(map));
        handleUnsentEvents();
        sendGAInstrumentationEvent("videoAnalyticsEventAbort", mergeJSON);
    }
    
    public static void gaInstrumentationVideoCaching(final ApplifierImpactCampaign applifierImpactCampaign, final Map<String, Object> map) {
        final JSONObject mergeJSON = mergeJSON(getBasicGAVideoProperties(applifierImpactCampaign), mapToJSON(map));
        handleUnsentEvents();
        sendGAInstrumentationEvent("videoAnalyticsEventCaching", mergeJSON);
    }
    
    public static void gaInstrumentationVideoError(final ApplifierImpactCampaign applifierImpactCampaign, final Map<String, Object> map) {
        final JSONObject mergeJSON = mergeJSON(getBasicGAVideoProperties(applifierImpactCampaign), mapToJSON(map));
        handleUnsentEvents();
        sendGAInstrumentationEvent("videoAnalyticsEventError", mergeJSON);
    }
    
    public static void gaInstrumentationVideoPlay(final ApplifierImpactCampaign applifierImpactCampaign, final Map<String, Object> map) {
        final JSONObject mergeJSON = mergeJSON(getBasicGAVideoProperties(applifierImpactCampaign), mapToJSON(map));
        handleUnsentEvents();
        sendGAInstrumentationEvent("videoAnalyticsEventPlay", mergeJSON);
    }
    
    private static JSONObject getBasicGAVideoProperties(final ApplifierImpactCampaign applifierImpactCampaign) {
        if (applifierImpactCampaign != null) {
            String s = "stream";
            if (applifierImpactCampaign.shouldCacheVideo() && ApplifierImpactUtils.canUseExternalStorage()) {
                s = "cached";
            }
            final String connectionType = ApplifierImpactDevice.getConnectionType();
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("videoPlaybackType", (Object)s);
                jsonObject.put("connectionType", (Object)connectionType);
                jsonObject.put("campaignId", (Object)applifierImpactCampaign.getCampaignId());
                return jsonObject;
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not create instrumentation JSON", ApplifierImpactInstrumentation.class);
                return null;
            }
        }
        return null;
    }
    
    private static void handleUnsentEvents() {
        sendGAInstrumentationEvents();
    }
    
    private static JSONObject mapToJSON(final Map<String, Object> map) {
        if (map != null) {
            final JSONObject jsonObject = new JSONObject();
            for (final String str : map.keySet()) {
                if (map.containsKey(str) && map.get(str) != null) {
                    try {
                        jsonObject.put(str, map.get(str));
                    }
                    catch (Exception ex) {
                        ApplifierImpactUtils.Log("Could not add value: " + str, ApplifierImpactInstrumentation.class);
                    }
                }
            }
            return jsonObject;
        }
        return null;
    }
    
    private static JSONObject mergeJSON(final JSONObject jsonObject, final JSONObject jsonObject2) {
        if (jsonObject != null && jsonObject2 != null) {
            final Iterator keys = jsonObject2.keys();
            while (keys.hasNext()) {
                try {
                    final String string = keys.next().toString();
                    jsonObject.put(string, jsonObject2.get(string));
                }
                catch (Exception ex) {
                    ApplifierImpactUtils.Log("Problems creating JSON", ApplifierImpactInstrumentation.class);
                }
            }
            return jsonObject;
        }
        if (jsonObject != null) {
            return jsonObject;
        }
        if (jsonObject2 != null) {
            return jsonObject2;
        }
        return null;
    }
    
    private static void sendGAInstrumentationEvent(final String s, final JSONObject jsonObject) {
        final JSONObject jsonObject2 = new JSONObject();
        final JSONArray jsonArray = new JSONArray();
        final JSONObject jsonObject3 = new JSONObject();
        while (true) {
            try {
                jsonObject2.put("eventType", (Object)s);
                jsonObject2.put("data", (Object)jsonObject);
                jsonArray.put((Object)jsonObject2);
                jsonObject3.put("events", (Object)jsonArray);
                if (ApplifierImpact.mainview != null && ApplifierImpact.mainview.webview != null && ApplifierImpact.mainview.webview.isWebAppLoaded()) {
                    ApplifierImpactUtils.Log("Sending to webapp!", ApplifierImpactInstrumentation.class);
                    ApplifierImpact.mainview.webview.sendNativeEventToWebApp("googleAnalyticsEvent", jsonObject3);
                    return;
                }
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Couldn't create final data", ApplifierImpactInstrumentation.class);
                continue;
            }
            break;
        }
        ApplifierImpactUtils.Log("WebApp not initialized, could not send event!", ApplifierImpactInstrumentation.class);
        if (ApplifierImpactInstrumentation._unsentEvents == null) {
            ApplifierImpactInstrumentation._unsentEvents = new ArrayList<Map<String, JSONObject>>();
        }
        final HashMap<String, JSONObject> e = new HashMap<String, JSONObject>();
        e.put(s, jsonObject);
        ApplifierImpactInstrumentation._unsentEvents.add(e);
    }
    
    private static void sendGAInstrumentationEvents() {
        final JSONArray jsonArray = new JSONArray();
        final JSONObject jsonObject = new JSONObject();
        if (ApplifierImpactInstrumentation._unsentEvents != null) {
            for (final Map<String, JSONObject> map : ApplifierImpactInstrumentation._unsentEvents) {
                final JSONObject jsonObject2 = new JSONObject();
                final String s = map.keySet().iterator().next();
                final JSONObject jsonObject3 = map.get(s);
                try {
                    jsonObject2.put("eventType", (Object)s);
                    jsonObject2.put("data", (Object)jsonObject3);
                    jsonArray.put((Object)jsonObject2);
                    try {
                        jsonObject.put("events", (Object)jsonArray);
                    }
                    catch (Exception ex) {}
                }
                catch (Exception ex2) {}
            }
            if (ApplifierImpact.mainview != null && ApplifierImpact.mainview.webview != null && ApplifierImpact.mainview.webview.isWebAppLoaded()) {
                ApplifierImpactUtils.Log("Sending to webapp!", ApplifierImpactInstrumentation.class);
                ApplifierImpact.mainview.webview.sendNativeEventToWebApp("googleAnalyticsEvent", jsonObject);
                ApplifierImpactInstrumentation._unsentEvents.clear();
                ApplifierImpactInstrumentation._unsentEvents = null;
            }
        }
    }
}
