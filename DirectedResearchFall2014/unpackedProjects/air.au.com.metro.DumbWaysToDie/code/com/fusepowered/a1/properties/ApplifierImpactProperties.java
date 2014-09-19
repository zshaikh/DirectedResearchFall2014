package com.fusepowered.a1.properties;

import android.app.*;
import java.util.*;
import com.fusepowered.a1.campaign.*;
import com.fusepowered.a1.data.*;
import java.net.*;
import com.fusepowered.a1.*;
import android.content.*;
import org.json.*;

public class ApplifierImpactProperties
{
    public static int ALLOW_BACK_BUTTON_SKIP = 0;
    public static int ALLOW_VIDEO_SKIP = 0;
    public static String ANALYTICS_BASE_URL;
    public static Activity BASE_ACTIVITY;
    public static String CAMPAIGN_DATA_URL;
    public static String CAMPAIGN_QUERY_STRING;
    public static Activity CURRENT_ACTIVITY;
    public static String GAMER_SID;
    public static String IMPACT_BASE_URL;
    public static Boolean IMPACT_DEBUG_MODE;
    public static Map<String, Object> IMPACT_DEVELOPER_OPTIONS;
    public static String IMPACT_GAMER_ID;
    public static String IMPACT_GAME_ID;
    public static final int MAX_BUFFERING_WAIT_SECONDS = 20;
    public static final int MAX_NUMBER_OF_ANALYTICS_RETRIES = 5;
    public static Boolean RUN_WEBVIEW_TESTS;
    public static ApplifierImpactCampaign SELECTED_CAMPAIGN;
    public static Boolean TESTMODE_ENABLED;
    public static String TEST_DATA;
    public static String TEST_DEVELOPER_ID;
    private static Map<String, String> TEST_EXTRA_PARAMS;
    public static String TEST_JAVASCRIPT;
    public static String TEST_OPTIONS_ID;
    public static String TEST_URL;
    public static String WEBVIEW_BASE_URL;
    private static String _campaignQueryString;
    
    static {
        ApplifierImpactProperties.CAMPAIGN_DATA_URL = "https://impact.applifier.com/mobile/campaigns";
        ApplifierImpactProperties.WEBVIEW_BASE_URL = null;
        ApplifierImpactProperties.ANALYTICS_BASE_URL = null;
        ApplifierImpactProperties.IMPACT_BASE_URL = null;
        ApplifierImpactProperties.CAMPAIGN_QUERY_STRING = null;
        ApplifierImpactProperties.IMPACT_GAME_ID = null;
        ApplifierImpactProperties.IMPACT_GAMER_ID = null;
        ApplifierImpactProperties.GAMER_SID = null;
        ApplifierImpactProperties.TESTMODE_ENABLED = false;
        ApplifierImpactProperties.BASE_ACTIVITY = null;
        ApplifierImpactProperties.CURRENT_ACTIVITY = null;
        ApplifierImpactProperties.SELECTED_CAMPAIGN = null;
        ApplifierImpactProperties.IMPACT_DEBUG_MODE = false;
        ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS = null;
        ApplifierImpactProperties.ALLOW_VIDEO_SKIP = 0;
        ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP = 0;
        ApplifierImpactProperties.TEST_DATA = null;
        ApplifierImpactProperties.TEST_URL = null;
        ApplifierImpactProperties.TEST_JAVASCRIPT = null;
        ApplifierImpactProperties.RUN_WEBVIEW_TESTS = false;
        ApplifierImpactProperties.TEST_DEVELOPER_ID = null;
        ApplifierImpactProperties.TEST_OPTIONS_ID = null;
        ApplifierImpactProperties.TEST_EXTRA_PARAMS = null;
        ApplifierImpactProperties._campaignQueryString = null;
    }
    
    private static void createCampaignQueryString() {
    Label_0772_Outer:
        while (true) {
            String campaignQueryString = "?";
            while (true) {
                while (true) {
                    try {
                        campaignQueryString = String.format("%s%s=%s", campaignQueryString, "deviceId", URLEncoder.encode(ApplifierImpactDevice.getAndroidId(), "UTF-8"));
                        if (!ApplifierImpactDevice.getAndroidId().equals("unknown")) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "androidId", URLEncoder.encode(ApplifierImpactDevice.getAndroidId(), "UTF-8"));
                        }
                        if (!ApplifierImpactDevice.getTelephonyId().equals("unknown")) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "telephonyId", URLEncoder.encode(ApplifierImpactDevice.getTelephonyId(), "UTF-8"));
                        }
                        if (!ApplifierImpactDevice.getAndroidSerial().equals("unknown")) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "serialId", URLEncoder.encode(ApplifierImpactDevice.getAndroidSerial(), "UTF-8"));
                        }
                        if (!ApplifierImpactDevice.getOpenUdid().equals("unknown")) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "openUdid", URLEncoder.encode(ApplifierImpactDevice.getOpenUdid(), "UTF-8"));
                        }
                        if (!ApplifierImpactDevice.getMacAddress().equals("unknown")) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "macAddress", URLEncoder.encode(ApplifierImpactDevice.getMacAddress(), "UTF-8"));
                        }
                        if (!ApplifierImpactDevice.getOdin1Id().equals("unknown")) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "odin1Id", URLEncoder.encode(ApplifierImpactDevice.getOdin1Id(), "UTF-8"));
                        }
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "platform", "android");
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "gameId", URLEncoder.encode(ApplifierImpactProperties.IMPACT_GAME_ID, "UTF-8"));
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "sdkVersion", URLEncoder.encode("109", "UTF-8"));
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "softwareVersion", URLEncoder.encode(ApplifierImpactDevice.getSoftwareVersion(), "UTF-8"));
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "hardwareVersion", URLEncoder.encode(ApplifierImpactDevice.getHardwareVersion(), "UTF-8"));
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "deviceType", ApplifierImpactDevice.getDeviceType());
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "connectionType", URLEncoder.encode(ApplifierImpactDevice.getConnectionType(), "UTF-8"));
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "screenSize", ApplifierImpactDevice.getScreenSize());
                        campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "screenDensity", ApplifierImpactDevice.getScreenDensity());
                        if (ApplifierImpactProperties.TESTMODE_ENABLED) {
                            campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "test", "true");
                            if (ApplifierImpactProperties.TEST_OPTIONS_ID != null && ApplifierImpactProperties.TEST_OPTIONS_ID.length() > 0) {
                                campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "optionsId", ApplifierImpactProperties.TEST_OPTIONS_ID);
                            }
                            if (ApplifierImpactProperties.TEST_DEVELOPER_ID != null && ApplifierImpactProperties.TEST_DEVELOPER_ID.length() > 0) {
                                campaignQueryString = String.format("%s&%s=%s", campaignQueryString, "developerId", ApplifierImpactProperties.TEST_DEVELOPER_ID);
                            }
                            ApplifierImpactProperties._campaignQueryString = campaignQueryString;
                            return;
                        }
                    }
                    catch (Exception ex) {
                        ApplifierImpactUtils.Log("Problems creating campaigns query: " + ex.getMessage() + ex.getStackTrace().toString(), ApplifierImpactProperties.class);
                        continue Label_0772_Outer;
                    }
                    break;
                }
                if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
                    final Object[] args = { campaignQueryString, "encrypted", null };
                    String s;
                    if (ApplifierImpactUtils.isDebuggable((Context)ApplifierImpactProperties.CURRENT_ACTIVITY)) {
                        s = "false";
                    }
                    else {
                        s = "true";
                    }
                    args[2] = s;
                    campaignQueryString = String.format("%s&%s=%s", args);
                    continue;
                }
                continue;
            }
        }
    }
    
    public static String getCampaignQueryUrl() {
        createCampaignQueryString();
        String s = ApplifierImpactProperties.CAMPAIGN_DATA_URL;
        if (ApplifierImpactUtils.isDebuggable((Context)ApplifierImpactProperties.BASE_ACTIVITY) && ApplifierImpactProperties.TEST_URL != null) {
            s = ApplifierImpactProperties.TEST_URL;
        }
        return String.format("%s%s", s, ApplifierImpactProperties._campaignQueryString);
    }
    
    public static JSONObject getDeveloperOptionsAsJson() {
        if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS != null) {
            final JSONObject jsonObject = new JSONObject();
            try {
                final boolean containsKey = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("noOfferScreen");
                boolean booleanValue = false;
                if (containsKey) {
                    booleanValue = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("noOfferScreen");
                }
                jsonObject.put("noOfferScreen", booleanValue);
                final boolean containsKey2 = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("openAnimated");
                boolean booleanValue2 = false;
                if (containsKey2) {
                    booleanValue2 = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("openAnimated");
                }
                jsonObject.put("openAnimated", booleanValue2);
                final boolean containsKey3 = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("muteVideoSounds");
                boolean booleanValue3 = false;
                if (containsKey3) {
                    booleanValue3 = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("muteVideoSounds");
                }
                jsonObject.put("muteVideoSounds", booleanValue3);
                if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("sid")) {
                    jsonObject.put("sid", ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("sid"));
                }
                final boolean containsKey4 = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("useDeviceOrientationForVideo");
                boolean booleanValue4 = false;
                if (containsKey4) {
                    booleanValue4 = ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("useDeviceOrientationForVideo");
                }
                jsonObject.put("useDeviceOrientationForVideo", booleanValue4);
                return jsonObject;
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Could not create JSON", ApplifierImpactProperties.class);
                return jsonObject;
            }
        }
        return null;
    }
    
    public static void setExtraParams(final Map<String, String> map) {
        if (map.containsKey("testData")) {
            ApplifierImpactProperties.TEST_DATA = map.get("testData");
        }
        if (map.containsKey("testUrl")) {
            ApplifierImpactProperties.TEST_URL = map.get("testUrl");
        }
        if (map.containsKey("testJavaScript")) {
            ApplifierImpactProperties.TEST_JAVASCRIPT = map.get("testJavaScript");
        }
    }
}
