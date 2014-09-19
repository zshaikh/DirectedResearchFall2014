package com.fusepowered.a1;

import com.fusepowered.a1.view.*;
import com.fusepowered.a1.webapp.*;
import android.app.*;
import com.fusepowered.a1.properties.*;
import org.json.*;
import android.os.*;
import android.net.*;
import android.content.*;
import java.util.*;
import com.fusepowered.a1.campaign.*;
import com.fusepowered.a1.cache.*;

public class ApplifierImpact implements IApplifierImpactCacheListener, IApplifierImpactWebDataListener, IApplifierImpactWebBrigeListener, IApplifierImpactMainViewListener
{
    public static final String APPLIFIER_IMPACT_OPTION_GAMERSID_KEY = "sid";
    public static final String APPLIFIER_IMPACT_OPTION_MUTE_VIDEO_SOUNDS = "muteVideoSounds";
    public static final String APPLIFIER_IMPACT_OPTION_NOOFFERSCREEN_KEY = "noOfferScreen";
    public static final String APPLIFIER_IMPACT_OPTION_OPENANIMATED_KEY = "openAnimated";
    public static final String APPLIFIER_IMPACT_OPTION_VIDEO_USES_DEVICE_ORIENTATION = "useDeviceOrientationForVideo";
    public static final String APPLIFIER_IMPACT_REWARDITEM_NAME_KEY = "name";
    public static final String APPLIFIER_IMPACT_REWARDITEM_PICTURE_KEY = "picture";
    public static ApplifierImpactCacheManager cachemanager;
    public static ApplifierImpact instance;
    public static ApplifierImpactMainView mainview;
    public static ApplifierImpactWebData webdata;
    private AlertDialog _alertDialog;
    private IApplifierImpactListener _impactListener;
    private boolean _impactReadySent;
    private boolean _initialized;
    private boolean _openRequestFromDeveloper;
    private TimerTask _pauseScreenTimer;
    private Timer _pauseTimer;
    private boolean _showingImpact;
    private boolean _webAppLoaded;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction() {
        final int[] $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction = ApplifierImpact.$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction;
        if ($switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction != null) {
            return $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction;
        }
        final int[] $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2 = new int[ApplifierImpactMainView.ApplifierImpactMainViewAction.values().length];
        while (true) {
            try {
                $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2[ApplifierImpactMainView.ApplifierImpactMainViewAction.BackButtonPressed.ordinal()] = 4;
                try {
                    $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2[ApplifierImpactMainView.ApplifierImpactMainViewAction.RequestRetryVideoPlay.ordinal()] = 5;
                    try {
                        $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2[ApplifierImpactMainView.ApplifierImpactMainViewAction.VideoEnd.ordinal()] = 2;
                        try {
                            $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2[ApplifierImpactMainView.ApplifierImpactMainViewAction.VideoSkipped.ordinal()] = 3;
                            try {
                                $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2[ApplifierImpactMainView.ApplifierImpactMainViewAction.VideoStart.ordinal()] = 1;
                                return ApplifierImpact.$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction = $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction2;
                            }
                            catch (NoSuchFieldError noSuchFieldError) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError2) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError3) {}
                }
                catch (NoSuchFieldError noSuchFieldError4) {}
            }
            catch (NoSuchFieldError noSuchFieldError5) {
                continue;
            }
            break;
        }
    }
    
    static {
        ApplifierImpact.instance = null;
        ApplifierImpact.cachemanager = null;
        ApplifierImpact.webdata = null;
        ApplifierImpact.mainview = null;
    }
    
    public ApplifierImpact(final Activity activity, final String s) {
        super();
        this._initialized = false;
        this._showingImpact = false;
        this._impactReadySent = false;
        this._webAppLoaded = false;
        this._openRequestFromDeveloper = false;
        this._alertDialog = null;
        this._pauseScreenTimer = null;
        this._pauseTimer = null;
        this.init(activity, s, this._impactListener = null);
    }
    
    public ApplifierImpact(final Activity activity, final String s, final IApplifierImpactListener applifierImpactListener) {
        super();
        this._initialized = false;
        this._showingImpact = false;
        this._impactReadySent = false;
        this._webAppLoaded = false;
        this._openRequestFromDeveloper = false;
        this._alertDialog = null;
        this._pauseScreenTimer = null;
        this._pauseTimer = null;
        this._impactListener = null;
        this.init(activity, s, applifierImpactListener);
    }
    
    static /* synthetic */ void access$0(final ApplifierImpact applifierImpact, final boolean showingImpact) {
        applifierImpact._showingImpact = showingImpact;
    }
    
    static /* synthetic */ void access$5(final ApplifierImpact applifierImpact, final boolean impactReadySent) {
        applifierImpact._impactReadySent = impactReadySent;
    }
    
    private void cancelPauseScreenTimer() {
        if (this._pauseScreenTimer != null) {
            this._pauseScreenTimer.cancel();
        }
        if (this._pauseTimer != null) {
            this._pauseTimer.cancel();
            this._pauseTimer.purge();
        }
        this._pauseScreenTimer = null;
        this._pauseTimer = null;
    }
    
    private void close() {
        this.cancelPauseScreenTimer();
        if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new ApplifierImpactCloseRunner((ApplifierImpactCloseRunner)null));
        }
    }
    
    private void createPauseScreenTimer() {
        this._pauseScreenTimer = new TimerTask() {
            @Override
            public void run() {
                if (ApplifierImpactProperties.CURRENT_ACTIVITY != null && !((PowerManager)ApplifierImpactProperties.CURRENT_ACTIVITY.getBaseContext().getSystemService("power")).isScreenOn()) {
                    ApplifierImpact.mainview.webview.sendNativeEventToWebApp("hideSpinner", new JSONObject());
                    ApplifierImpact.this.close();
                    ApplifierImpact.this.cancelPauseScreenTimer();
                }
            }
        };
        (this._pauseTimer = new Timer()).scheduleAtFixedRate(this._pauseScreenTimer, 0L, 50L);
    }
    
    public static String getSDKVersion() {
        return "109";
    }
    
    private void init(final Activity activity, final String s, final IApplifierImpactListener impactListener) {
        if (!this._initialized) {
            if (s.length() == 0) {
                throw new IllegalArgumentException("gameId is empty");
            }
            try {
                if (Integer.parseInt(s) <= 0) {
                    throw new IllegalArgumentException("gameId is invalid");
                }
            }
            catch (NumberFormatException ex) {
                throw new IllegalArgumentException("gameId does not parse as an integer");
            }
            (ApplifierImpact.instance = this).setImpactListener(impactListener);
            ApplifierImpactProperties.IMPACT_GAME_ID = s;
            ApplifierImpactProperties.BASE_ACTIVITY = activity;
            ApplifierImpactProperties.CURRENT_ACTIVITY = activity;
            ApplifierImpactUtils.Log("Is debuggable=" + ApplifierImpactUtils.isDebuggable((Context)activity), this);
            (ApplifierImpact.cachemanager = new ApplifierImpactCacheManager()).setDownloadListener(this);
            (ApplifierImpact.webdata = new ApplifierImpactWebData()).setWebDataListener(this);
            if (ApplifierImpact.webdata.initCampaigns()) {
                this._initialized = true;
            }
        }
    }
    
    private void initCache() {
        if (this._initialized) {
            ApplifierImpactUtils.Log("Init cache", this);
            ApplifierImpact.cachemanager.updateCache(ApplifierImpact.webdata.getVideoPlanCampaigns());
        }
    }
    
    public static boolean isSupported() {
        return Build$VERSION.SDK_INT >= 9;
    }
    
    private void open(final String str) {
        Boolean obj = true;
        final JSONObject jsonObject = new JSONObject();
        while (true) {
            try {
                jsonObject.put("action", (Object)"open");
                jsonObject.put("itemKey", (Object)ApplifierImpact.webdata.getCurrentRewardItemKey());
                jsonObject.put("developerOptions", (Object)ApplifierImpactProperties.getDeveloperOptionsAsJson());
                ApplifierImpactUtils.Log("open() dataOk: " + obj, this);
                if (obj && str != null) {
                    ApplifierImpactUtils.Log("open() opening with view:" + str + " and data:" + jsonObject.toString(), this);
                    if (ApplifierImpact.mainview != null) {
                        ApplifierImpact.mainview.openImpact(str, jsonObject);
                        if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS != null && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("noOfferScreen") && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("noOfferScreen").equals(true)) {
                            this.playVideo();
                        }
                        if (this._impactListener != null) {
                            this._impactListener.onImpactOpen();
                        }
                    }
                }
            }
            catch (Exception ex) {
                obj = false;
                continue;
            }
            break;
        }
    }
    
    private void openPlayStoreAsIntent(final String s) {
        ApplifierImpactUtils.Log("Opening playstore activity with storeId: " + s, this);
        if (ApplifierImpactProperties.CURRENT_ACTIVITY == null) {
            return;
        }
        try {
            ApplifierImpactProperties.CURRENT_ACTIVITY.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + s)));
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Couldn't start PlayStore intent!", this);
        }
    }
    
    private void openPlayStoreInBrowser(final String str) {
        ApplifierImpactUtils.Log("Could not open PlayStore activity, opening in browser with url: " + str, this);
        if (ApplifierImpactProperties.CURRENT_ACTIVITY == null) {
            return;
        }
        try {
            ApplifierImpactProperties.CURRENT_ACTIVITY.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
        catch (Exception ex) {
            ApplifierImpactUtils.Log("Couldn't start browser intent!", this);
        }
    }
    
    private void playVideo() {
        this.playVideo(0L);
    }
    
    private void playVideo(final long delay) {
        ApplifierImpactUtils.Log("Running threaded", this);
        if (delay > 0L) {
            new Timer().schedule(new TimerTask() {
                @Override
                public void run() {
                    ApplifierImpactUtils.Log("Delayed video start", this);
                    final ApplifierImpactPlayVideoRunner applifierImpactPlayVideoRunner = new ApplifierImpactPlayVideoRunner((ApplifierImpactPlayVideoRunner)null);
                    if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
                        ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)applifierImpactPlayVideoRunner);
                    }
                }
            }, delay);
        }
        else {
            final ApplifierImpactPlayVideoRunner applifierImpactPlayVideoRunner = new ApplifierImpactPlayVideoRunner((ApplifierImpactPlayVideoRunner)null);
            if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
                ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)applifierImpactPlayVideoRunner);
            }
        }
    }
    
    private void sendImpactReadyEvent() {
        if (!this._impactReadySent && this._impactListener != null) {
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new Runnable() {
                @Override
                public void run() {
                    ApplifierImpactUtils.Log("Impact ready!", this);
                    ApplifierImpact.access$5(ApplifierImpact.this, true);
                    ApplifierImpact.this._impactListener.onCampaignsAvailable();
                }
            });
        }
    }
    
    public static void setDebugMode(final boolean b) {
        ApplifierImpactProperties.IMPACT_DEBUG_MODE = b;
    }
    
    public static void setTestDeveloperId(final String test_DEVELOPER_ID) {
        ApplifierImpactProperties.TEST_DEVELOPER_ID = test_DEVELOPER_ID;
    }
    
    public static void setTestMode(final boolean b) {
        ApplifierImpactProperties.TESTMODE_ENABLED = b;
    }
    
    public static void setTestOptionsId(final String test_OPTIONS_ID) {
        ApplifierImpactProperties.TEST_OPTIONS_ID = test_OPTIONS_ID;
    }
    
    private void setup() {
        this.initCache();
        this.setupViews();
    }
    
    private void setupViews() {
        ApplifierImpact.mainview = new ApplifierImpactMainView((Context)ApplifierImpactProperties.CURRENT_ACTIVITY, this);
    }
    
    private void startImpactFullscreenActivity() {
        final Intent intent = new Intent((Context)ApplifierImpactProperties.CURRENT_ACTIVITY, (Class)A1InterstitialActivity.class);
        int n = 268500992;
        if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS != null && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("openAnimated") && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("openAnimated").equals(true)) {
            n = 268435456;
        }
        intent.addFlags(n);
        try {
            ApplifierImpactProperties.BASE_ACTIVITY.startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            ApplifierImpactUtils.Log("Could not find activity: " + ex.getStackTrace(), this);
        }
        catch (Exception ex2) {
            ApplifierImpactUtils.Log("Weird error: " + ex2.getStackTrace(), this);
        }
    }
    
    public boolean canShowCampaigns() {
        return ApplifierImpact.mainview != null && ApplifierImpact.mainview.webview != null && ApplifierImpact.mainview.webview.isWebAppLoaded() && this._webAppLoaded && ApplifierImpact.webdata != null && ApplifierImpact.webdata.getViewableVideoPlanCampaigns() != null && ApplifierImpact.webdata.getViewableVideoPlanCampaigns().size() > 0;
    }
    
    public boolean canShowImpact() {
        return !this._showingImpact && ApplifierImpact.mainview != null && ApplifierImpact.mainview.webview != null && ApplifierImpact.mainview.webview.isWebAppLoaded() && this._webAppLoaded && ApplifierImpact.webdata != null && ApplifierImpact.webdata.getVideoPlanCampaigns() != null && ApplifierImpact.webdata.getVideoPlanCampaigns().size() > 0;
    }
    
    public void changeActivity(final Activity activity) {
        if (activity == null || activity == null || activity.equals(ApplifierImpactProperties.CURRENT_ACTIVITY)) {
            return;
        }
        ApplifierImpactProperties.CURRENT_ACTIVITY = activity;
        if (activity != null && activity.getClass() != null && activity.getClass().getName() != null && activity.getClass().getName().equals("com.fusepowered.a1.A1InterstitialActivity")) {
            if (ApplifierImpact.mainview != null && ApplifierImpact.mainview.webview != null) {
                String webViewCurrentView = ApplifierImpact.mainview.webview.getWebViewCurrentView();
                if (this._openRequestFromDeveloper) {
                    webViewCurrentView = "start";
                    ApplifierImpactUtils.Log("changeActivity: This open request is from the developer, setting start view", this);
                }
                if (webViewCurrentView != null) {
                    this.open(webViewCurrentView);
                }
            }
            this._openRequestFromDeveloper = false;
            return;
        }
        ApplifierImpactProperties.BASE_ACTIVITY = activity;
    }
    
    public String getCurrentRewardItemKey() {
        if (ApplifierImpact.webdata != null && ApplifierImpact.webdata.getCurrentRewardItemKey() != null) {
            return ApplifierImpact.webdata.getCurrentRewardItemKey();
        }
        return null;
    }
    
    public String getDefaultRewardItemKey() {
        if (ApplifierImpact.webdata != null && ApplifierImpact.webdata.getDefaultRewardItem() != null) {
            return ApplifierImpact.webdata.getDefaultRewardItem().getKey();
        }
        return null;
    }
    
    public Map<String, String> getRewardItemDetailsWithKey(final String str) {
        final ApplifierImpactRewardItem rewardItemByKey = ApplifierImpact.webdata.getRewardItemByKey(str);
        if (rewardItemByKey != null) {
            return rewardItemByKey.getDetails();
        }
        ApplifierImpactUtils.Log("Could not fetch reward item: " + str, this);
        return null;
    }
    
    public ArrayList<String> getRewardItemKeys() {
        if (ApplifierImpact.webdata.getRewardItems() != null && ApplifierImpact.webdata.getRewardItems().size() > 0) {
            final ArrayList<ApplifierImpactRewardItem> rewardItems = ApplifierImpact.webdata.getRewardItems();
            final ArrayList<String> list = new ArrayList<String>();
            final Iterator<ApplifierImpactRewardItem> iterator = rewardItems.iterator();
            while (iterator.hasNext()) {
                list.add(iterator.next().getKey());
            }
            return list;
        }
        return null;
    }
    
    public boolean hasMultipleRewardItems() {
        return ApplifierImpact.webdata.getRewardItems() != null && ApplifierImpact.webdata.getRewardItems().size() > 0;
    }
    
    public boolean hideImpact() {
        if (this._showingImpact) {
            this.close();
            return true;
        }
        return false;
    }
    
    @Override
    public void onAllCampaignsReady() {
        ApplifierImpactUtils.Log("Listener got \"All campaigns ready.\"", this);
    }
    
    @Override
    public void onCampaignReady(final ApplifierImpactCampaignHandler applifierImpactCampaignHandler) {
        if (applifierImpactCampaignHandler != null && applifierImpactCampaignHandler.getCampaign() != null) {
            ApplifierImpactUtils.Log("Got onCampaignReady: " + applifierImpactCampaignHandler.getCampaign().toString(), this);
            if (this.canShowCampaigns()) {
                this.sendImpactReadyEvent();
            }
        }
    }
    
    @Override
    public void onCampaignUpdateStarted() {
        ApplifierImpactUtils.Log("Campaign updates started.", this);
    }
    
    @Override
    public void onCloseImpactView(final JSONObject jsonObject) {
        this.hideImpact();
    }
    
    @Override
    public void onMainViewAction(final ApplifierImpactMainView.ApplifierImpactMainViewAction applifierImpactMainViewAction) {
        switch ($SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMainView$ApplifierImpactMainViewAction()[applifierImpactMainViewAction.ordinal()]) {
            case 4: {
                if (this._showingImpact) {
                    this.close();
                    return;
                }
                break;
            }
            case 1: {
                if (this._impactListener != null) {
                    this._impactListener.onVideoStarted();
                }
                this.cancelPauseScreenTimer();
            }
            case 2: {
                if (this._impactListener != null && ApplifierImpactProperties.SELECTED_CAMPAIGN != null && !ApplifierImpactProperties.SELECTED_CAMPAIGN.isViewed()) {
                    ApplifierImpactProperties.SELECTED_CAMPAIGN.setCampaignStatus(ApplifierImpactCampaign.ApplifierImpactCampaignStatus.VIEWED);
                    this._impactListener.onVideoCompleted(this.getCurrentRewardItemKey(), false);
                    return;
                }
                break;
            }
            case 3: {
                if (this._impactListener != null && ApplifierImpactProperties.SELECTED_CAMPAIGN != null && !ApplifierImpactProperties.SELECTED_CAMPAIGN.isViewed()) {
                    ApplifierImpactProperties.SELECTED_CAMPAIGN.setCampaignStatus(ApplifierImpactCampaign.ApplifierImpactCampaignStatus.VIEWED);
                    this._impactListener.onVideoCompleted(this.getCurrentRewardItemKey(), true);
                    return;
                }
                break;
            }
            case 5: {
                ApplifierImpactUtils.Log("Retrying video play, because something went wrong.", this);
                this.playVideo(300L);
            }
        }
    }
    
    @Override
    public void onOpenPlayStore(final JSONObject p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc_w           "onOpenPlayStore"
        //     3: aload_0        
        //     4: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //     7: aload_1        
        //     8: ifnull          125
        //    11: aload_1        
        //    12: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
        //    15: aload_0        
        //    16: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //    19: iconst_0       
        //    20: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    23: astore_2       
        //    24: aload_1        
        //    25: ldc_w           "iTunesId"
        //    28: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //    31: istore_3       
        //    32: aconst_null    
        //    33: astore          4
        //    35: iload_3        
        //    36: ifeq            52
        //    39: aload_1        
        //    40: ldc_w           "iTunesId"
        //    43: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    46: astore          12
        //    48: aload           12
        //    50: astore          4
        //    52: aload_1        
        //    53: ldc_w           "clickUrl"
        //    56: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //    59: istore          5
        //    61: aconst_null    
        //    62: astore          6
        //    64: iload           5
        //    66: ifeq            82
        //    69: aload_1        
        //    70: ldc_w           "clickUrl"
        //    73: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    76: astore          10
        //    78: aload           10
        //    80: astore          6
        //    82: aload_1        
        //    83: ldc_w           "bypassAppSheet"
        //    86: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //    89: ifeq            107
        //    92: aload_1        
        //    93: ldc_w           "bypassAppSheet"
        //    96: invokevirtual   org/json/JSONObject.getBoolean:(Ljava/lang/String;)Z
        //    99: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   102: astore          8
        //   104: aload           8
        //   106: astore_2       
        //   107: aload           4
        //   109: ifnull          168
        //   112: aload_2        
        //   113: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //   116: ifne            168
        //   119: aload_0        
        //   120: aload           4
        //   122: invokespecial   com/fusepowered/a1/ApplifierImpact.openPlayStoreAsIntent:(Ljava/lang/String;)V
        //   125: return         
        //   126: astore          11
        //   128: ldc_w           "Could not fetch playStoreId"
        //   131: aload_0        
        //   132: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   135: aconst_null    
        //   136: astore          4
        //   138: goto            52
        //   141: astore          9
        //   143: ldc_w           "Could not fetch clickUrl"
        //   146: aload_0        
        //   147: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   150: aconst_null    
        //   151: astore          6
        //   153: goto            82
        //   156: astore          7
        //   158: ldc_w           "Could not fetch bypassAppSheet"
        //   161: aload_0        
        //   162: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   165: goto            107
        //   168: aload           6
        //   170: ifnull          125
        //   173: aload_0        
        //   174: aload           6
        //   176: invokespecial   com/fusepowered/a1/ApplifierImpact.openPlayStoreInBrowser:(Ljava/lang/String;)V
        //   179: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  39     48     126    141    Ljava/lang/Exception;
        //  69     78     141    156    Ljava/lang/Exception;
        //  92     104    156    168    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 85, Size: 85
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    @Override
    public void onPauseVideo(final JSONObject jsonObject) {
    }
    
    @Override
    public void onPlayVideo(final JSONObject p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc_w           "onPlayVideo"
        //     3: aload_0        
        //     4: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //     7: aload_1        
        //     8: ldc_w           "campaignId"
        //    11: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //    14: ifeq            180
        //    17: aload_1        
        //    18: ldc_w           "campaignId"
        //    21: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //    24: astore          7
        //    26: aload           7
        //    28: astore_3       
        //    29: aload_3        
        //    30: ifnull          180
        //    33: getstatic       com/fusepowered/a1/ApplifierImpact.webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
        //    36: ifnull          59
        //    39: getstatic       com/fusepowered/a1/ApplifierImpact.webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
        //    42: aload_3        
        //    43: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData.getCampaignById:(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    46: ifnull          59
        //    49: getstatic       com/fusepowered/a1/ApplifierImpact.webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
        //    52: aload_3        
        //    53: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData.getCampaignById:(Ljava/lang/String;)Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    56: putstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    59: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    62: ifnull          180
        //    65: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    68: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.getCampaignId:()Ljava/lang/String;
        //    71: ifnull          180
        //    74: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    77: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.getCampaignId:()Ljava/lang/String;
        //    80: aload_3        
        //    81: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    84: ifeq            180
        //    87: iconst_0       
        //    88: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    91: astore          4
        //    93: aload_1        
        //    94: ldc_w           "rewatch"
        //    97: invokevirtual   org/json/JSONObject.getBoolean:(Ljava/lang/String;)Z
        //   100: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   103: astore          6
        //   105: aload           6
        //   107: astore          4
        //   109: new             Ljava/lang/StringBuilder;
        //   112: dup            
        //   113: ldc_w           "onPlayVideo: Selected campaign="
        //   116: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   119: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //   122: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.getCampaignId:()Ljava/lang/String;
        //   125: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   128: ldc_w           " isViewed: "
        //   131: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   134: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //   137: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.isViewed:()Ljava/lang/Boolean;
        //   140: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   143: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   146: aload_0        
        //   147: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   150: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //   153: ifnull          180
        //   156: aload           4
        //   158: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //   161: ifne            176
        //   164: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.SELECTED_CAMPAIGN:Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //   167: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.isViewed:()Ljava/lang/Boolean;
        //   170: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //   173: ifne            180
        //   176: aload_0        
        //   177: invokespecial   com/fusepowered/a1/ApplifierImpact.playVideo:()V
        //   180: return         
        //   181: astore_2       
        //   182: ldc_w           "Could not get campaignId"
        //   185: aload_0        
        //   186: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   189: aconst_null    
        //   190: astore_3       
        //   191: goto            29
        //   194: astore          5
        //   196: goto            109
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  17     26     181    194    Ljava/lang/Exception;
        //  93     105    194    199    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0109:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    @Override
    public void onWebAppInitComplete(final JSONObject jsonObject) {
        ApplifierImpactUtils.Log("WebApp init complete", this);
        this._webAppLoaded = true;
        Boolean b = true;
        if (!this.canShowCampaigns()) {
            return;
        }
        final JSONObject jsonObject2 = new JSONObject();
        while (true) {
            try {
                jsonObject2.put("action", (Object)"initComplete");
                jsonObject2.put("itemKey", (Object)ApplifierImpact.webdata.getCurrentRewardItemKey());
                if (b) {
                    ApplifierImpact.mainview.webview.setWebViewCurrentView("start", jsonObject2);
                    this.sendImpactReadyEvent();
                }
            }
            catch (Exception ex) {
                b = false;
                continue;
            }
            break;
        }
    }
    
    @Override
    public void onWebDataCompleted() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_1       
        //     2: getstatic       com/fusepowered/a1/ApplifierImpact.webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
        //     5: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData.getData:()Lorg/json/JSONObject;
        //     8: astore_2       
        //     9: iconst_0       
        //    10: istore_3       
        //    11: aload_2        
        //    12: ifnull          82
        //    15: getstatic       com/fusepowered/a1/ApplifierImpact.webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
        //    18: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData.getData:()Lorg/json/JSONObject;
        //    21: ldc_w           "data"
        //    24: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //    27: istore          4
        //    29: iconst_0       
        //    30: istore_3       
        //    31: iload           4
        //    33: ifeq            82
        //    36: getstatic       com/fusepowered/a1/ApplifierImpact.webdata:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
        //    39: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData.getData:()Lorg/json/JSONObject;
        //    42: ldc_w           "data"
        //    45: invokevirtual   org/json/JSONObject.getJSONObject:(Ljava/lang/String;)Lorg/json/JSONObject;
        //    48: astore          9
        //    50: aload           9
        //    52: astore          6
        //    54: iload_3        
        //    55: ifne            82
        //    58: aload           6
        //    60: ldc_w           "sdkIsCurrent"
        //    63: invokevirtual   org/json/JSONObject.has:(Ljava/lang/String;)Z
        //    66: ifeq            82
        //    69: aload           6
        //    71: ldc_w           "sdkIsCurrent"
        //    74: invokevirtual   org/json/JSONObject.getBoolean:(Ljava/lang/String;)Z
        //    77: istore          8
        //    79: iload           8
        //    81: istore_1       
        //    82: iload_3        
        //    83: ifne            161
        //    86: iload_1        
        //    87: ifne            161
        //    90: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
        //    93: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.isDebuggable:(Landroid/content/Context;)Z
        //    96: ifeq            161
        //    99: aload_0        
        //   100: new             Landroid/app/AlertDialog$Builder;
        //   103: dup            
        //   104: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
        //   107: invokespecial   android/app/AlertDialog$Builder.<init>:(Landroid/content/Context;)V
        //   110: invokevirtual   android/app/AlertDialog$Builder.create:()Landroid/app/AlertDialog;
        //   113: putfield        com/fusepowered/a1/ApplifierImpact._alertDialog:Landroid/app/AlertDialog;
        //   116: aload_0        
        //   117: getfield        com/fusepowered/a1/ApplifierImpact._alertDialog:Landroid/app/AlertDialog;
        //   120: ldc_w           "Applifier Impact"
        //   123: invokevirtual   android/app/AlertDialog.setTitle:(Ljava/lang/CharSequence;)V
        //   126: aload_0        
        //   127: getfield        com/fusepowered/a1/ApplifierImpact._alertDialog:Landroid/app/AlertDialog;
        //   130: ldc_w           "You are not running the latest version of Applifier Impact android. Please update your version (this dialog won't appear in release builds)."
        //   133: invokevirtual   android/app/AlertDialog.setMessage:(Ljava/lang/CharSequence;)V
        //   136: aload_0        
        //   137: getfield        com/fusepowered/a1/ApplifierImpact._alertDialog:Landroid/app/AlertDialog;
        //   140: ldc_w           "OK"
        //   143: new             Lcom/fusepowered/a1/ApplifierImpact$1;
        //   146: dup            
        //   147: aload_0        
        //   148: invokespecial   com/fusepowered/a1/ApplifierImpact$1.<init>:(Lcom/fusepowered/a1/ApplifierImpact;)V
        //   151: invokevirtual   android/app/AlertDialog.setButton:(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
        //   154: aload_0        
        //   155: getfield        com/fusepowered/a1/ApplifierImpact._alertDialog:Landroid/app/AlertDialog;
        //   158: invokevirtual   android/app/AlertDialog.show:()V
        //   161: aload_0        
        //   162: invokespecial   com/fusepowered/a1/ApplifierImpact.setup:()V
        //   165: return         
        //   166: astore          5
        //   168: iconst_1       
        //   169: istore_3       
        //   170: aconst_null    
        //   171: astore          6
        //   173: goto            54
        //   176: astore          7
        //   178: iconst_1       
        //   179: istore_3       
        //   180: goto            82
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  36     50     166    176    Ljava/lang/Exception;
        //  69     79     176    183    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0082:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    @Override
    public void onWebDataFailed() {
        if (this._impactListener != null) {
            this._impactListener.onCampaignsFetchFailed();
        }
    }
    
    public void setDefaultRewardItemAsRewardItem() {
        if (this.canShowImpact() && ApplifierImpact.webdata != null && ApplifierImpact.webdata.getDefaultRewardItem() != null) {
            ApplifierImpact.webdata.setCurrentRewardItem(ApplifierImpact.webdata.getDefaultRewardItem());
        }
    }
    
    public void setImpactListener(final IApplifierImpactListener impactListener) {
        this._impactListener = impactListener;
    }
    
    public boolean setRewardItemKey(final String s) {
        if (this.canShowImpact()) {
            final ApplifierImpactRewardItem rewardItemByKey = ApplifierImpact.webdata.getRewardItemByKey(s);
            if (rewardItemByKey != null) {
                ApplifierImpact.webdata.setCurrentRewardItem(rewardItemByKey);
                return true;
            }
        }
        return false;
    }
    
    public boolean showImpact() {
        if (this.canShowImpact()) {
            this._openRequestFromDeveloper = true;
            this._showingImpact = true;
            this.startImpactFullscreenActivity();
            return this._showingImpact;
        }
        return false;
    }
    
    public boolean showImpact(final Map<String, Object> impact_DEVELOPER_OPTIONS) {
        if (this.canShowImpact()) {
            ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS = impact_DEVELOPER_OPTIONS;
            if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS != null) {
                if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("noOfferScreen") && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("noOfferScreen").equals(true) && ApplifierImpact.webdata.getViewableVideoPlanCampaigns().size() > 0) {
                    ApplifierImpactProperties.SELECTED_CAMPAIGN = ApplifierImpact.webdata.getViewableVideoPlanCampaigns().get(0);
                }
                if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("sid") && ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("sid") != null) {
                    ApplifierImpactProperties.GAMER_SID = new StringBuilder().append(ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("sid")).toString();
                }
            }
            return this.showImpact();
        }
        return false;
    }
    
    public void stopAll() {
        ApplifierImpactUtils.Log("stopAll()", this);
        if (ApplifierImpact.mainview != null && ApplifierImpact.mainview.videoplayerview != null) {
            ApplifierImpact.mainview.videoplayerview.clearVideoPlayer();
        }
        if (ApplifierImpact.mainview != null && ApplifierImpact.mainview.webview != null) {
            ApplifierImpact.mainview.webview.clearWebView();
        }
        ApplifierImpactDownloader.stopAllDownloads();
        ApplifierImpactDownloader.clearData();
        ApplifierImpact.cachemanager.setDownloadListener(null);
        ApplifierImpact.cachemanager.clearData();
        ApplifierImpact.webdata.stopAllRequests();
        ApplifierImpact.webdata.setWebDataListener(null);
        ApplifierImpact.webdata.clearData();
        ApplifierImpactProperties.BASE_ACTIVITY = null;
        ApplifierImpactProperties.CURRENT_ACTIVITY = null;
        ApplifierImpactProperties.SELECTED_CAMPAIGN = null;
    }
    
    private class ApplifierImpactCloseRunner implements Runnable
    {
        JSONObject _data;
        
        private ApplifierImpactCloseRunner() {
            super();
            this._data = null;
        }
        
        @Override
        public void run() {
            if (!ApplifierImpactProperties.CURRENT_ACTIVITY.getClass().getName().equals("com.fusepowered.a1.A1InterstitialActivity")) {
                return;
            }
            Boolean obj = true;
            final JSONObject data = new JSONObject();
            while (true) {
                try {
                    data.put("action", (Object)"close");
                    ApplifierImpactUtils.Log("dataOk: " + obj, this);
                    if (obj) {
                        this._data = data;
                        ApplifierImpact.mainview.webview.setWebViewCurrentView("none", data);
                        new Timer().schedule(new TimerTask() {
                            @Override
                            public void run() {
                                ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new Runnable() {
                                    @Override
                                    public void run() {
                                        ApplifierImpact.mainview.closeImpact(ApplifierImpactCloseRunner.this._data);
                                        ApplifierImpactProperties.CURRENT_ACTIVITY.finish();
                                        if (ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS == null || !ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.containsKey("openAnimated") || ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS.get("openAnimated").equals(false)) {
                                            ApplifierImpactProperties.CURRENT_ACTIVITY.overridePendingTransition(0, 0);
                                        }
                                        ApplifierImpactProperties.IMPACT_DEVELOPER_OPTIONS = null;
                                        ApplifierImpact.access$0(ApplifierImpact.this, false);
                                        if (ApplifierImpact.this._impactListener != null) {
                                            ApplifierImpact.this._impactListener.onImpactClose();
                                        }
                                    }
                                });
                            }
                        }, 250L);
                    }
                }
                catch (Exception ex) {
                    obj = false;
                    continue;
                }
                break;
            }
        }
    }
    
    private class ApplifierImpactPlayVideoRunner implements Runnable
    {
        @Override
        public void run() {
            ApplifierImpactUtils.Log("Running videoplayrunner", this);
            if (ApplifierImpactProperties.SELECTED_CAMPAIGN != null) {
                ApplifierImpactUtils.Log("Selected campaign found", this);
                final JSONObject jsonObject = new JSONObject();
                try {
                    jsonObject.put("textKey", (Object)"buffering");
                    ApplifierImpact.mainview.webview.sendNativeEventToWebApp("showSpinner", jsonObject);
                    ApplifierImpact.this.createPauseScreenTimer();
                    String str = String.valueOf(ApplifierImpactUtils.getCacheDirectory()) + "/" + ApplifierImpactProperties.SELECTED_CAMPAIGN.getVideoFilename();
                    if (!ApplifierImpactUtils.isFileInCache(ApplifierImpactProperties.SELECTED_CAMPAIGN.getVideoFilename())) {
                        str = ApplifierImpactProperties.SELECTED_CAMPAIGN.getVideoStreamUrl();
                    }
                    ApplifierImpact.mainview.setViewState(ApplifierImpactMainView.ApplifierImpactMainViewState.VideoPlayer);
                    ApplifierImpactUtils.Log("Start videoplayback with: " + str, this);
                    ApplifierImpact.mainview.videoplayerview.playVideo(str);
                    return;
                }
                catch (Exception ex) {
                    ApplifierImpactUtils.Log("Couldn't create data JSON", this);
                    return;
                }
            }
            ApplifierImpactUtils.Log("Campaign is null", this);
        }
    }
}
