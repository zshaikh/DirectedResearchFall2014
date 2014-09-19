package com.fusepowered.fuseapi;

import com.fusepowered.crashlog.*;
import com.fusepowered.activities.*;
import com.fusepowered.logging.*;
import org.json.*;
import com.vungle.sdk.*;
import com.fusepowered.a1.*;
import android.util.*;
import android.graphics.*;
import java.util.*;
import android.net.*;
import android.app.*;
import com.fusepowered.push.*;
import android.content.*;
import java.net.*;
import com.fusepowered.util.*;
import android.view.*;
import android.provider.*;
import android.content.pm.*;
import com.fusepowered.m2.m2l.*;
import android.os.*;

public class FuseAPI
{
    public static FuseAPI FuseAPI;
    private static final String TAG = "FuseAPI";
    public static String accountAlias;
    public static Ad adToDisplay;
    public static String appName;
    public static String appNameDisplay;
    public static SharedPreferences appdata;
    private static AlertDialog$Builder builder;
    public static boolean checkingAd;
    private static HashMap<String, String> commonParams;
    private static Context context;
    public static DeviceInfoFactory deviceInfoFactory;
    private static boolean displayNotifications;
    private static boolean displayingAd;
    public static int drawerIconID;
    public static Intent forGCMEvents;
    public static FuseAdCallback fuseAdCallback;
    public static FuseCallback fuseCallback;
    public static int gameDataReqId;
    public static GameInfo gameInfo;
    public static Context gcmContext;
    public static int iconID;
    public static int id;
    private static ApplifierImpact impact;
    public static Thread loadThread;
    public static MoPubInterstitial mInterstitial;
    private static MoPubInterstitial mLandscapeInterstitial;
    private static MoPubInterstitial mPortraitInterstitial;
    public static Activity mainActivity;
    public static String notificationID;
    private static int numPlays;
    private static boolean optOut;
    public static boolean overrideSuspend;
    public static String packageName;
    public static boolean registered;
    public static String registrationID;
    public static ResponseValues responseValues;
    private static CrashDetector sDetector;
    public static boolean showingApplifier;
    public static boolean showingFuseNotifications;
    public static boolean showingManditoryMessage;
    public static boolean showingMopubAd;
    public static boolean showingMoreGames;
    private static boolean suspended;
    public static boolean vungleInitialized;
    public static boolean waitForLoad;
    
    static {
        com.fusepowered.fuseapi.FuseAPI.registered = false;
        com.fusepowered.fuseapi.FuseAPI.showingManditoryMessage = false;
        com.fusepowered.fuseapi.FuseAPI.showingFuseNotifications = false;
        com.fusepowered.fuseapi.FuseAPI.displayNotifications = false;
        com.fusepowered.fuseapi.FuseAPI.showingMoreGames = false;
        com.fusepowered.fuseapi.FuseAPI.overrideSuspend = false;
        com.fusepowered.fuseapi.FuseAPI.waitForLoad = false;
        com.fusepowered.fuseapi.FuseAPI.showingMopubAd = false;
        com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
        com.fusepowered.fuseapi.FuseAPI.showingApplifier = false;
        com.fusepowered.fuseapi.FuseAPI.vungleInitialized = false;
    }
    
    private FuseAPI(final Activity mainActivity) {
        super();
        com.fusepowered.fuseapi.FuseAPI.mainActivity = mainActivity;
        com.fusepowered.fuseapi.FuseAPI.context = mainActivity.getApplicationContext();
        com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory = new DeviceInfoFactory(com.fusepowered.fuseapi.FuseAPI.context);
        com.fusepowered.fuseapi.FuseAPI.responseValues = new ResponseValues();
        com.fusepowered.fuseapi.FuseAPI.commonParams = null;
    }
    
    private FuseAPI(final Context context) {
        super();
        com.fusepowered.fuseapi.FuseAPI.context = context;
        com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory = new DeviceInfoFactory(com.fusepowered.fuseapi.FuseAPI.context);
        com.fusepowered.fuseapi.FuseAPI.responseValues = new ResponseValues();
        com.fusepowered.fuseapi.FuseAPI.commonParams = null;
    }
    
    public static void acceptFriend(final String value, FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("fuse_id", value);
        hashMap.put("action", String.valueOf(ActionType.ACTION_ACCEPT_FRIEND.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseMessageCallback();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    public static void adClick() {
        FuseLog.d("FuseAPI", "Ad clicked, resetting displayingAd flag");
        com.fusepowered.fuseapi.FuseAPI.displayingAd = false;
        FuseLog.d("SUSPEND", "Ad clicked!");
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("ad_id", String.valueOf(getDisplayedAdId()));
            hashMap.put("shown_on_play", String.valueOf(gamesPlayed()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_FUSEAD_CLICK.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
        setFuseChildActivityOnDisplay(false);
        suspendSession();
    }
    
    public static void adDismiss() {
        FuseLog.d("FuseAPI", "Ad dismissed, resetting displayingAd flag");
        com.fusepowered.fuseapi.FuseAPI.displayingAd = false;
        if (com.fusepowered.fuseapi.FuseAPI.adToDisplay != null) {
            com.fusepowered.fuseapi.FuseAPI.adToDisplay.setDisplayed(false);
        }
    }
    
    public static void adDisplay(final int i) {
        com.fusepowered.fuseapi.FuseAPI.adToDisplay.setDisplayed(true);
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("ad_id", String.valueOf(i));
            hashMap.put("shown_on_play", String.valueOf(gamesPlayed()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_FUSEAD_VIEW.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void addFriend(final String value, FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("fuse_id", value);
        hashMap.put("action", String.valueOf(ActionType.ACTION_ADD_FRIEND.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseMessageCallback();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    private static JSONObject buildDataPayloadJSON(final String s, final GameKeyValuePairs gameKeyValuePairs) {
        final JSONObject jsonObject = new JSONObject();
        final JSONArray jsonArray = new JSONArray();
        try {
            for (final Map.Entry<String, String> entry : gameKeyValuePairs.getMapForKey(s).entrySet()) {
                final JSONObject jsonObject2 = new JSONObject();
                if (!StringUtil.isEmpty(entry.getKey()) && entry.getValue() != null) {
                    jsonObject2.put("k", (Object)entry.getKey());
                    jsonObject2.put("v", (Object)entry.getValue());
                    jsonObject2.put("b", (Object)"0");
                    jsonArray.put((Object)jsonObject2);
                }
            }
        }
        catch (JSONException ex) {
            Log.e("FuseAPI", "buildDataPayloadJSON JSONException", (Throwable)ex);
            return null;
        }
        jsonObject.put("data_payload", (Object)jsonArray);
        return jsonObject;
    }
    
    private static JSONObject buildDataPayloadJSON(final Set<Map.Entry<String, GameValue>> set) {
        JSONObject jsonObject;
        JSONArray jsonArray;
        while (true) {
            jsonObject = new JSONObject();
            jsonArray = new JSONArray();
            while (true) {
                Label_0177: {
                    try {
                        for (final Map.Entry<String, GameValue> entry : set) {
                            final JSONObject jsonObject2 = new JSONObject();
                            if (!StringUtil.isEmpty(entry.getKey()) && entry.getValue() != null) {
                                jsonObject2.put("k", (Object)entry.getKey());
                                jsonObject2.put("v", (Object)entry.getValue().getValue());
                                if (!entry.getValue().isBinary()) {
                                    break Label_0177;
                                }
                                final String s = "1";
                                jsonObject2.put("b", (Object)s);
                                jsonArray.put((Object)jsonObject2);
                            }
                        }
                        break;
                    }
                    catch (JSONException ex) {
                        Log.e("FuseAPI", "buildDataPayloadJSON JSONException", (Throwable)ex);
                        return null;
                    }
                }
                final String s = "0";
                continue;
            }
        }
        jsonObject.put("data_payload", (Object)jsonArray);
        return jsonObject;
    }
    
    public static void checkAdAvailable(final FuseAdCallback fuseAdCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.checkingAd || com.fusepowered.fuseapi.FuseAPI.displayingAd) {
            return;
        }
        com.fusepowered.fuseapi.FuseAPI.checkingAd = true;
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)com.fusepowered.fuseapi.FuseAPI.context.getSystemService("connectivity")).getActiveNetworkInfo();
        int n;
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            n = FuseAdErrors.FUSE_AD_NO_ERROR.getErrorCode();
        }
        else {
            n = FuseAdErrors.FUSE_AD_NOT_CONNECTED.getErrorCode();
        }
        if (com.fusepowered.fuseapi.FuseAPI.responseValues == null) {
            FuseLog.d("ADCHECK", "AD not available because response is null");
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(0, n);
            return;
        }
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getQueueSize() <= 0) {
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(0, n);
            return;
        }
        final Ad peekAd = com.fusepowered.fuseapi.FuseAPI.responseValues.peekAd();
        if (peekAd.waterfallContains(4) && com.fusepowered.fuseapi.FuseAPI.impact == null) {
            FuseLog.d("FuseAPI", "Applifier not configured, configuring!");
            configureApplifier(fuseAdCallback);
        }
        if (peekAd.waterfallContains(5) && !com.fusepowered.fuseapi.FuseAPI.vungleInitialized) {
            FuseLog.d("FuseAPI", "Vungle not configured, configuring!");
            configureVungle(fuseAdCallback);
        }
        if (peekAd.waterfallContains(1) && peekAd.hasHtmlBody()) {
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(1, 0);
            return;
        }
        if (peekAd.waterfallContains(5) && VunglePub.isVideoAvailable()) {
            FuseLog.d("FuseAPI", "Vungle ad available");
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(1, 0);
            return;
        }
        if (peekAd.waterfallContains(4) && com.fusepowered.fuseapi.FuseAPI.impact.canShowImpact()) {
            FuseLog.d("FuseAPI", "Applifier ad available");
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(1, 0);
            return;
        }
        if (!peekAd.waterfallContains(2)) {
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(0, 0);
            return;
        }
        if (com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial == null) {
            com.fusepowered.fuseapi.FuseAPI.adToDisplay = peekAd;
            configureMopub();
        }
        if (com.fusepowered.fuseapi.FuseAPI.mInterstitial.isReady()) {
            com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
            fuseAdCallback.adAvailabilityResponse(1, 0);
            return;
        }
        final MopubCheckAdCallback interstitialAdListener = new MopubCheckAdCallback() {
            @Override
            public void checkAdAvailableReturnFailed() {
                FuseLog.d("ADCHECK", "Mopub ad is NOT available after going to the net");
                com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
                fuseAdCallback.adAvailabilityResponse(0, 0);
            }
            
            @Override
            public void checkAdAvailableReturnSucess() {
                FuseLog.d("ADCHECK", "Mopub ad is available after going to the net");
                com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
                fuseAdCallback.adAvailabilityResponse(1, 0);
            }
        };
        com.fusepowered.fuseapi.FuseAPI.mInterstitial.setInterstitialAdListener((MoPubInterstitial.InterstitialAdListener)interstitialAdListener);
        com.fusepowered.fuseapi.FuseAPI.mInterstitial.load();
        new Handler().postDelayed((Runnable)new Runnable() {
            @Override
            public void run() {
                if (!interstitialAdListener.didReturn) {
                    FuseLog.d("AD", "Mopub ad did not finish loading before timing out");
                    interstitialAdListener.didReturn = true;
                    FuseLog.d("ADCHECK", "Mopub ad is NOT available after a timeout");
                    com.fusepowered.fuseapi.FuseAPI.checkingAd = false;
                    fuseAdCallback.adAvailabilityResponse(0, 0);
                }
            }
        }, 3000L);
    }
    
    private static void clearAll() {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues != null) {
            final ArrayList<Message> messages = com.fusepowered.fuseapi.FuseAPI.responseValues.getMessages();
            if (messages != null) {
                final Iterator<Message> iterator = messages.iterator();
                while (iterator.hasNext()) {
                    iterator.next().setDisplayed(false);
                }
            }
            final Ad ad = com.fusepowered.fuseapi.FuseAPI.responseValues.getAd();
            if (ad != null) {
                ad.setDisplayed(false);
            }
        }
    }
    
    private static void configureApplifier(final FuseAdCallback impactListener) {
        if (com.fusepowered.fuseapi.FuseAPI.impact != null) {
            return;
        }
        final String applifierId = com.fusepowered.fuseapi.FuseAPI.responseValues.getApplifierId();
        if (applifierId == null || applifierId.length() == 0) {
            FuseLog.e("FuseAPI", "No Applifier id, can't configure without it.");
            return;
        }
        if (com.fusepowered.fuseapi.FuseAPI.mainActivity == null) {
            FuseLog.e("FuseAPI", "Can't configure Applifier, mainActivity is null");
            return;
        }
        (com.fusepowered.fuseapi.FuseAPI.impact = new ApplifierImpact(com.fusepowered.fuseapi.FuseAPI.mainActivity, applifierId)).setImpactListener(impactListener);
    }
    
    private static void configureMopub() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            FuseLog.e("FuseAPI", "Can only configure waterfall on the UI thread!");
            return;
        }
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        double a = 0.0;
        double b = 0.0;
        double max = 0.0;
        if (com.fusepowered.fuseapi.FuseAPI.mainActivity != null) {
            com.fusepowered.fuseapi.FuseAPI.mainActivity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            a = displayMetrics.heightPixels;
            b = displayMetrics.widthPixels;
            max = Math.max(a, b);
        }
        if (max < 1024.0) {
            if (com.fusepowered.fuseapi.FuseAPI.adToDisplay.phonePortrait.length() != 0) {
                com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial = new MoPubInterstitial(com.fusepowered.fuseapi.FuseAPI.mainActivity, com.fusepowered.fuseapi.FuseAPI.adToDisplay.phonePortrait);
            }
            else {
                com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial = null;
            }
            if (com.fusepowered.fuseapi.FuseAPI.adToDisplay.phoneLandscape.length() != 0) {
                com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial = new MoPubInterstitial(com.fusepowered.fuseapi.FuseAPI.mainActivity, com.fusepowered.fuseapi.FuseAPI.adToDisplay.phoneLandscape);
            }
            else {
                com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial = null;
            }
        }
        else {
            if (com.fusepowered.fuseapi.FuseAPI.adToDisplay.tabletPortrait.length() != 0) {
                com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial = new MoPubInterstitial(com.fusepowered.fuseapi.FuseAPI.mainActivity, com.fusepowered.fuseapi.FuseAPI.adToDisplay.tabletPortrait);
            }
            else {
                com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial = null;
            }
            if (com.fusepowered.fuseapi.FuseAPI.adToDisplay.tabletLandscape.length() != 0) {
                com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial = new MoPubInterstitial(com.fusepowered.fuseapi.FuseAPI.mainActivity, com.fusepowered.fuseapi.FuseAPI.adToDisplay.tabletLandscape);
            }
            else {
                com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial = null;
            }
        }
        if (a > b) {
            com.fusepowered.fuseapi.FuseAPI.mInterstitial = com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial;
            return;
        }
        com.fusepowered.fuseapi.FuseAPI.mInterstitial = com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial;
    }
    
    private static void configureVungle(final FuseAdCallback eventListener) {
        if (com.fusepowered.fuseapi.FuseAPI.vungleInitialized) {
            return;
        }
        final String vungleId = com.fusepowered.fuseapi.FuseAPI.responseValues.getVungleId();
        if (vungleId == null || vungleId.length() == 0) {
            FuseLog.e("FuseAPI", "No Vungle id, can't configure without it.");
            return;
        }
        if (com.fusepowered.fuseapi.FuseAPI.mainActivity == null) {
            FuseLog.e("FuseAPI", "Can't configure vungle, mainActivity is null");
            return;
        }
        FuseLog.d("FuseAPI", "Initializing vungle with id: " + vungleId);
        VunglePub.init((Context)com.fusepowered.fuseapi.FuseAPI.mainActivity, vungleId);
        VunglePub.setEventListener((VunglePub.EventListener)eventListener);
        com.fusepowered.fuseapi.FuseAPI.vungleInitialized = true;
    }
    
    public static boolean connected() {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)com.fusepowered.fuseapi.FuseAPI.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
    
    public static void deleteSignPost(final String value, final int i) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("sign_post_id", String.valueOf(i));
            hashMap.put("action", String.valueOf(ActionType.ACTION_DELETE_SIGN_POST.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void deleteUserChatMessage(final String value, final int i) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("message_id", String.valueOf(i));
            hashMap.put("action", String.valueOf(ActionType.ACTION_DELETE_MESSAGE.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void deviceLogin(final String s, final FuseCallback fuseCallback) {
        getRegisterId(null, s, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), null, AccountType.FUSE_DEVICE_ID, fuseCallback);
    }
    
    public static void displayAd(final FuseApiBrowser fuseApiAdBrowser, final FuseAdCallback fuseAdCallback) {
        FuseLog.d("AD", "Displaying an ad");
        if (com.fusepowered.fuseapi.FuseAPI.displayingAd) {
            FuseLog.d("AD", "Ad already displaying or loading, skipping");
            return;
        }
        FuseLog.d("FuseAPI", "displayingAd = true");
        com.fusepowered.fuseapi.FuseAPI.displayingAd = true;
        FuseAdCallback fuseAdCallback2;
        if (fuseAdCallback != null) {
            fuseAdCallback2 = fuseAdCallback;
        }
        else {
            fuseAdCallback2 = new FuseAdCallbackImpl();
        }
        (com.fusepowered.fuseapi.FuseAPI.fuseAdCallback = fuseAdCallback2).setFuseApiAdBrowser(fuseApiAdBrowser);
        FuseLog.d("AD", "Starting process to show an ad");
        if (isFuseChildActivityOnDisplay()) {
            FuseLog.d("AD", "There is something very wrong with the display setting");
            return;
        }
        com.fusepowered.fuseapi.FuseAPI.adToDisplay = com.fusepowered.fuseapi.FuseAPI.responseValues.getAd();
        sendGetAd();
        if (com.fusepowered.fuseapi.FuseAPI.adToDisplay == null) {
            FuseLog.d("AD INFO", "Ad skiped.... There is no ad to display!!!");
            sendFuseAdSkip(FuseAdSkip.FUSE_AD_SKIP_NO_HTML.getErrorCode());
            com.fusepowered.fuseapi.FuseAPI.displayingAd = false;
            return;
        }
        displayAdFromWaterfall(com.fusepowered.fuseapi.FuseAPI.adToDisplay.waterfall, 0, fuseApiAdBrowser, fuseAdCallback);
    }
    
    private static void displayAdFromWaterfall(final int[] a, final int i, final FuseApiBrowser fuseApiBrowser, final FuseAdCallback fuseAdCallback) {
        FuseLog.d("FuseAPI", "Waterfall: " + Arrays.toString(a) + " index: " + i);
        if (i >= a.length) {
            sendFuseAdSkip(FuseAdSkip.FUSE_AD_SKIP_NO_HTML.getErrorCode());
            fuseAdCallback.adWillClose();
            com.fusepowered.fuseapi.FuseAPI.displayingAd = false;
            return;
        }
        final int n = a[i];
        if (n == 1) {
            FuseLog.d("FUSE_AD", "DIPLAYING A FUSE AD");
            if (!displayFuseAd(fuseApiBrowser, fuseAdCallback)) {
                displayAdFromWaterfall(a, i + 1, fuseApiBrowser, fuseAdCallback);
            }
            return;
        }
        if (n == 2) {
            FuseLog.d("MOPUB_AD", "DIPLAYING A MOPUB AD");
            displayMoPubAd(a, i, fuseApiBrowser, fuseAdCallback);
            return;
        }
        if (n == 4) {
            FuseLog.d("FuseAPI", "Displaying Applifier ad");
            displayApplifierAd(a, i, fuseApiBrowser, fuseAdCallback);
            return;
        }
        if (n == 5) {
            FuseLog.d("FuseAPI", "DIPLAYING A VUNGLE AD");
            displayVungleAd(a, i, fuseApiBrowser, fuseAdCallback);
            return;
        }
        FuseLog.d("FuseAPI", "Unsupported provider, skipping it");
        displayAdFromWaterfall(a, i + 1, fuseApiBrowser, fuseAdCallback);
    }
    
    private static void displayApplifierAd(final int[] array, final int n, final FuseApiBrowser fuseApiBrowser, final FuseAdCallback fuseAdCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.impact == null) {
            configureApplifier(fuseAdCallback);
        }
        if (com.fusepowered.fuseapi.FuseAPI.impact == null || !com.fusepowered.fuseapi.FuseAPI.impact.canShowCampaigns()) {
            displayAdFromWaterfall(array, n + 1, fuseApiBrowser, fuseAdCallback);
            return;
        }
        final HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("noOfferScreen", true);
        hashMap.put("useDeviceOrientationForVideo", true);
        if (com.fusepowered.fuseapi.FuseAPI.impact.showImpact(hashMap)) {
            com.fusepowered.fuseapi.FuseAPI.showingApplifier = true;
            return;
        }
        com.fusepowered.fuseapi.FuseAPI.showingApplifier = false;
        displayAdFromWaterfall(array, n + 1, fuseApiBrowser, fuseAdCallback);
    }
    
    private static boolean displayFuseAd(final FuseApiBrowser fuseApiBrowser, final FuseAdCallback fuseAdCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.adToDisplay != null && com.fusepowered.fuseapi.FuseAPI.adToDisplay.hasHtmlBody()) {
            setFuseChildActivityOnDisplay(true);
            showFuseApiAdBrowser(fuseApiBrowser);
            return true;
        }
        return false;
    }
    
    private static void displayMoPubAd(final int[] array, final int n, final FuseApiBrowser fuseApiBrowser, final FuseAdCallback interstitialAdListener) {
        FuseLog.d("AD", "Showing Mopub ad a1");
        if (com.fusepowered.fuseapi.FuseAPI.adToDisplay == null || com.fusepowered.fuseapi.FuseAPI.adToDisplay.phonePortrait == null) {
            displayAdFromWaterfall(array, n + 1, fuseApiBrowser, interstitialAdListener);
            return;
        }
        FuseLog.d("AD", "Showing Mopub ad");
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        com.fusepowered.fuseapi.FuseAPI.mainActivity.getWindowManager().getDefaultDisplay().getRotation();
        com.fusepowered.fuseapi.FuseAPI.mainActivity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        final double n2 = displayMetrics.heightPixels;
        final double n3 = displayMetrics.widthPixels;
        if (com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial == null) {
            configureMopub();
        }
        if (n2 > n3) {
            com.fusepowered.fuseapi.FuseAPI.mInterstitial = com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial;
            FuseLog.d("AD", "In portrait orientation");
        }
        else {
            com.fusepowered.fuseapi.FuseAPI.mInterstitial = com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial;
            FuseLog.d("AD", "In Landscape orientation");
        }
        if (com.fusepowered.fuseapi.FuseAPI.mInterstitial == null) {
            displayAdFromWaterfall(array, n + 1, fuseApiBrowser, interstitialAdListener);
            return;
        }
        if (!com.fusepowered.fuseapi.FuseAPI.mInterstitial.isReady()) {
            com.fusepowered.fuseapi.FuseAPI.waitForLoad = true;
            final MoPubCallBackInterceptor interstitialAdListener2 = new MoPubCallBackInterceptor(interstitialAdListener) {
                @Override
                public void tryNextAdProvider() {
                    FuseLog.d("MOPUB FAILURE", "Can't Find an ad!  Trying something else in the waterfall");
                    displayAdFromWaterfall(array, 1 + n, fuseApiBrowser, interstitialAdListener);
                }
            };
            FuseLog.d("MOPUB", "WE ARE JUST SETTING THE INTERCEPTOR NOW");
            final MoPubInterstitial.InterstitialAdListener interstitialAdListener3 = com.fusepowered.fuseapi.FuseAPI.mInterstitial.getInterstitialAdListener();
            if (interstitialAdListener3 instanceof MopubCheckAdCallback) {
                final MopubCheckAdCallback mopubCheckAdCallback = (MopubCheckAdCallback)interstitialAdListener3;
                if (!mopubCheckAdCallback.didReturn) {
                    FuseLog.d("ADCHECK", "------------- Major Error, we didn't get a chance to callback -------------");
                    FuseLog.d("ADCHECK", "------------- Returning something just to reset some flags ----------------");
                    mopubCheckAdCallback.checkAdAvailableReturnFailed();
                }
            }
            com.fusepowered.fuseapi.FuseAPI.mInterstitial.setInterstitialAdListener((MoPubInterstitial.InterstitialAdListener)interstitialAdListener2);
            com.fusepowered.fuseapi.FuseAPI.mInterstitial.load();
            new Handler(Looper.getMainLooper()).postDelayed((Runnable)new Runnable() {
                @Override
                public void run() {
                    if (((MoPubCallBackInterceptor)interstitialAdListener2).getIsWaitingForAd()) {
                        FuseLog.d("AD", "Mopub ad did not finish loading before timing out");
                        ((MoPubCallBackInterceptor)interstitialAdListener2).setIsWaitingForAd(false);
                        displayAdFromWaterfall(array, 1 + n, fuseApiBrowser, interstitialAdListener);
                    }
                }
            }, 3000L);
            return;
        }
        FuseLog.d("MOPUB AD", "JUST SHOWING AN AD!!!!");
        com.fusepowered.fuseapi.FuseAPI.mInterstitial.setInterstitialAdListener((MoPubInterstitial.InterstitialAdListener)interstitialAdListener);
        com.fusepowered.fuseapi.FuseAPI.showingMopubAd = true;
        com.fusepowered.fuseapi.FuseAPI.mInterstitial.show();
    }
    
    public static void displayMoreGames(final FuseApiBrowser fuseApiBrowser) {
        if (connected()) {
            com.fusepowered.fuseapi.FuseAPI.showingMoreGames = true;
            moreGamesView();
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("platform", String.valueOf(1));
            hashMap.put("shown_on_play", String.valueOf(gamesPlayed()));
            hashMap.put("country", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getCountryCode());
            hashMap.put("language", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getLanguage());
            final double d = com.fusepowered.fuseapi.FuseAPI.context.getResources().getDisplayMetrics().density;
            final Rect rect = new Rect();
            final Window window = com.fusepowered.fuseapi.FuseAPI.mainActivity.getWindow();
            int i = 0;
            if (window != null) {
                window.getDecorView().getWindowVisibleDisplayFrame(rect);
                i = window.findViewById(16908290).getTop() - rect.top;
            }
            showFuseApiMoreGamesBrowser(MessagingTask.generateURL(FuseServer.getMoreGamesHostUrl() + "?pd=" + Double.toString(d) + "&sbh=" + Integer.toString(i) + "&", com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap), fuseApiBrowser);
        }
    }
    
    public static void displayNotifications(final AlertDialog$Builder builder) {
        // monitorenter(FuseAPI.class)
        Label_0011: {
            if (builder == null) {
                break Label_0011;
            }
            try {
                com.fusepowered.fuseapi.FuseAPI.builder = builder;
                final ArrayList<Message> messages = com.fusepowered.fuseapi.FuseAPI.responseValues.getMessages();
                if (messages != null && messages.size() > 0) {
                    showNextMessage(0);
                }
            }
            finally {
            }
            // monitorexit(FuseAPI.class)
        }
    }
    
    private static void displayVungleAd(final int[] array, final int n, final FuseApiBrowser fuseApiBrowser, final FuseAdCallback fuseAdCallback) {
        if (!com.fusepowered.fuseapi.FuseAPI.vungleInitialized) {
            FuseLog.e("FuseAPI", "Vungle not initialized, doing that now");
            configureVungle(fuseAdCallback);
        }
        if (!VunglePub.isVideoAvailable()) {
            FuseLog.i("FuseAPI", "Vungle does not have a video available");
            displayAdFromWaterfall(array, n + 1, fuseApiBrowser, fuseAdCallback);
            return;
        }
        if (VunglePub.displayAdvert()) {
            FuseLog.i("FuseAPI", "Vungle ad was played");
            return;
        }
        FuseLog.i("FuseAPI", "Vungle ad was not played, moving on");
        displayAdFromWaterfall(array, n + 1, fuseApiBrowser, fuseAdCallback);
    }
    
    public static void emailLogin(final String s, final String s2, final FuseCallback fuseCallback) {
        getRegisterId(s, s2, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), null, AccountType.FUSE_EMAIL, fuseCallback);
    }
    
    public static void enableCrashDetection() {
        if (com.fusepowered.fuseapi.FuseAPI.sDetector == null) {
            com.fusepowered.fuseapi.FuseAPI.sDetector = new CrashDetector(com.fusepowered.fuseapi.FuseAPI.context);
        }
        com.fusepowered.fuseapi.FuseAPI.sDetector.start();
    }
    
    public static void endSession() {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_SESSION_END.getMessageCode()));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        clearAll();
        if (com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial != null) {
            com.fusepowered.fuseapi.FuseAPI.mPortraitInterstitial.destroy();
        }
        if (com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial != null) {
            com.fusepowered.fuseapi.FuseAPI.mLandscapeInterstitial.destroy();
        }
    }
    
    public static void facebookLogin(final String s, final String s2, final FuseCallback fuseCallback) {
        getRegisterId(s, s2, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), null, AccountType.FUSE_FACEBOOK, fuseCallback);
    }
    
    public static void facebookLogin(final String s, final String s2, final String s3, final FuseCallback fuseCallback) {
        getRegisterId(s, s2, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), s3, AccountType.FUSE_FACEBOOK, fuseCallback);
    }
    
    public static void friendsPushNotification(final String value) {
        final Account account = com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount();
        if (account == null) {
            return;
        }
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_SEND_PUSH_LIST.getMessageCode()));
        hashMap.put("type", String.valueOf(account.getAccountType().getAccountNumber()));
        hashMap.put("account_id", String.valueOf(account.getAccountId()));
        hashMap.put("message", value);
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
    }
    
    public static void fuseLogin(final String s, final String s2, final FuseCallback fuseCallback) {
        getRegisterId(s, s2, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), null, AccountType.FUSE_USER, fuseCallback);
    }
    
    public static void gamecenterLogin(final String s, final String s2, final FuseCallback fuseCallback) {
        getRegisterId(s, s2, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), "", AccountType.FUSE_GAMECENTER, fuseCallback);
    }
    
    public static int gamesPlayed() {
        return com.fusepowered.fuseapi.FuseAPI.numPlays;
    }
    
    @Deprecated
    public static void getAd(final FuseApiBrowser fuseApiBrowser, final FuseAdCallback fuseAdCallback) {
        displayAd(fuseApiBrowser, fuseAdCallback);
    }
    
    public static void getAttackRobberyLog(final FuseGameDataCallback fuseGameDataCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            getUserTransactionLog(fuseGameDataCallback);
        }
    }
    
    public static Context getContext() {
        return com.fusepowered.fuseapi.FuseAPI.context;
    }
    
    private static String getDisplayedAdAction() {
        return SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "displayed_ad_action", "");
    }
    
    private static int getDisplayedAdId() {
        return SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "displayed_ad_id", -1);
    }
    
    public static void getEnemiesList(final int i, final int j, FuseGameDataCallback fuseGameDataCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("user_level", String.valueOf(i));
        hashMap.put("range", String.valueOf(j));
        hashMap.put("action", String.valueOf(ActionType.ACTION_GET_ENEMIES_LIST.getMessageCode()));
        if (fuseGameDataCallback == null) {
            fuseGameDataCallback = new FuseGameDataCallbackImpl();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseGameDataCallback);
    }
    
    public static int getFriendGameData(final String s, final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback, final String s2) {
        return getMyGameData(s, list, fuseGameDataCallback, true, s2);
    }
    
    public static int getFriendGameData(final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback, final String s) {
        return getMyGameData(null, list, fuseGameDataCallback, true, s);
    }
    
    public static HashMap<String, String> getFriendGameDataCollection(final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback, final String s) {
        return getMyGameDataCollection(null, list, fuseGameDataCallback, true, s);
    }
    
    public static List<Player> getFriendsList() {
        return com.fusepowered.fuseapi.FuseAPI.responseValues.getFriendsList();
    }
    
    public static String getFuseID() {
        final Account account = com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount();
        if (account != null) {
            return account.getFuseId();
        }
        return "";
    }
    
    public static HashMap<String, String> getGameConfiguration() {
        final Set<String> keySet = com.fusepowered.fuseapi.FuseAPI.appdata.getAll().keySet();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        for (final String key : keySet) {
            hashMap.put(key, com.fusepowered.fuseapi.FuseAPI.appdata.getString(key, (String)null));
        }
        return hashMap;
    }
    
    public static String getGameConfigurationValue(final String str) {
        Log.d("GAME CONFIG", "This is the game config k " + str + " value " + com.fusepowered.fuseapi.FuseAPI.appdata.getString(str, (String)null));
        return com.fusepowered.fuseapi.FuseAPI.appdata.getString(str, (String)null);
    }
    
    public static int getGameData(final String s, final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback) {
        return getMyGameData(s, list, fuseGameDataCallback, false, null);
    }
    
    public static int getGameData(final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback) {
        return getMyGameData(null, list, fuseGameDataCallback, false, null);
    }
    
    @Deprecated
    public static int getGameData(final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback, final boolean b) {
        return getGameData(list, fuseGameDataCallback, false);
    }
    
    public static HashMap<String, String> getGameDataCollection(final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback) {
        return getMyGameDataCollection(null, list, fuseGameDataCallback, false, null);
    }
    
    @Deprecated
    public static String getGameValue(final String s) {
        return getGameConfigurationValue(s);
    }
    
    public static List<UserTransactionLog> getLocalAttackRobberyLog() {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            return com.fusepowered.fuseapi.FuseAPI.responseValues.getUserTransactionLogs();
        }
        return new ArrayList<UserTransactionLog>();
    }
    
    public static List<Player> getLocalEnemiesList() {
        return com.fusepowered.fuseapi.FuseAPI.responseValues.getEnemiesList();
    }
    
    private static void getMailFromServer(final String value, FuseCallback fuseCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_GET_MAIL.getMessageCode()));
            hashMap.put("fuse_id", value);
            if (fuseCallback == null) {
                fuseCallback = new FuseMessageCallback();
            }
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
        }
    }
    
    public static List<Mail> getMailList(final String s) {
        return com.fusepowered.fuseapi.FuseAPI.responseValues.getMailList(s);
    }
    
    public static void getMailListFriendFromServer(final String s, final FuseCallback fuseCallback) {
        getMailFromServer(s, fuseCallback);
    }
    
    public static void getMailListFromServer(final FuseCallback fuseCallback) {
        getMailFromServer(getFuseID(), fuseCallback);
    }
    
    private static int getMyGameData(final String s, final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback, final boolean b, final String s2) {
        final Account account = com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount();
        if (account != null) {
            final String accountId = account.getAccountId();
            if (!StringUtil.isEmpty(accountId) && accountId != "0") {
                int n;
                String s3;
                if (b) {
                    n = AccountType.FUSE_USER.getAccountNumber();
                    s3 = s2;
                }
                else {
                    n = account.getAccountType().getAccountNumber();
                    s3 = accountId;
                }
                return sendGetGameDataRequest(s, list, s3, n, b, fuseGameDataCallback, true);
            }
            fuseGameDataCallback.setFuseGameDataError(FuseGameDataError.FUSE_GD_ERROR_NO_ACCOUNT, com.fusepowered.fuseapi.FuseAPI.id);
        }
        else {
            fuseGameDataCallback.setFuseGameDataError(FuseGameDataError.FUSE_GD_ERROR_NO_ACCOUNT, com.fusepowered.fuseapi.FuseAPI.id);
        }
        return 0;
    }
    
    private static HashMap<String, String> getMyGameDataCollection(final String s, final ArrayList<String> list, final FuseGameDataCallback fuseGameDataCallback, final boolean b, final String s2) {
        final Account account = com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (account != null) {
            final String accountId = account.getAccountId();
            if (StringUtil.isEmpty(accountId) || accountId == "0") {
                fuseGameDataCallback.setFuseGameDataError(FuseGameDataError.FUSE_GD_ERROR_NO_ACCOUNT, com.fusepowered.fuseapi.FuseAPI.id);
            }
            else {
                int n;
                String s3;
                if (b) {
                    n = AccountType.FUSE_USER.getAccountNumber();
                    s3 = s2;
                }
                else {
                    n = account.getAccountType().getAccountNumber();
                    s3 = accountId;
                }
                final ArrayList<String> list2 = new ArrayList<String>();
                final Iterator<String> iterator = list.iterator();
                while (iterator.hasNext()) {
                    final String key = iterator.next();
                    hashMap.put(key, Integer.toString(sendGetGameDataRequest(key, list2, s3, n, b, fuseGameDataCallback, !iterator.hasNext())));
                }
            }
            return hashMap;
        }
        fuseGameDataCallback.setFuseGameDataError(FuseGameDataError.FUSE_GD_ERROR_NO_ACCOUNT, com.fusepowered.fuseapi.FuseAPI.id);
        return hashMap;
    }
    
    private static int getNotificationSkipCount(final int i) {
        return SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "notification_skip_count_" + i, 1);
    }
    
    private static int getNotificationViewCount(final int i) {
        return SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "notification_view_count_" + i, 0);
    }
    
    public static String getOriginalAccountAlias() {
        return com.fusepowered.fuseapi.FuseAPI.accountAlias;
    }
    
    public static String getOriginalAccountId() {
        final Account account = com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount();
        if (account != null) {
            return account.getAccountId();
        }
        return "";
    }
    
    public static int getOriginalAccountType() {
        return com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber();
    }
    
    private static void getRegisterId(final String value, final String s, final int i, final String value2, final AccountType accountType, FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        if (value != null) {
            hashMap.put("account_id", value);
        }
        else {
            hashMap.put("account_id", "");
        }
        hashMap.put("account_alias", s);
        hashMap.put("type", String.valueOf(accountType.getAccountNumber()));
        hashMap.put("gender", String.valueOf(i));
        hashMap.put("access_token", value2);
        hashMap.put("action", String.valueOf(ActionType.ACTION_REGISTER_ID.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseRegisterAccountCallback(s);
        }
        com.fusepowered.fuseapi.FuseAPI.accountAlias = s;
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    public static void getSignPost(final String value) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("language_index", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getLanguage());
            hashMap.put("action", String.valueOf(ActionType.ACTION_GET_SIGN_POSTS.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static List<ChatMessage> getUserChatList(final String s) {
        return com.fusepowered.fuseapi.FuseAPI.responseValues.getChatMessages(s);
    }
    
    public static void getUserChatListFromServer(final String value, FuseCallback fuseCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("action", String.valueOf(ActionType.ACTION_GET_MESSAGE_LIST.getMessageCode()));
            if (fuseCallback == null) {
                fuseCallback = new FuseMessageCallback();
            }
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
        }
    }
    
    private static void getUserTransactionLog(FuseGameDataCallback fuseGameDataCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_GET_USER_TRANSACTION_LOG.getMessageCode()));
            if (fuseGameDataCallback == null) {
                fuseGameDataCallback = new FuseGameDataCallbackImpl();
            }
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseGameDataCallback);
        }
    }
    
    public static void googlePlayLogin(final String s, final String s2, final FuseCallback fuseCallback) {
        getRegisterId(null, s, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), s2, AccountType.FUSE_GOOGLE_PLAY, fuseCallback);
    }
    
    private static int incrementGameDataRequestId(final String str) {
        final String string = "game_data_request_id_" + str;
        com.fusepowered.fuseapi.FuseAPI.gameDataReqId = 1 + SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, string, 0);
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, string, com.fusepowered.fuseapi.FuseAPI.gameDataReqId);
        return com.fusepowered.fuseapi.FuseAPI.gameDataReqId;
    }
    
    private static void incrementRequestId(final String str) {
        final String string = "request_id_" + str;
        com.fusepowered.fuseapi.FuseAPI.id = 1 + SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, string, 0);
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, string, com.fusepowered.fuseapi.FuseAPI.id);
    }
    
    public static void initializeFuseAPI(final Activity activity, final Context context) {
        if (activity == null) {
            com.fusepowered.fuseapi.FuseAPI.FuseAPI = new FuseAPI(context);
        }
        else {
            if (com.fusepowered.fuseapi.FuseAPI.responseValues != null && com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId() != null) {
                updateFuseAPI(activity);
                return;
            }
            if (activity != null) {
                com.fusepowered.fuseapi.FuseAPI.FuseAPI = new FuseAPI(activity);
            }
        }
    }
    
    private static boolean isFuseChildActivityOnDisplay() {
        return SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "child_activity_displayed_" + com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId(), false);
    }
    
    private static boolean isPreviousNotificationDisplayed(final int n) {
        // monitorenter(FuseAPI.class)
        boolean displayed = false;
        if (n <= 0) {
            return displayed;
        }
        try {
            displayed = com.fusepowered.fuseapi.FuseAPI.responseValues.getMessages().get(n - 1).isDisplayed();
            return displayed;
        }
        finally {
        }
        // monitorexit(FuseAPI.class)
    }
    
    public static String libraryVersion() {
        return "1.34.3";
    }
    
    public static void log(final String s) {
        Log.d("FUSE AIR", s);
    }
    
    private static void logUserTransactions(final String value, final FuseAttackRobberyEventType fuseAttackRobberyEventType, final boolean b, final int i, final int j) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("user_event_type", String.valueOf(fuseAttackRobberyEventType.getEventCode()));
            String value2;
            if (b) {
                value2 = "1";
            }
            else {
                value2 = "0";
            }
            hashMap.put("outcome", value2);
            hashMap.put("outcome_amount_won", String.valueOf(i));
            hashMap.put("outcome_amount_lost", String.valueOf(j));
            hashMap.put("action", String.valueOf(ActionType.ACTION_LOG_USER_TRANSACTION.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void migrateFriends(final String value, FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("fuse_id", value);
        hashMap.put("action", String.valueOf(ActionType.ACTION_MIGRATE_FRIENDS.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseMessageCallback();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    private static void moreGamesView() {
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_MORE_GAMES_VIEW.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    private static void notificationClick(final int i) {
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("message_id", String.valueOf(i));
            hashMap.put("action", String.valueOf(ActionType.ACTION_NOTIFICATION_CLICK.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    private static void notificationView(final int n) {
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            setNotificationViewed(n);
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("message_id", String.valueOf(n));
            hashMap.put("shown_on_play", String.valueOf(gamesPlayed()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_NOTIFICATION_VIEW.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    private static void openWebPage(final String s) {
        try {
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(Uri.parse(s));
            com.fusepowered.fuseapi.FuseAPI.context.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            displayNotifications(null);
        }
    }
    
    public static void postSignPost(final String value, final int i, final int j) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("message_id", String.valueOf(i));
            hashMap.put("sticker_id", String.valueOf(j));
            hashMap.put("action", String.valueOf(ActionType.ACTION_SET_SIGN_POST.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void postUserChatMessage(final String value, final String value2) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("message", value2);
            hashMap.put("action", String.valueOf(ActionType.ACTION_POST_MESSAGE.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void recordGCM() {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", com.fusepowered.fuseapi.FuseAPI.registrationID);
        hashMap.put("notification_id", com.fusepowered.fuseapi.FuseAPI.notificationID);
        hashMap.put("action", String.valueOf(ActionType.ACTION_PUSH_NOTIFICATION_VIEW.getMessageCode()));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        Log.d("GCM", "Recording a user action after receiveing a GCM Message!");
    }
    
    public static void registerCrash(final String value, final String value2, final String value3) {
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("crash_info", value);
            hashMap.put("crash_name", value2);
            hashMap.put("stack", value3);
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_GAME_CRASH.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void registerCurrency(final int n, final int n2) {
        sendRegisterResource(n, n2);
    }
    
    public static FuseEvent registerEvent(final String s, final String s2, final String s3, final String s4, final Number n) {
        if (s == null || s.compareTo("") == 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        int n2 = 0;
        Label_0042: {
            if (s2 != null) {
                final int compareTo = s2.compareTo("");
                n2 = 0;
                if (compareTo != 0) {
                    break Label_0042;
                }
            }
            n2 = 1;
        }
        if (s3 == null) {
            if (n2 == 0) {
                return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
            }
        }
        else if (n2 != 0 && s3.compareTo("") != 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        if (s4 == null) {
            n2 = 1;
        }
        else if (s4.compareTo("") == 0) {
            n2 = 1;
        }
        else if (n2 != 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        if (n == null) {
            if (n2 == 0) {
                return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
            }
        }
        else if (n2 != 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        Label_0266: {
            if (com.fusepowered.fuseapi.FuseAPI.optOut) {
                break Label_0266;
            }
            updateCommonParams();
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("id", (Object)String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
                jsonObject.put("timestamp", (Object)String.valueOf(new Date().getTime()));
                jsonObject.put("e1", (Object)s);
                jsonObject.put("e2", (Object)s2);
                jsonObject.put("e3", (Object)s3);
                jsonObject.put("e4", (Object)s4);
                jsonObject.put("v", (Object)n);
                jsonObject.put("action", (Object)String.valueOf(ActionType.ACTION_ANALYTICS.getMessageCode()));
                MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, jsonObject, new FuseMessageCallback(), true);
                return FuseEvent.FUSE_EVENT_OK;
            }
            catch (JSONException ex) {
                Log.e("FuseAPI", "sendEvent JSONException", (Throwable)ex);
                return FuseEvent.FUSE_EVENT_BAD_VAL;
            }
        }
    }
    
    public static FuseEvent registerEvent(final String s, final String s2, final String s3, final HashMap<String, Number> hashMap) {
        if (s == null || s.compareTo("") == 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        boolean b = false;
        Label_0042: {
            if (s2 != null) {
                final int compareTo = s2.compareTo("");
                b = false;
                if (compareTo != 0) {
                    break Label_0042;
                }
            }
            b = true;
        }
        if (s3 == null) {
            if (!b) {
                return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
            }
        }
        else if (b && s3.compareTo("") != 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        if (hashMap != null && b && hashMap.size() != 0) {
            return FuseEvent.FUSE_EVENT_NULL_PARAMETER;
        }
        Label_0234: {
            if (com.fusepowered.fuseapi.FuseAPI.optOut) {
                break Label_0234;
            }
            updateCommonParams();
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("id", (Object)String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
                jsonObject.put("timestamp", (Object)String.valueOf(new Date().getTime()));
                jsonObject.put("e1", (Object)s);
                jsonObject.put("e2", (Object)s2);
                jsonObject.put("e3", (Object)s3);
                if (hashMap != null && hashMap.size() != 0) {
                    jsonObject.put("dictionary", (Object)MessagingService.mapToJson(hashMap));
                }
                jsonObject.put("action", (Object)String.valueOf(ActionType.ACTION_ANALYTICS.getMessageCode()));
                MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, jsonObject, new FuseMessageCallback(), true);
                return FuseEvent.FUSE_EVENT_OK;
            }
            catch (JSONException ex) {
                Log.e("FuseAPI", "sendEvent JSONException", (Throwable)ex);
                return FuseEvent.FUSE_EVENT_BAD_VAL;
            }
        }
    }
    
    public static void registerEvent(final String s) {
        sendEvent(s, null);
    }
    
    public static void registerEvent(final String s, final HashMap<String, String> hashMap) {
        for (final String key : hashMap.keySet()) {
            registerEvent(s, key, hashMap.get(key), null, null);
        }
    }
    
    public static void registerFlurryClick() {
        sendRegisterResource(6, 1);
    }
    
    public static void registerFlurryView() {
        sendRegisterResource(5, 1);
    }
    
    public static void registerFuseAdSkip(final int i) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_FUSE_AD_SKIP.getMessageCode()));
        hashMap.put("state", String.valueOf(i));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, com.fusepowered.fuseapi.FuseAPI.fuseAdCallback);
    }
    
    public static void registerGCM(final String registrationID) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("token", com.fusepowered.fuseapi.FuseAPI.registrationID = registrationID);
        hashMap.put("action", String.valueOf(ActionType.ACTION_TOKEN_RECEIVED.getMessageCode()));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        if (com.fusepowered.fuseapi.FuseAPI.responseValues != null && com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId() != null && com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId().length() > 0) {
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
            return;
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback(), false);
    }
    
    public static void registerGender(final int n) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("gender", String.valueOf(n));
        hashMap.put("action", String.valueOf(ActionType.ACTION_GENDER_UPDATE.getMessageCode()));
        setGender(n);
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
    }
    
    public static void registerInAppPurchase(final VerifiedPurchase verifiedPurchase) {
        registerInAppPurchase(verifiedPurchase, 0.0, null);
    }
    
    public static void registerInAppPurchase(final VerifiedPurchase verifiedPurchase, final double d, final String value) {
        if (!com.fusepowered.fuseapi.FuseAPI.optOut) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("content_id", verifiedPurchase.getProductId());
            hashMap.put("order_id", verifiedPurchase.getOrderId());
            hashMap.put("developer_payload", verifiedPurchase.getDeveloperPayload());
            hashMap.put("purchase_state", verifiedPurchase.getPurchaseState());
            hashMap.put("purchase_time", String.valueOf(verifiedPurchase.getPurchaseTime()));
            hashMap.put("purchase_token", String.valueOf(verifiedPurchase.getPurchaseToken()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_INAPP_PURCHASE.getMessageCode()));
            hashMap.put("price", String.valueOf(d));
            hashMap.put("currency", value);
            hashMap.put("purchased_on_play", String.valueOf(gamesPlayed()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    public static void registerLevel(final int n) {
        sendRegisterResource(0, n);
    }
    
    public static void registerTapjoyReward(final int n) {
        sendRegisterResource(7, n);
    }
    
    public static void rejectFriend(final String value, FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("fuse_id", value);
        hashMap.put("action", String.valueOf(ActionType.ACTION_REJECT_FRIEND.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseMessageCallback();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    public static void removeFriend(final String value, FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("fuse_id", value);
        hashMap.put("action", String.valueOf(ActionType.ACTION_REMOVE_FRIEND.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseMessageCallback();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    private static void resetDisplayedAdDetails() {
        setDisplayedAdDetails(0, "");
    }
    
    private static void resetFuseChildActivityOnDisplay() {
        setFuseChildActivityOnDisplay(false);
    }
    
    private static void resetGameDataRequestId() {
        com.fusepowered.fuseapi.FuseAPI.gameDataReqId = 0;
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "game_data_request_id_" + com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId(), com.fusepowered.fuseapi.FuseAPI.gameDataReqId);
    }
    
    private static void resetRequestId() {
        com.fusepowered.fuseapi.FuseAPI.id = 0;
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "request_id_" + com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId(), com.fusepowered.fuseapi.FuseAPI.id);
    }
    
    public static void resumeSession(final FuseCallback fuseCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.showingMopubAd) {
            com.fusepowered.fuseapi.FuseAPI.showingMopubAd = false;
            com.fusepowered.fuseapi.FuseAPI.fuseAdCallback.onInterstitialDismissed(com.fusepowered.fuseapi.FuseAPI.mInterstitial);
        }
        if (com.fusepowered.fuseapi.FuseAPI.showingApplifier) {
            com.fusepowered.fuseapi.FuseAPI.fuseAdCallback.onImpactClose();
        }
        VunglePub.onResume();
        Label_0169: {
            if (isFuseChildActivityOnDisplay() || !com.fusepowered.fuseapi.FuseAPI.suspended) {
                break Label_0169;
            }
            if (!com.fusepowered.fuseapi.FuseAPI.showingMoreGames) {
                Log.d("RESUME SESSION", "Sending a resume....");
                updateCommonParams();
                final HashMap<String, String> hashMap = new HashMap<String, String>();
                hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
                hashMap.put("timestamp", String.valueOf(new Date().getTime()));
                hashMap.put("action", String.valueOf(ActionType.ACTION_RESUME_SESSION.getMessageCode()));
                hashMap.put("wifi", NetworkService.isWifiConnection(getContext()));
                if (fuseCallback != null) {
                    com.fusepowered.fuseapi.FuseAPI.fuseCallback = fuseCallback;
                }
                else {
                    com.fusepowered.fuseapi.FuseAPI.fuseCallback = new FuseMessageCallback();
                }
                MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, com.fusepowered.fuseapi.FuseAPI.fuseCallback);
                com.fusepowered.fuseapi.FuseAPI.suspended = false;
                break Label_0169;
            }
            com.fusepowered.fuseapi.FuseAPI.showingMoreGames = false;
            return;
        }
        if (com.fusepowered.fuseapi.FuseAPI.showingManditoryMessage) {
            Log.d("MANDITORY MESSAGE", "REDISPLAY THE UPDATE MESSAGE");
            final AlertDialog create = com.fusepowered.fuseapi.FuseAPI.builder.create();
            create.setCancelable(false);
            create.show();
        }
        if (com.fusepowered.fuseapi.FuseAPI.displayNotifications) {
            showNextMessage(0);
        }
    }
    
    public static void sendAttack(final String s, final boolean b, final int n, final int n2) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            logUserTransactions(s, FuseAttackRobberyEventType.FUSE_ATTACK, b, n, n2);
        }
    }
    
    private static void sendEvent(final String s, final HashMap<String, String> hashMap) {
        if (com.fusepowered.fuseapi.FuseAPI.optOut) {
            return;
        }
        updateCommonParams();
        final JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("id", (Object)String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            jsonObject.put("timestamp", (Object)String.valueOf(new Date().getTime()));
            jsonObject.put("event", (Object)s);
            jsonObject.put("action", (Object)String.valueOf(ActionType.ACTION_ANALYTICS.getMessageCode()));
            if (hashMap != null) {
                jsonObject.put("dictionary", (Object)MessagingService.mapToJson(hashMap));
            }
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, jsonObject, new FuseMessageCallback(), true);
        }
        catch (JSONException ex) {
            Log.e("FuseAPI", "sendEvent JSONException", (Throwable)ex);
        }
    }
    
    public static void sendFuseAdSkip(final int i) {
        Log.d("FuseAPI", "send Fuse Ad Skip");
        Log.d("FuseAPI", "Skipping ad display, resetting displayingAd flag");
        com.fusepowered.fuseapi.FuseAPI.displayingAd = false;
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_FUSE_AD_SKIP.getMessageCode()));
        hashMap.put("state", String.valueOf(i));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
    }
    
    private static int sendGameDataMap(final String s, final String s2, final JSONObject jsonObject, final FuseGameDataCallback fuseGameDataCallback, final boolean b) {
        while (true) {
            updateCommonParams();
            final int incrementGameDataRequestId = incrementGameDataRequestId(com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId());
            while (true) {
                try {
                    jsonObject.put("id", (Object)String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
                    jsonObject.put("timestamp", (Object)String.valueOf(new Date().getTime()));
                    jsonObject.put("action", (Object)String.valueOf(ActionType.ACTION_SET_GAME_DATA.getMessageCode()));
                    jsonObject.put("reqID", (Object)String.valueOf(com.fusepowered.fuseapi.FuseAPI.gameDataReqId));
                    if (s != null) {
                        jsonObject.put("friend", (Object)"1");
                        jsonObject.put("account_id", (Object)s);
                        jsonObject.put("type", (Object)String.valueOf(AccountType.FUSE_USER.getAccountNumber()));
                    }
                    else {
                        jsonObject.put("account_id", (Object)com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
                        jsonObject.put("type", (Object)String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
                    }
                    if (!StringUtil.isEmpty(s2)) {
                        jsonObject.put("fuse_object_key", (Object)s2);
                        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, jsonObject, fuseGameDataCallback, b);
                        return incrementGameDataRequestId;
                    }
                }
                catch (JSONException ex) {
                    Log.e("FuseAPI", "sendGameDataMap JSONException", (Throwable)ex);
                    return 0;
                }
                jsonObject.put("fuse_object_key", (Object)"");
                continue;
            }
        }
    }
    
    private static int sendGameDataRequest(final String s, final GameKeyValuePairs gameKeyValuePairs, final FuseGameDataCallback fuseGameDataCallback, final String s2) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null && !gameKeyValuePairs.getMap().isEmpty()) {
            final JSONObject buildDataPayloadJSON = buildDataPayloadJSON(gameKeyValuePairs.getMap().entrySet());
            if (buildDataPayloadJSON != null) {
                return sendGameDataMap(s2, s, buildDataPayloadJSON, fuseGameDataCallback, true);
            }
        }
        return 0;
    }
    
    private static HashMap<String, String> sendGameDataRequestCollection(final GameKeyValuePairs gameKeyValuePairs, final FuseGameDataCallback fuseGameDataCallback, final String s) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            final Set<String> objectMapKeys = gameKeyValuePairs.getObjectMapKeys();
            if (!objectMapKeys.isEmpty()) {
                final Iterator<String> iterator = objectMapKeys.iterator();
                while (iterator.hasNext()) {
                    final String key = iterator.next();
                    final JSONObject buildDataPayloadJSON = buildDataPayloadJSON(key, gameKeyValuePairs);
                    if (buildDataPayloadJSON != null) {
                        hashMap.put(key, Integer.toString(sendGameDataMap(s, key, buildDataPayloadJSON, fuseGameDataCallback, !iterator.hasNext())));
                    }
                }
            }
        }
        return hashMap;
    }
    
    private static void sendGetAd() {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("wifi", NetworkService.isWifiConnection(getContext()));
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_GET_AD.getMessageCode()));
        final Rect rect = new Rect();
        com.fusepowered.fuseapi.FuseAPI.mainActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        final int i = rect.bottom - rect.top;
        hashMap.put("w", String.valueOf(rect.right - rect.left));
        hashMap.put("h", String.valueOf(i));
        hashMap.put("t", String.valueOf(rect.top));
        hashMap.put("b", String.valueOf(rect.bottom));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, com.fusepowered.fuseapi.FuseAPI.fuseAdCallback);
    }
    
    private static int sendGetGameDataRequest(final String value, final ArrayList<String> list, final String value2, final int i, final boolean b, final FuseGameDataCallback fuseGameDataCallback, final boolean b2) {
        updateCommonParams();
        final int incrementGameDataRequestId = incrementGameDataRequestId(com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId());
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", value2);
        hashMap.put("type", String.valueOf(i));
        String value3;
        if (b) {
            value3 = "1";
        }
        else {
            value3 = "0";
        }
        hashMap.put("friend", value3);
        hashMap.put("action", String.valueOf(ActionType.ACTION_GET_GAME_DATA.getMessageCode()));
        hashMap.put("reqID", String.valueOf(com.fusepowered.fuseapi.FuseAPI.gameDataReqId));
        if (!StringUtil.isEmpty(value)) {
            hashMap.put("fuse_object_key", value);
        }
        else {
            hashMap.put("fuse_object_key", "");
        }
        hashMap.put("fuse_object_keys", StringUtil.commaSeparatedArray(list));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseGameDataCallback, b2);
        return incrementGameDataRequestId;
    }
    
    public static int sendMail(final String s, final String s2, final FuseCallback fuseCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            return sendMailWithGift(s, s2, 0, 1, fuseCallback);
        }
        return 0;
    }
    
    public static int sendMailWithGift(final String value, final String value2, final int i, final int j, FuseCallback fuseCallback) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final int incrementGameDataRequestId = incrementGameDataRequestId(com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId());
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("fuse_id", value);
            hashMap.put("message", value2);
            hashMap.put("gift_id", String.valueOf(i));
            hashMap.put("gift_amount", String.valueOf(j));
            hashMap.put("action", String.valueOf(ActionType.ACTION_SEND_MAIL.getMessageCode()));
            hashMap.put("reqID", String.valueOf(incrementGameDataRequestId));
            if (fuseCallback == null) {
                fuseCallback = new FuseMessageCallback();
            }
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
            return incrementGameDataRequestId;
        }
        return 0;
    }
    
    private static void sendRegisterResource(final int i, final int j) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_REGISTER_RESOURCE.getMessageCode()));
        hashMap.put("type", String.valueOf(i));
        hashMap.put("value", String.valueOf(j));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
    }
    
    public static void sendRobbery(final String s, final boolean b, final int n, final int n2) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            logUserTransactions(s, FuseAttackRobberyEventType.FUSE_ROBBERY, b, n, n2);
        }
    }
    
    private static void setDisplayedAdDetails(final int n, final String s) {
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "displayed_ad_id", n);
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "displayed_ad_action", s);
    }
    
    public static void setFuseChildActivityOnDisplay(final boolean displayingAd) {
        final StringBuilder append = new StringBuilder().append("Child activity display changed, setting displayingAd to ");
        String str;
        if (displayingAd) {
            str = "true";
        }
        else {
            str = "false";
        }
        Log.d("FuseAPI", append.append(str).toString());
        com.fusepowered.fuseapi.FuseAPI.displayingAd = displayingAd;
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "child_activity_displayed_" + com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId(), displayingAd);
    }
    
    public static int setGameData(final GameKeyValuePairs gameKeyValuePairs, final FuseGameDataCallback fuseGameDataCallback) {
        return setGameData("", gameKeyValuePairs, fuseGameDataCallback);
    }
    
    public static int setGameData(final String s, final GameKeyValuePairs gameKeyValuePairs, final FuseGameDataCallback fuseGameDataCallback) {
        return sendGameDataRequest(s, gameKeyValuePairs, fuseGameDataCallback, null);
    }
    
    public static int setGameData(final String s, final String s2, final GameKeyValuePairs gameKeyValuePairs, final FuseGameDataCallback fuseGameDataCallback) {
        return sendGameDataRequest(s2, gameKeyValuePairs, fuseGameDataCallback, s);
    }
    
    public static HashMap<String, String> setGameDataCollection(final String s, final GameKeyValuePairs gameKeyValuePairs, final FuseGameDataCallback fuseGameDataCallback) {
        return sendGameDataRequestCollection(gameKeyValuePairs, fuseGameDataCallback, s);
    }
    
    private static void setGender(final int n) {
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "gender", n);
    }
    
    public static void setMailAsReceived(final int i) {
        if (com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount() != null) {
            updateCommonParams();
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
            hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
            hashMap.put("mail_id", String.valueOf(i));
            hashMap.put("action", String.valueOf(ActionType.ACTION_MARK_MAIL_AS_READ.getMessageCode()));
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        }
    }
    
    private static void setNotificationSkipped(final int i) {
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "notification_skip_count_" + i, getNotificationSkipCount(i) + 1);
    }
    
    private static void setNotificationViewed(final int i) {
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "notification_view_count_" + i, getNotificationViewCount(i) + 1);
    }
    
    private static void setNumPlays(final String s) {
        com.fusepowered.fuseapi.FuseAPI.numPlays = 1 + SharedPrefsUtil.readSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "num_plays_" + s, 0);
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "num_plays_" + s, com.fusepowered.fuseapi.FuseAPI.numPlays);
    }
    
    private static void setOptOut(final int n) {
        SharedPrefsUtil.writeSharedProperty(com.fusepowered.fuseapi.FuseAPI.context, "opt_out_" + com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId(), n);
        com.fusepowered.fuseapi.FuseAPI.optOut = (n != 0);
    }
    
    public static void setupGCM(final String s, final Intent forGCMEvents, final Activity activity, final int n, final int drawerIconID) {
        if (activity == null) {
            Log.e("FUSE_GCM", "Activity should not be null");
            return;
        }
        if (forGCMEvents == null) {
            Log.e("FUSE_GCM", "Intent should not be null");
            return;
        }
        if (s == null || s.equals("")) {
            Log.e("FUSE_GCM", "Project number can NOT be null");
            return;
        }
        com.fusepowered.fuseapi.FuseAPI.appName = activity.getPackageManager().getApplicationLabel(activity.getApplicationInfo()).toString();
        if (com.fusepowered.fuseapi.FuseAPI.appName == null || com.fusepowered.fuseapi.FuseAPI.appName.length() == 0) {
            com.fusepowered.fuseapi.FuseAPI.appName = activity.getApplication().getString(activity.getApplication().getApplicationInfo().labelRes);
        }
        if (com.fusepowered.fuseapi.FuseAPI.appName == null || com.fusepowered.fuseapi.FuseAPI.appName.length() == 0) {
            Log.e("PUSH NOTIFICATION", "Error: The app name is null.  Stopping the registration. Push Notifications will be disabled");
            return;
        }
        com.fusepowered.fuseapi.FuseAPI.appName = com.fusepowered.fuseapi.FuseAPI.appName.replaceAll("[^A-Za-z0-9]", "");
        com.fusepowered.fuseapi.FuseAPI.packageName = activity.getApplication().getPackageName();
        if (com.fusepowered.fuseapi.FuseAPI.packageName == null || com.fusepowered.fuseapi.FuseAPI.packageName.length() == 0) {
            com.fusepowered.fuseapi.FuseAPI.packageName = activity.getApplicationContext().getPackageName();
        }
        if (com.fusepowered.fuseapi.FuseAPI.packageName == null || com.fusepowered.fuseapi.FuseAPI.packageName.length() == 0) {
            Log.e("PUSH NOTIFICATION", "Error: The package name is null.  Stopping the registration. Push Notifications will be disabled");
            return;
        }
        if (com.fusepowered.fuseapi.FuseAPI.appName.contains(com.fusepowered.fuseapi.FuseAPI.packageName)) {
            com.fusepowered.fuseapi.FuseAPI.appName.replace(com.fusepowered.fuseapi.FuseAPI.packageName + ".", "");
        }
        com.fusepowered.fuseapi.FuseAPI.iconID = n;
        Label_0358: {
            if (drawerIconID != 0) {
                break Label_0358;
            }
            com.fusepowered.fuseapi.FuseAPI.drawerIconID = n;
            while (true) {
                try {
                    while (true) {
                        com.fusepowered.fuseapi.FuseAPI.gcmContext = activity.getApplicationContext();
                        FuseGCMRegistrar.checkDevice((Context)activity);
                        FuseGCMRegistrar.checkManifest((Context)activity);
                        com.fusepowered.fuseapi.FuseAPI.registrationID = FuseGCMRegistrar.getRegistrationId((Context)activity);
                        if (com.fusepowered.fuseapi.FuseAPI.registrationID.equals("")) {
                            FuseGCMRegistrar.register((Context)activity, s);
                        }
                        Log.d("Push Notification", "This is the Registration:\n" + com.fusepowered.fuseapi.FuseAPI.registrationID);
                        registerGCM(com.fusepowered.fuseapi.FuseAPI.registrationID);
                        com.fusepowered.fuseapi.FuseAPI.forGCMEvents = forGCMEvents;
                        return;
                        com.fusepowered.fuseapi.FuseAPI.drawerIconID = drawerIconID;
                        continue;
                    }
                }
                catch (Exception ex) {
                    Log.e("Push Notification", ex.toString());
                    continue;
                }
                break;
            }
        }
    }
    
    private static void showDialog(final Message obj, final int n) {
    Label_0028_Outer:
        while (true) {
            while (true) {
                synchronized (FuseAPI.class) {
                    final String actionTitle = obj.getActionTitle();
                    if (actionTitle != null) {
                        if (!actionTitle.trim().equals("")) {
                            com.fusepowered.fuseapi.FuseAPI.builder.setNegativeButton((CharSequence)null, (DialogInterface$OnClickListener)null);
                            com.fusepowered.fuseapi.FuseAPI.builder.setPositiveButton((CharSequence)null, (DialogInterface$OnClickListener)null);
                            com.fusepowered.fuseapi.FuseAPI.builder.setNeutralButton((CharSequence)null, (DialogInterface$OnClickListener)null);
                            com.fusepowered.fuseapi.FuseAPI.builder.setMessage((CharSequence)null);
                            com.fusepowered.fuseapi.FuseAPI.builder.setTitle((CharSequence)null);
                            Log.d("FUSE NOTIFICATION", "These are the message variables " + obj);
                            AlertDialog alertDialog;
                            if (obj.getMandatory() == 0 && obj.getIsUrl() == 1) {
                                alertDialog = com.fusepowered.fuseapi.FuseAPI.builder.setTitle((CharSequence)obj.getTitle()).setMessage((CharSequence)obj.getBody()).setNegativeButton((CharSequence)"Cancel", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                    public void onClick(final DialogInterface dialogInterface, final int n) {
                                        obj.setDisplayed(false);
                                        notificationView(obj.getId());
                                        showNextMessage(n);
                                    }
                                }).setPositiveButton((CharSequence)actionTitle, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                    public void onClick(final DialogInterface dialogInterface, final int n) {
                                        obj.setDisplayed(false);
                                        notificationView(obj.getId());
                                        notificationClick(obj.getId());
                                        while (true) {
                                            if (obj.getIsUrl() != 1) {
                                                break Label_0070;
                                            }
                                            final String action = obj.getAction();
                                            if (action == null) {
                                                break Label_0070;
                                            }
                                            try {
                                                new URI(action);
                                                openWebPage(obj.getAction());
                                                obj.setClicked(true);
                                                if (com.fusepowered.fuseapi.FuseAPI.fuseCallback != null) {
                                                    com.fusepowered.fuseapi.FuseAPI.fuseCallback.notificationAction(obj.getAction());
                                                }
                                                showNextMessage(n);
                                            }
                                            catch (URISyntaxException ex) {
                                                continue Label_0028_Outer;
                                            }
                                            break;
                                        }
                                    }
                                }).create();
                            }
                            else if (obj.getIsUrl() == 0) {
                                alertDialog = com.fusepowered.fuseapi.FuseAPI.builder.setTitle((CharSequence)obj.getTitle()).setMessage((CharSequence)obj.getBody()).setNeutralButton((CharSequence)actionTitle, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                    public void onClick(final DialogInterface dialogInterface, final int n) {
                                        obj.setDisplayed(false);
                                        notificationView(obj.getId());
                                        notificationClick(obj.getId());
                                        while (true) {
                                            if (obj.getIsUrl() != 1) {
                                                break Label_0070;
                                            }
                                            final String action = obj.getAction();
                                            if (action == null) {
                                                break Label_0070;
                                            }
                                            try {
                                                new URI(action);
                                                openWebPage(obj.getAction());
                                                obj.setClicked(true);
                                                if (com.fusepowered.fuseapi.FuseAPI.fuseCallback != null) {
                                                    com.fusepowered.fuseapi.FuseAPI.fuseCallback.notificationAction(obj.getAction());
                                                }
                                                showNextMessage(n);
                                            }
                                            catch (URISyntaxException ex) {
                                                continue Label_0028_Outer;
                                            }
                                            break;
                                        }
                                    }
                                }).create();
                            }
                            else {
                                alertDialog = com.fusepowered.fuseapi.FuseAPI.builder.setTitle((CharSequence)obj.getTitle()).setMessage((CharSequence)obj.getBody()).setNeutralButton((CharSequence)actionTitle, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                                    public void onClick(final DialogInterface dialogInterface, final int n) {
                                        obj.setDisplayed(false);
                                        notificationView(obj.getId());
                                        notificationClick(obj.getId());
                                        while (true) {
                                            if (obj.getIsUrl() != 1) {
                                                break Label_0073;
                                            }
                                            final String action = obj.getAction();
                                            if (action == null) {
                                                break Label_0073;
                                            }
                                            try {
                                                new URI(action);
                                                openWebPage(obj.getAction());
                                                obj.setClicked(true);
                                                if (com.fusepowered.fuseapi.FuseAPI.fuseCallback != null) {
                                                    com.fusepowered.fuseapi.FuseAPI.fuseCallback.notificationAction(obj.getAction());
                                                }
                                                com.fusepowered.fuseapi.FuseAPI.displayNotifications = true;
                                            }
                                            catch (URISyntaxException ex) {
                                                continue Label_0028_Outer;
                                            }
                                            break;
                                        }
                                    }
                                }).create();
                            }
                            if (obj.getIsUpgrade()) {
                                com.fusepowered.fuseapi.FuseAPI.showingManditoryMessage = true;
                            }
                            obj.setDisplayed(true);
                            alertDialog.show();
                            return;
                        }
                    }
                }
                final String actionTitle = "OK";
                continue;
            }
        }
    }
    
    public static void showFuseApiAdBrowser(final FuseApiBrowser fuseApiBrowser) {
        if (com.fusepowered.fuseapi.FuseAPI.adToDisplay != null && com.fusepowered.fuseapi.FuseAPI.adToDisplay.getHtmlBody() != null) {
            final int id = com.fusepowered.fuseapi.FuseAPI.adToDisplay.getId();
            final String action = com.fusepowered.fuseapi.FuseAPI.adToDisplay.getAction();
            setDisplayedAdDetails(id, action);
            final Intent intent = new Intent(com.fusepowered.fuseapi.FuseAPI.context, (Class)fuseApiBrowser.getClass());
            intent.putExtra("AD_ACTION", action);
            intent.putExtra("AD_HTML", com.fusepowered.fuseapi.FuseAPI.adToDisplay.getHtmlBody());
            intent.putExtra("AD_ID", id);
            intent.putExtra("PW", com.fusepowered.fuseapi.FuseAPI.adToDisplay.pw);
            intent.putExtra("LW", com.fusepowered.fuseapi.FuseAPI.adToDisplay.lw);
            intent.putExtra("PH", com.fusepowered.fuseapi.FuseAPI.adToDisplay.ph);
            intent.putExtra("LH", com.fusepowered.fuseapi.FuseAPI.adToDisplay.lh);
            intent.putExtra("o", com.fusepowered.fuseapi.FuseAPI.adToDisplay.o);
            com.fusepowered.fuseapi.FuseAPI.mainActivity.startActivityForResult(intent, 1);
            return;
        }
        setFuseChildActivityOnDisplay(false);
        setDisplayedAdDetails(-1, "");
    }
    
    private static void showFuseApiMoreGamesBrowser(final String s, final FuseApiBrowser fuseApiBrowser) {
        final Intent intent = new Intent(com.fusepowered.fuseapi.FuseAPI.context, (Class)fuseApiBrowser.getClass());
        intent.setData(Uri.parse(s));
        intent.putExtra("RETURN", FuseServer.getMoreGamesCloseImage());
        com.fusepowered.fuseapi.FuseAPI.mainActivity.startActivityForResult(intent, 1);
    }
    
    private static void showNextMessage(final int n) {
        while (true) {
            final Message nextMessage;
            Label_0039: {
                synchronized (FuseAPI.class) {
                    if (!com.fusepowered.fuseapi.FuseAPI.showingManditoryMessage) {
                        nextMessage = com.fusepowered.fuseapi.FuseAPI.responseValues.getNextMessage();
                        if (nextMessage != null) {
                            break Label_0039;
                        }
                        com.fusepowered.fuseapi.FuseAPI.displayNotifications = false;
                    }
                    return;
                }
            }
            final int id = nextMessage.getId();
            final int notificationViewCount = getNotificationViewCount(id);
            final int notificationSkipCount = getNotificationSkipCount(id);
            new StringBuilder();
            final int sticky = nextMessage.getSticky();
            if ((sticky == 1 || (sticky == 0 && (notificationViewCount == 0 || notificationViewCount < nextMessage.getMax_views()) && notificationSkipCount >= nextMessage.getShowOnView() && !FusePowerManager.isSleepMode(com.fusepowered.fuseapi.FuseAPI.context)) || nextMessage.getMandatory() == 1) && !nextMessage.isDisplayed()) {
                showDialog(nextMessage, n + 1);
                return;
            }
            final int n2 = n + 1;
            if ((notificationViewCount == 0 || notificationViewCount < nextMessage.getMax_views()) && notificationSkipCount < nextMessage.getShowOnView()) {
                setNotificationSkipped(id);
            }
            if (!nextMessage.isDisplayed()) {
                showNextMessage(n2);
            }
        }
    }
    
    public static void startSession(final String s, final Activity activity, final Context context, final FuseCallback fuseCallback) {
        initializeFuseAPI(activity, context);
        com.fusepowered.fuseapi.FuseAPI.mInterstitial = null;
        if (com.fusepowered.fuseapi.FuseAPI.responseValues == null || com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId() == null) {
            clearAll();
            setNumPlays(s);
            com.fusepowered.fuseapi.FuseAPI.gameInfo = new GameInfo(s, PropertyManager.getGameVersion());
            resetRequestId();
            resetGameDataRequestId();
            resetFuseChildActivityOnDisplay();
            resetDisplayedAdDetails();
            updateCommonParams();
            com.fusepowered.fuseapi.FuseAPI.optOut = (SharedPrefsUtil.readSharedProperty(context, "opt_out_" + s, 0) != 0);
            com.fusepowered.fuseapi.FuseAPI.suspended = false;
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            com.fusepowered.fuseapi.FuseAPI.appdata = activity.getSharedPreferences("fuse." + activity.getApplication().getPackageName() + "." + activity.getPackageManager().getApplicationLabel(activity.getApplicationInfo()).toString().replaceAll("[^A-Za-z0-9]", ""), 0);
            if (com.fusepowered.fuseapi.FuseAPI.optOut) {
                hashMap.put("opt_out", "1");
            }
            else {
                hashMap.put("timestamp", String.valueOf(new Date().getTime()));
                hashMap.put("opt_out", "0");
                hashMap.put("name", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getUser());
                hashMap.put("model", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getModel());
                hashMap.put("sysver", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getDeviceSoftwareVersion());
                hashMap.put("machine", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getHardware());
                hashMap.put("carrier", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getNetworkOperatorName());
                hashMap.put("country", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getCountryCode());
                hashMap.put("language", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getLanguage());
                final Rect rect = new Rect();
                com.fusepowered.fuseapi.FuseAPI.mainActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                final int i = rect.bottom - rect.top;
                hashMap.put("w", String.valueOf(rect.right - rect.left));
                hashMap.put("h", String.valueOf(i));
                hashMap.put("o", String.valueOf(((WindowManager)com.fusepowered.fuseapi.FuseAPI.mainActivity.getSystemService("window")).getDefaultDisplay().getRotation()));
            }
            hashMap.put("wifi", NetworkService.isWifiConnection(getContext()));
            hashMap.put("jb", com.fusepowered.fuseapi.FuseAPI.gameInfo.getJailBroken());
            hashMap.put("e", com.fusepowered.fuseapi.FuseAPI.gameInfo.getJailBroken());
            hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
            hashMap.put("timestamp", String.valueOf(new Date().getTime()));
            hashMap.put("action", String.valueOf(ActionType.ACTION_SESSION_START.getMessageCode()));
            final String deviceId = com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getDeviceId();
            if (deviceId != null && deviceId.length() > 0) {
                hashMap.put("android_device_id", deviceId);
            }
            final String string = Settings$Secure.getString(com.fusepowered.fuseapi.FuseAPI.context.getContentResolver(), "android_id");
            if (string != null && string.length() > 0) {
                hashMap.put("android_id", string);
            }
            FuseCallback fuseCallback2;
            if (fuseCallback != null) {
                fuseCallback2 = fuseCallback;
            }
            else {
                fuseCallback2 = new FuseMessageCallback();
            }
            com.fusepowered.fuseapi.FuseAPI.fuseCallback = fuseCallback2;
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, com.fusepowered.fuseapi.FuseAPI.fuseCallback);
        }
    }
    
    public static void suspendSession() {
        Log.d("SUSPEND", "Got a request to Suspend");
        VunglePub.onPause();
        if (((isFuseChildActivityOnDisplay() || com.fusepowered.fuseapi.FuseAPI.suspended) && !com.fusepowered.fuseapi.FuseAPI.overrideSuspend) || com.fusepowered.fuseapi.FuseAPI.showingMoreGames) {
            return;
        }
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_SUSPEND_SESSION.getMessageCode()));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        com.fusepowered.fuseapi.FuseAPI.suspended = true;
        com.fusepowered.fuseapi.FuseAPI.overrideSuspend = false;
    }
    
    public static void testGCMSetup(final Activity activity) {
        final PackageManager packageManager = activity.getPackageManager();
        com.fusepowered.fuseapi.FuseAPI.appName = packageManager.getApplicationLabel(activity.getApplicationInfo()).toString();
        Log.d("PUSH NOTIFICATION", "This is the app name " + com.fusepowered.fuseapi.FuseAPI.appName);
        if (com.fusepowered.fuseapi.FuseAPI.appName == null || com.fusepowered.fuseapi.FuseAPI.appName.length() == 0) {
            com.fusepowered.fuseapi.FuseAPI.appName = activity.getApplication().getString(activity.getApplication().getApplicationInfo().labelRes);
            Log.d("PUSH NOTIFICATION", "Alternative App Name " + com.fusepowered.fuseapi.FuseAPI.appName);
        }
        if (com.fusepowered.fuseapi.FuseAPI.appName == null || com.fusepowered.fuseapi.FuseAPI.appName.length() == 0) {
            Log.e("PUSH NOTIFICATION", "Error: The app name is null.  Stopping the registration. Push Notifications will be disabled");
        }
        com.fusepowered.fuseapi.FuseAPI.appNameDisplay = com.fusepowered.fuseapi.FuseAPI.appName;
        com.fusepowered.fuseapi.FuseAPI.appName = com.fusepowered.fuseapi.FuseAPI.appName.replaceAll("[^A-Za-z0-9]", "");
        com.fusepowered.fuseapi.FuseAPI.packageName = activity.getApplication().getPackageName();
        Log.d("PUSH NOTIFICATION", "This is the package name " + com.fusepowered.fuseapi.FuseAPI.packageName);
        if (com.fusepowered.fuseapi.FuseAPI.packageName == null || com.fusepowered.fuseapi.FuseAPI.packageName.length() == 0) {
            com.fusepowered.fuseapi.FuseAPI.packageName = activity.getApplicationContext().getPackageName();
            Log.d("PUSH NOTIFICATION", "Alternative method to get package name... This is the package name " + com.fusepowered.fuseapi.FuseAPI.packageName);
        }
        if (com.fusepowered.fuseapi.FuseAPI.packageName == null || com.fusepowered.fuseapi.FuseAPI.packageName.length() == 0) {
            Log.e("PUSH NOTIFICATION", "Error: The package name is null.  Stopping the registration. Push Notifications will be disabled");
        }
        if (com.fusepowered.fuseapi.FuseAPI.appName.contains(com.fusepowered.fuseapi.FuseAPI.packageName)) {
            com.fusepowered.fuseapi.FuseAPI.appName.replace(com.fusepowered.fuseapi.FuseAPI.packageName + ".", "");
        }
        final String string = com.fusepowered.fuseapi.FuseAPI.packageName + "." + com.fusepowered.fuseapi.FuseAPI.appName + ".fusepowered.push.FuseRecordGCMResponse";
        final Intent intent = new Intent(string);
        intent.setPackage(com.fusepowered.fuseapi.FuseAPI.packageName);
        if (packageManager.resolveActivity(intent, 32) != null) {
            Log.d("PUSH NOTIFICATION", "The setup is correct.");
            return;
        }
        Log.e("PUSH NOTIFICATION", "The setup for the broadcast receiver is not working. Intent name we are looking for is " + string);
    }
    
    public static void triggerFuseAdDisplay(final FuseApiBrowser fuseApiAdBrowser, final FuseAdCallback fuseAdCallback) {
        FuseAdCallback fuseAdCallback2;
        if (fuseAdCallback != null) {
            fuseAdCallback2 = fuseAdCallback;
        }
        else {
            fuseAdCallback2 = new FuseAdCallbackImpl();
        }
        (com.fusepowered.fuseapi.FuseAPI.fuseAdCallback = fuseAdCallback2).setFuseApiAdBrowser(fuseApiAdBrowser);
        FuseLog.d("FUSE AD", "Showing a fuse ad, assuming there is already an add");
        com.fusepowered.fuseapi.FuseAPI.adToDisplay = com.fusepowered.fuseapi.FuseAPI.responseValues.getAd();
        showFuseApiAdBrowser(fuseApiAdBrowser);
    }
    
    public static void triggerMopubAdDisplay(final FuseAdCallback fuseAdCallback) {
        FuseLog.d("Mopub", "Trying to show a mobup ad");
        FuseAdCallback fuseAdCallback2;
        if (fuseAdCallback != null) {
            fuseAdCallback2 = fuseAdCallback;
        }
        else {
            fuseAdCallback2 = new FuseAdCallbackImpl();
        }
        com.fusepowered.fuseapi.FuseAPI.fuseAdCallback = fuseAdCallback2;
        com.fusepowered.fuseapi.FuseAPI.adToDisplay = com.fusepowered.fuseapi.FuseAPI.responseValues.getAd();
        displayMoPubAd(new int[0], 10, null, fuseAdCallback);
    }
    
    public static void twitterLogin(final String s, final FuseCallback fuseCallback) {
        getRegisterId(s, "", Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), null, AccountType.FUSE_TWITTER, fuseCallback);
    }
    
    public static void twitterLogin(final String s, final String s2, final FuseCallback fuseCallback) {
        getRegisterId(s, s2, Gender.FUSE_GENDER_UNKNOWN.getGenderCode(), null, AccountType.FUSE_TWITTER, fuseCallback);
    }
    
    private static void updateCommonParams() {
        if (com.fusepowered.fuseapi.FuseAPI.commonParams == null) {
            (com.fusepowered.fuseapi.FuseAPI.commonParams = new HashMap<String, String>()).put("game_ver", com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameVersion());
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("game_id", com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId());
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("udid", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getUuid().toString());
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("mac", com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory.getMacAddress());
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("debug", com.fusepowered.fuseapi.FuseAPI.gameInfo.getDebug());
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("pl", com.fusepowered.fuseapi.FuseAPI.gameInfo.getPl());
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("dt", String.valueOf(1));
            if (com.fusepowered.fuseapi.FuseAPI.responseValues != null && !StringUtil.isEmpty(com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId())) {
                com.fusepowered.fuseapi.FuseAPI.commonParams.put("session_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId());
            }
            else {
                com.fusepowered.fuseapi.FuseAPI.commonParams.put("session_id", null);
            }
        }
        if (com.fusepowered.fuseapi.FuseAPI.commonParams.get("session_id") == null && com.fusepowered.fuseapi.FuseAPI.responseValues != null && !StringUtil.isEmpty(com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId())) {
            com.fusepowered.fuseapi.FuseAPI.commonParams.put("session_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getSessionId());
        }
        incrementRequestId(com.fusepowered.fuseapi.FuseAPI.gameInfo.getGameId());
    }
    
    public static void updateFriendsListFromServer(FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("account_id", com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountId());
        hashMap.put("type", String.valueOf(com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount().getAccountType().getAccountNumber()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_GET_FRIENDS_LIST.getMessageCode()));
        if (fuseCallback == null) {
            fuseCallback = new FuseMessageCallback();
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
    }
    
    private static void updateFuseAPI(final Activity mainActivity) {
        com.fusepowered.fuseapi.FuseAPI.mainActivity = mainActivity;
        com.fusepowered.fuseapi.FuseAPI.context = mainActivity.getApplicationContext();
        com.fusepowered.fuseapi.FuseAPI.deviceInfoFactory = new DeviceInfoFactory(com.fusepowered.fuseapi.FuseAPI.context);
    }
    
    public static void userOptOut(final int n) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("opt_out", String.valueOf(n));
        hashMap.put("action", String.valueOf(ActionType.ACTION_USER_OPT_OUT.getMessageCode()));
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
        setOptOut(n);
    }
    
    public static void userPushNotification(final String value, final String value2) {
        final Account account = com.fusepowered.fuseapi.FuseAPI.responseValues.getAccount();
        if (account == null) {
            return;
        }
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_SEND_PUSH_USER.getMessageCode()));
        hashMap.put("type", String.valueOf(account.getAccountType().getAccountNumber()));
        hashMap.put("account_id", String.valueOf(account.getAccountId()));
        hashMap.put("fuse_id", value);
        hashMap.put("message", value2);
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
    }
    
    public static void utcTimeFromServer(final FuseCallback fuseCallback) {
        updateCommonParams();
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", String.valueOf(com.fusepowered.fuseapi.FuseAPI.id));
        hashMap.put("timestamp", String.valueOf(new Date().getTime()));
        hashMap.put("action", String.valueOf(ActionType.ACTION_FETCH_SERVER_UTC_TIME.getMessageCode()));
        if (fuseCallback != null) {
            MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, fuseCallback);
            return;
        }
        MessagingService.sendJsonMessage(com.fusepowered.fuseapi.FuseAPI.commonParams, hashMap, new FuseMessageCallback());
    }
    
    private abstract static class MoPubCallBackInterceptor implements InterstitialAdListener
    {
        private FuseAdCallback adCallback;
        private boolean isWaitingForAd;
        
        public MoPubCallBackInterceptor(final FuseAdCallback adCallback) {
            super();
            this.isWaitingForAd = true;
            this.adCallback = adCallback;
        }
        
        public boolean getIsWaitingForAd() {
            return this.isWaitingForAd;
        }
        
        @Override
        public void onInterstitialClicked(final MoPubInterstitial moPubInterstitial) {
            this.adCallback.onInterstitialClicked(moPubInterstitial);
        }
        
        @Override
        public void onInterstitialDismissed(final MoPubInterstitial moPubInterstitial) {
            FuseLog.d("MOPUB_AD", "!!!!!!! AD WAS DISMISSED !!!!!!! ");
            this.adCallback.onInterstitialDismissed(moPubInterstitial);
        }
        
        @Override
        public void onInterstitialFailed(final MoPubInterstitial moPubInterstitial, final MoPubErrorCode moPubErrorCode) {
            FuseLog.d("MOPUB_AD", "!!!!!!! AD FAILED TO LOAD !!!!!!! ");
            this.adCallback.onInterstitialFailed(moPubInterstitial, moPubErrorCode);
            if (this.isWaitingForAd) {
                this.isWaitingForAd = false;
                com.fusepowered.fuseapi.FuseAPI.showingMopubAd = false;
                this.tryNextAdProvider();
            }
        }
        
        @Override
        public void onInterstitialLoaded(final MoPubInterstitial moPubInterstitial) {
            if (this.isWaitingForAd) {
                this.isWaitingForAd = false;
                com.fusepowered.fuseapi.FuseAPI.showingMopubAd = true;
                moPubInterstitial.show();
            }
            this.adCallback.onInterstitialLoaded(moPubInterstitial);
        }
        
        @Override
        public void onInterstitialShown(final MoPubInterstitial moPubInterstitial) {
            this.adCallback.onInterstitialShown(moPubInterstitial);
        }
        
        public void setIsWaitingForAd(final boolean isWaitingForAd) {
            this.isWaitingForAd = isWaitingForAd;
        }
        
        public abstract void tryNextAdProvider();
    }
    
    private abstract static class MopubCheckAdCallback implements InterstitialAdListener
    {
        public boolean didReturn;
        
        private MopubCheckAdCallback() {
            super();
            this.didReturn = false;
        }
        
        public abstract void checkAdAvailableReturnFailed();
        
        public abstract void checkAdAvailableReturnSucess();
        
        @Override
        public void onInterstitialClicked(final MoPubInterstitial moPubInterstitial) {
        }
        
        @Override
        public void onInterstitialDismissed(final MoPubInterstitial moPubInterstitial) {
        }
        
        @Override
        public void onInterstitialFailed(final MoPubInterstitial moPubInterstitial, final MoPubErrorCode moPubErrorCode) {
            if (!this.didReturn) {
                this.checkAdAvailableReturnFailed();
            }
            this.didReturn = true;
        }
        
        @Override
        public void onInterstitialLoaded(final MoPubInterstitial moPubInterstitial) {
            if (!this.didReturn) {
                this.checkAdAvailableReturnSucess();
            }
            this.didReturn = true;
        }
        
        @Override
        public void onInterstitialShown(final MoPubInterstitial moPubInterstitial) {
            FuseLog.d("MOPUB ERROR", "|||||||||||||||||| SHOULD NEVER SHOW AN AD WITH THIS CALL BACK  ||||||||||||||||||");
        }
    }
    
    private class PostTask extends AsyncTask<String, Integer, String>
    {
        protected String doInBackground(final String... array) {
            com.fusepowered.fuseapi.FuseAPI.mInterstitial.load();
            return null;
        }
    }
}
