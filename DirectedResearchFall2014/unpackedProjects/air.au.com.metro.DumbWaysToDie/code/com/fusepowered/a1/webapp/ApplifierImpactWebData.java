package com.fusepowered.a1.webapp;

import com.fusepowered.a1.campaign.*;
import com.fusepowered.a1.properties.*;
import com.fusepowered.a1.*;
import org.json.*;
import java.util.*;
import android.content.*;
import android.annotation.*;
import android.os.*;
import java.io.*;
import java.net.*;

public class ApplifierImpactWebData
{
    private JSONObject _campaignJson;
    private ArrayList<ApplifierImpactCampaign> _campaigns;
    private ApplifierImpactUrlLoader _currentLoader;
    private ApplifierImpactRewardItem _currentRewardItem;
    private ApplifierImpactRewardItem _defaultRewardItem;
    private ArrayList<ApplifierImpactUrlLoader> _failedUrlLoaders;
    private boolean _isLoading;
    private IApplifierImpactWebDataListener _listener;
    private ArrayList<ApplifierImpactRewardItem> _rewardItems;
    private int _totalLoadersCreated;
    private int _totalLoadersHaveRun;
    private int _totalUrlsSent;
    private ArrayList<ApplifierImpactUrlLoader> _urlLoaders;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType() {
        final int[] $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType = ApplifierImpactWebData.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType;
        if ($switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType != null) {
            return $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType;
        }
        final int[] $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType2 = new int[ApplifierImpactRequestType.values().length];
        while (true) {
            try {
                $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType2[ApplifierImpactRequestType.Analytics.ordinal()] = 1;
                try {
                    $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType2[ApplifierImpactRequestType.Unsent.ordinal()] = 4;
                    try {
                        $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType2[ApplifierImpactRequestType.VideoPlan.ordinal()] = 2;
                        try {
                            $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType2[ApplifierImpactRequestType.VideoViewed.ordinal()] = 3;
                            return ApplifierImpactWebData.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType = $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType2;
                        }
                        catch (NoSuchFieldError noSuchFieldError) {}
                    }
                    catch (NoSuchFieldError noSuchFieldError2) {}
                }
                catch (NoSuchFieldError noSuchFieldError3) {}
            }
            catch (NoSuchFieldError noSuchFieldError4) {
                continue;
            }
            break;
        }
    }
    
    public ApplifierImpactWebData() {
        super();
        this._campaignJson = null;
        this._campaigns = null;
        this._listener = null;
        this._urlLoaders = null;
        this._failedUrlLoaders = null;
        this._currentLoader = null;
        this._defaultRewardItem = null;
        this._rewardItems = null;
        this._currentRewardItem = null;
        this._totalUrlsSent = 0;
        this._totalLoadersCreated = 0;
        this._totalLoadersHaveRun = 0;
        this._isLoading = false;
    }
    
    static /* synthetic */ void access$3(final ApplifierImpactWebData applifierImpactWebData, final int totalLoadersCreated) {
        applifierImpactWebData._totalLoadersCreated = totalLoadersCreated;
    }
    
    private void addLoader(final ApplifierImpactUrlLoader e) {
        if (this._urlLoaders == null) {
            this._urlLoaders = new ArrayList<ApplifierImpactUrlLoader>();
        }
        this._urlLoaders.add(e);
    }
    
    private void campaignDataFailed() {
        if (this._listener != null) {
            this._listener.onWebDataFailed();
        }
    }
    
    private void campaignDataReceived(final String str) {
        Label_0653: {
            Boolean b;
            JSONObject jsonObject = null;
            while (true) {
                int n = 0;
                b = true;
            Label_0391:
                while (true) {
                    StackTraceElement[] stackTrace = null;
                    Label_0658: {
                        try {
                            this._campaignJson = new JSONObject(str);
                            if (!this._campaignJson.has("data")) {
                                break Label_0653;
                            }
                            try {
                                jsonObject = this._campaignJson.getJSONObject("data");
                                if (!jsonObject.has("webViewUrl")) {
                                    b = false;
                                }
                                if (!jsonObject.has("analyticsUrl")) {
                                    b = false;
                                }
                                if (!jsonObject.has("impactUrl")) {
                                    b = false;
                                }
                                if (!jsonObject.has("gamerId")) {
                                    b = false;
                                }
                                if (!jsonObject.has("campaigns")) {
                                    b = false;
                                }
                                if (!jsonObject.has("item")) {
                                    b = false;
                                }
                                ApplifierImpactProperties.WEBVIEW_BASE_URL = jsonObject.getString("webViewUrl");
                                ApplifierImpactProperties.ANALYTICS_BASE_URL = jsonObject.getString("analyticsUrl");
                                ApplifierImpactProperties.IMPACT_BASE_URL = jsonObject.getString("impactUrl");
                                ApplifierImpactProperties.IMPACT_GAMER_ID = jsonObject.getString("gamerId");
                                if (jsonObject.has("allowSkipVideoInSeconds")) {
                                    ApplifierImpactProperties.ALLOW_VIDEO_SKIP = jsonObject.getInt("allowSkipVideoInSeconds");
                                }
                                if (b) {
                                    final JSONArray jsonArray = jsonObject.getJSONArray("campaigns");
                                    if (jsonArray != null) {
                                        this._campaigns = this.deserializeCampaigns(jsonArray);
                                    }
                                }
                                if (this._campaigns == null) {
                                    this._campaigns = new ArrayList<ApplifierImpactCampaign>();
                                }
                                ApplifierImpactUtils.Log("Parsed total of " + this._campaigns.size() + " campaigns", this);
                                if (!b) {
                                    break;
                                }
                                this._defaultRewardItem = new ApplifierImpactRewardItem(jsonObject.getJSONObject("item"));
                                if (!this._defaultRewardItem.hasValidData()) {
                                    this.campaignDataFailed();
                                    return;
                                }
                            }
                            catch (Exception ex2) {
                                ApplifierImpactUtils.Log("Malformed data JSON", this);
                                jsonObject = null;
                            }
                        }
                        catch (Exception ex) {
                            ApplifierImpactUtils.Log("Malformed JSON: " + ex.getMessage(), this);
                            if (ex.getStackTrace() != null) {
                                stackTrace = ex.getStackTrace();
                                final int length = stackTrace.length;
                                if (n < length) {
                                    break Label_0658;
                                }
                            }
                            this.campaignDataFailed();
                            return;
                        }
                        break Label_0391;
                    }
                    ApplifierImpactUtils.Log("Malformed JSON: " + stackTrace[n].toString(), this);
                    ++n;
                    continue;
                }
                ApplifierImpactUtils.Log("Parsed default rewardItem: " + this._defaultRewardItem.getName() + ", " + this._defaultRewardItem.getKey(), this);
                this._currentRewardItem = this._defaultRewardItem;
                break;
            }
            if (jsonObject.has("disableBackButtonForSeconds")) {
                ApplifierImpactProperties.ALLOW_BACK_BUTTON_SKIP = jsonObject.getInt("disableBackButtonForSeconds");
            }
            if (b && jsonObject.has("items")) {
                final JSONArray jsonArray2 = jsonObject.getJSONArray("items");
                for (int i = 0; i < jsonArray2.length(); ++i) {
                    final ApplifierImpactRewardItem e = new ApplifierImpactRewardItem(jsonArray2.getJSONObject(i));
                    if (e.hasValidData()) {
                        if (this._rewardItems == null) {
                            this._rewardItems = new ArrayList<ApplifierImpactRewardItem>();
                        }
                        this._rewardItems.add(e);
                    }
                }
                ApplifierImpactUtils.Log("Parsed total of " + this._rewardItems.size() + " reward items", this);
            }
            if (this._listener != null && b && this._campaigns != null && this._campaigns.size() > 0) {
                ApplifierImpactUtils.Log("WebDataCompleted: " + str, this);
                this._listener.onWebDataCompleted();
                return;
            }
            this.campaignDataFailed();
            return;
        }
        this.campaignDataFailed();
    }
    
    private void checkFailedUrls() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/File;
        //     3: dup            
        //     4: new             Ljava/lang/StringBuilder;
        //     7: dup            
        //     8: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.getCacheDirectory:()Ljava/lang/String;
        //    11: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //    14: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    17: ldc_w           "/"
        //    20: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    23: ldc_w           "pendingrequests.dat"
        //    26: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    29: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    32: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //    35: astore_1       
        //    36: aload_1        
        //    37: invokevirtual   java/io/File.exists:()Z
        //    40: ifeq            103
        //    43: aload_1        
        //    44: iconst_1       
        //    45: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.readFile:(Ljava/io/File;Z)Ljava/lang/String;
        //    48: astore_2       
        //    49: new             Lorg/json/JSONObject;
        //    52: dup            
        //    53: aload_2        
        //    54: invokespecial   org/json/JSONObject.<init>:(Ljava/lang/String;)V
        //    57: astore_3       
        //    58: aload_3        
        //    59: ldc             "data"
        //    61: invokevirtual   org/json/JSONObject.getJSONArray:(Ljava/lang/String;)Lorg/json/JSONArray;
        //    64: astore          5
        //    66: aload           5
        //    68: ifnull          209
        //    71: aload           5
        //    73: invokevirtual   org/json/JSONArray.length:()I
        //    76: ifle            209
        //    79: iconst_0       
        //    80: istore          6
        //    82: aload           5
        //    84: invokevirtual   org/json/JSONArray.length:()I
        //    87: istore          7
        //    89: iload           6
        //    91: iload           7
        //    93: if_icmplt       108
        //    96: aload_1        
        //    97: invokevirtual   java/io/File.toString:()Ljava/lang/String;
        //   100: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.removeFile:(Ljava/lang/String;)V
        //   103: aload_0        
        //   104: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebData.startNextLoader:()V
        //   107: return         
        //   108: aload           5
        //   110: iload           6
        //   112: invokevirtual   org/json/JSONArray.getJSONObject:(I)Lorg/json/JSONObject;
        //   115: astore          8
        //   117: new             Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator;
        //   120: dup            
        //   121: aload_0        
        //   122: aload           8
        //   124: ldc_w           "url"
        //   127: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   130: aload           8
        //   132: ldc_w           "body"
        //   135: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   138: aload           8
        //   140: ldc_w           "methodType"
        //   143: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   146: aload           8
        //   148: ldc_w           "requestType"
        //   151: invokevirtual   org/json/JSONObject.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   154: invokestatic    com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType.getValueOf:(Ljava/lang/String;)Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
        //   157: iconst_1       
        //   158: aload           8
        //   160: ldc_w           "retries"
        //   163: invokevirtual   org/json/JSONObject.getInt:(Ljava/lang/String;)I
        //   166: iadd           
        //   167: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoaderCreator.<init>:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;I)V
        //   170: astore          9
        //   172: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
        //   175: ifnull          186
        //   178: getstatic       com/fusepowered/a1/properties/ApplifierImpactProperties.CURRENT_ACTIVITY:Landroid/app/Activity;
        //   181: aload           9
        //   183: invokevirtual   android/app/Activity.runOnUiThread:(Ljava/lang/Runnable;)V
        //   186: iinc            6, 1
        //   189: goto            82
        //   192: astore          10
        //   194: ldc_w           "Problems while sending some of the failed urls."
        //   197: aload_0        
        //   198: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   201: goto            96
        //   204: astore          4
        //   206: goto            194
        //   209: goto            96
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  49     58     192    194    Ljava/lang/Exception;
        //  58     66     204    209    Ljava/lang/Exception;
        //  71     79     204    209    Ljava/lang/Exception;
        //  82     89     204    209    Ljava/lang/Exception;
        //  108    186    204    209    Ljava/lang/Exception;
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
    
    private ArrayList<ApplifierImpactCampaign> deserializeCampaigns(final JSONArray p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnull          85
        //     4: aload_1        
        //     5: invokevirtual   org/json/JSONArray.length:()I
        //     8: ifle            85
        //    11: new             Ljava/util/ArrayList;
        //    14: dup            
        //    15: invokespecial   java/util/ArrayList.<init>:()V
        //    18: astore_2       
        //    19: iconst_0       
        //    20: istore_3       
        //    21: iload_3        
        //    22: aload_1        
        //    23: invokevirtual   org/json/JSONArray.length:()I
        //    26: if_icmplt       31
        //    29: aload_2        
        //    30: areturn        
        //    31: new             Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;
        //    34: dup            
        //    35: aload_1        
        //    36: iload_3        
        //    37: invokevirtual   org/json/JSONArray.getJSONObject:(I)Lorg/json/JSONObject;
        //    40: invokespecial   com/fusepowered/a1/campaign/ApplifierImpactCampaign.<init>:(Lorg/json/JSONObject;)V
        //    43: astore          4
        //    45: aload           4
        //    47: invokevirtual   com/fusepowered/a1/campaign/ApplifierImpactCampaign.hasValidData:()Z
        //    50: ifeq            92
        //    53: ldc_w           "Adding campaign to cache"
        //    56: aload_0        
        //    57: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //    60: aload_2        
        //    61: aload           4
        //    63: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //    66: pop            
        //    67: iinc            3, 1
        //    70: goto            21
        //    73: astore          7
        //    75: ldc_w           "Problem with the campaign, skipping."
        //    78: aload_0        
        //    79: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //    82: goto            67
        //    85: aconst_null    
        //    86: areturn        
        //    87: astore          5
        //    89: goto            75
        //    92: goto            67
        //    Signature:
        //  (Lorg/json/JSONArray;)Ljava/util/ArrayList<Lcom/fusepowered/a1/campaign/ApplifierImpactCampaign;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  31     45     73     75     Ljava/lang/Exception;
        //  45     67     87     92     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0067:
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
    
    private void startNextLoader() {
        if (this._urlLoaders != null && this._urlLoaders.size() > 0 && !this._isLoading) {
            ApplifierImpactUtils.Log("Starting next URL loader", this);
            this._isLoading = true;
            this._currentLoader = (ApplifierImpactUrlLoader)this._urlLoaders.remove(0).execute((Object[])new String[0]);
        }
    }
    
    private void urlLoadCompleted(final ApplifierImpactUrlLoader applifierImpactUrlLoader) {
        if (applifierImpactUrlLoader != null && applifierImpactUrlLoader.getRequestType() != null) {
            switch ($SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[applifierImpactUrlLoader.getRequestType().ordinal()]) {
                case 2: {
                    this.campaignDataReceived(applifierImpactUrlLoader.getData());
                    break;
                }
            }
            applifierImpactUrlLoader.clear();
        }
        else {
            ApplifierImpactUtils.Log("Got broken urlLoader!", this);
        }
        ++this._totalUrlsSent;
        ApplifierImpactUtils.Log("Total urls sent: " + this._totalUrlsSent, this);
        this._isLoading = false;
        this.startNextLoader();
    }
    
    private void urlLoadFailed(final ApplifierImpactUrlLoader applifierImpactUrlLoader) {
        if (applifierImpactUrlLoader != null && applifierImpactUrlLoader.getRequestType() != null) {
            switch ($SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierImpactRequestType()[applifierImpactUrlLoader.getRequestType().ordinal()]) {
                case 1:
                case 3:
                case 4: {
                    this.writeFailedUrl(applifierImpactUrlLoader);
                    break;
                }
                case 2: {
                    this.campaignDataFailed();
                    break;
                }
            }
            applifierImpactUrlLoader.clear();
        }
        else {
            ApplifierImpactUtils.Log("Got broken urlLoader!", this);
        }
        this._isLoading = false;
        this.startNextLoader();
    }
    
    private void writeFailedUrl(final ApplifierImpactUrlLoader p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnonnull       5
        //     4: return         
        //     5: aload_0        
        //     6: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //     9: ifnonnull       23
        //    12: aload_0        
        //    13: new             Ljava/util/ArrayList;
        //    16: dup            
        //    17: invokespecial   java/util/ArrayList.<init>:()V
        //    20: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //    23: aload_0        
        //    24: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //    27: aload_1        
        //    28: invokevirtual   java/util/ArrayList.contains:(Ljava/lang/Object;)Z
        //    31: ifne            43
        //    34: aload_0        
        //    35: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //    38: aload_1        
        //    39: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //    42: pop            
        //    43: new             Lorg/json/JSONObject;
        //    46: dup            
        //    47: invokespecial   org/json/JSONObject.<init>:()V
        //    50: astore_2       
        //    51: new             Lorg/json/JSONArray;
        //    54: dup            
        //    55: invokespecial   org/json/JSONArray.<init>:()V
        //    58: astore_3       
        //    59: aload_0        
        //    60: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //    63: invokevirtual   java/util/ArrayList.iterator:()Ljava/util/Iterator;
        //    66: astore          6
        //    68: aconst_null    
        //    69: astore          7
        //    71: aload           6
        //    73: invokeinterface java/util/Iterator.hasNext:()Z
        //    78: ifne            156
        //    81: aload_2        
        //    82: ldc             "data"
        //    84: aload_3        
        //    85: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //    88: pop            
        //    89: aload_0        
        //    90: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //    93: ifnull          4
        //    96: aload_0        
        //    97: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData._failedUrlLoaders:Ljava/util/ArrayList;
        //   100: invokevirtual   java/util/ArrayList.size:()I
        //   103: ifle            4
        //   106: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.canUseExternalStorage:()Z
        //   109: ifeq            4
        //   112: new             Ljava/io/File;
        //   115: dup            
        //   116: new             Ljava/lang/StringBuilder;
        //   119: dup            
        //   120: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.getCacheDirectory:()Ljava/lang/String;
        //   123: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //   126: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   129: ldc_w           "/"
        //   132: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   135: ldc_w           "pendingrequests.dat"
        //   138: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   141: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   144: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   147: aload_2        
        //   148: invokevirtual   org/json/JSONObject.toString:()Ljava/lang/String;
        //   151: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.writeFile:(Ljava/io/File;Ljava/lang/String;)Z
        //   154: pop            
        //   155: return         
        //   156: aload           6
        //   158: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   163: checkcast       Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader;
        //   166: astore          10
        //   168: new             Lorg/json/JSONObject;
        //   171: dup            
        //   172: invokespecial   org/json/JSONObject.<init>:()V
        //   175: astore          11
        //   177: aload           11
        //   179: ldc_w           "url"
        //   182: aload           10
        //   184: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.getBaseUrl:()Ljava/lang/String;
        //   187: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   190: pop            
        //   191: aload           11
        //   193: ldc_w           "requestType"
        //   196: aload           10
        //   198: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.getRequestType:()Lcom/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactRequestType;
        //   201: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   204: pop            
        //   205: aload           11
        //   207: ldc_w           "methodType"
        //   210: aload           10
        //   212: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.getHTTPMethod:()Ljava/lang/String;
        //   215: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   218: pop            
        //   219: aload           11
        //   221: ldc_w           "body"
        //   224: aload           10
        //   226: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.getQueryParams:()Ljava/lang/String;
        //   229: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
        //   232: pop            
        //   233: aload           11
        //   235: ldc_w           "retries"
        //   238: aload           10
        //   240: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.getRetries:()I
        //   243: invokevirtual   org/json/JSONObject.put:(Ljava/lang/String;I)Lorg/json/JSONObject;
        //   246: pop            
        //   247: aload_3        
        //   248: aload           11
        //   250: invokevirtual   org/json/JSONArray.put:(Ljava/lang/Object;)Lorg/json/JSONArray;
        //   253: pop            
        //   254: aload           11
        //   256: astore          7
        //   258: goto            71
        //   261: astore          4
        //   263: ldc_w           "Error collecting failed urls"
        //   266: aload_0        
        //   267: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
        //   270: goto            89
        //   273: astore          8
        //   275: aload           7
        //   277: pop            
        //   278: goto            263
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  59     68     261    263    Ljava/lang/Exception;
        //  71     89     273    281    Ljava/lang/Exception;
        //  156    177    273    281    Ljava/lang/Exception;
        //  177    254    261    263    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0071:
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
    
    public void clearData() {
        if (this._campaigns != null) {
            this._campaigns.clear();
            this._campaigns = null;
        }
        if (this._defaultRewardItem != null) {
            this._defaultRewardItem.clearData();
            this._defaultRewardItem = null;
        }
        if (this._rewardItems != null) {
            final Iterator<ApplifierImpactRewardItem> iterator = this._rewardItems.iterator();
            while (iterator.hasNext()) {
                iterator.next().clearData();
            }
            this._rewardItems.clear();
            this._rewardItems = null;
        }
        if (this._currentRewardItem != null) {
            this._currentRewardItem.clearData();
            this._currentRewardItem = null;
        }
        this._campaignJson = null;
    }
    
    public ApplifierImpactCampaign getCampaignById(final String anObject) {
        if (anObject != null && this._campaigns != null) {
            for (int i = 0; i < this._campaigns.size(); ++i) {
                if (this._campaigns.get(i) != null && this._campaigns.get(i).getCampaignId() != null && this._campaigns.get(i).getCampaignId().equals(anObject)) {
                    return this._campaigns.get(i);
                }
            }
        }
        return null;
    }
    
    public String getCurrentRewardItemKey() {
        if (this._currentRewardItem != null) {
            return this._currentRewardItem.getKey();
        }
        return null;
    }
    
    public JSONObject getData() {
        return this._campaignJson;
    }
    
    public ApplifierImpactRewardItem getDefaultRewardItem() {
        return this._defaultRewardItem;
    }
    
    public ApplifierImpactRewardItem getRewardItemByKey(final String s) {
        if (this._rewardItems != null) {
            for (final ApplifierImpactRewardItem applifierImpactRewardItem : this._rewardItems) {
                if (applifierImpactRewardItem.getKey().equals(s)) {
                    return applifierImpactRewardItem;
                }
            }
        }
        if (this._defaultRewardItem != null && this._defaultRewardItem.getKey().equals(s)) {
            return this._defaultRewardItem;
        }
        return null;
    }
    
    public ArrayList<ApplifierImpactRewardItem> getRewardItems() {
        return this._rewardItems;
    }
    
    public String getVideoPlan() {
        if (this._campaignJson != null) {
            return this._campaignJson.toString();
        }
        return null;
    }
    
    public ArrayList<ApplifierImpactCampaign> getVideoPlanCampaigns() {
        return this._campaigns;
    }
    
    public ArrayList<ApplifierImpactCampaign> getViewableVideoPlanCampaigns() {
        final ArrayList<ApplifierImpactCampaign> campaigns = this._campaigns;
        ArrayList<ApplifierImpactCampaign> list = null;
        if (campaigns != null) {
            list = new ArrayList<ApplifierImpactCampaign>();
            for (int i = 0; i < this._campaigns.size(); ++i) {
                final ApplifierImpactCampaign e = this._campaigns.get(i);
                if (e != null && !e.getCampaignStatus().equals(ApplifierImpactCampaign.ApplifierImpactCampaignStatus.VIEWED)) {
                    list.add(e);
                }
            }
        }
        return list;
    }
    
    public boolean initCampaigns() {
        if (ApplifierImpactUtils.isDebuggable((Context)ApplifierImpactProperties.BASE_ACTIVITY) && ApplifierImpactProperties.TEST_DATA != null) {
            this.campaignDataReceived(ApplifierImpactProperties.TEST_DATA);
            return true;
        }
        final String[] split = ApplifierImpactProperties.getCampaignQueryUrl().split("\\?");
        final ApplifierImpactUrlLoaderCreator applifierImpactUrlLoaderCreator = new ApplifierImpactUrlLoaderCreator(split[0], split[1], "GET", ApplifierImpactRequestType.VideoPlan, 0);
        if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
            ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)applifierImpactUrlLoaderCreator);
        }
        this.checkFailedUrls();
        return true;
    }
    
    public void sendAnalyticsRequest(final String s, final ApplifierImpactCampaign applifierImpactCampaign) {
        if (applifierImpactCampaign != null) {
            final String format = String.format("%s", ApplifierImpactProperties.ANALYTICS_BASE_URL);
            String s2 = String.format("%s&%s=%s", String.format("%s&%s=%s", String.format("%s&%s=%s", String.format("%s&%s=%s", String.format("%s=%s", "gameId", ApplifierImpactProperties.IMPACT_GAME_ID), "type", s), "trackingId", ApplifierImpactProperties.IMPACT_GAMER_ID), "providerId", applifierImpactCampaign.getCampaignId()), "rewardItem", this.getCurrentRewardItemKey());
            if (ApplifierImpactProperties.GAMER_SID != null) {
                s2 = String.format("%s&%s=%s", s2, "sid", ApplifierImpactProperties.GAMER_SID);
            }
            final ApplifierImpactUrlLoaderCreator applifierImpactUrlLoaderCreator = new ApplifierImpactUrlLoaderCreator(format, s2, "GET", ApplifierImpactRequestType.Analytics, 0);
            if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
                ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)applifierImpactUrlLoaderCreator);
            }
        }
    }
    
    public boolean sendCampaignViewProgress(final ApplifierImpactCampaign applifierImpactCampaign, final ApplifierVideoPosition applifierVideoPosition) {
        if (applifierImpactCampaign == null) {
            return false;
        }
        ApplifierImpactUtils.Log("VP: " + applifierVideoPosition.toString() + ", " + ApplifierImpactProperties.IMPACT_GAMER_ID, this);
        boolean b = false;
        if (applifierVideoPosition != null) {
            final String impact_GAMER_ID = ApplifierImpactProperties.IMPACT_GAMER_ID;
            b = false;
            if (impact_GAMER_ID != null) {
                final String format = String.format("%s/%s", String.format("%s%s/video/%s/%s", String.format("%s%s", ApplifierImpactProperties.IMPACT_BASE_URL, "gamers/"), ApplifierImpactProperties.IMPACT_GAMER_ID, applifierVideoPosition.toString(), applifierImpactCampaign.getCampaignId()), ApplifierImpactProperties.IMPACT_GAME_ID);
                String s = String.format("%s=%s", "rewardItem", this.getCurrentRewardItemKey());
                if (ApplifierImpactProperties.GAMER_SID != null) {
                    s = String.format("%s&%s=%s", s, "sid", ApplifierImpactProperties.GAMER_SID);
                }
                final ApplifierImpactUrlLoaderCreator applifierImpactUrlLoaderCreator = new ApplifierImpactUrlLoaderCreator(format, s, "POST", ApplifierImpactRequestType.VideoViewed, 0);
                if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
                    ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)applifierImpactUrlLoaderCreator);
                }
                b = true;
            }
        }
        return b;
    }
    
    public void setCurrentRewardItem(final ApplifierImpactRewardItem obj) {
        if (this._currentRewardItem != null && !this._currentRewardItem.equals(obj)) {
            this._currentRewardItem = obj;
            return;
        }
        ApplifierImpactUtils.Log("Problem setting current reward item: " + this._currentRewardItem + ", " + obj, this);
    }
    
    public void setWebDataListener(final IApplifierImpactWebDataListener listener) {
        this._listener = listener;
    }
    
    public void stopAllRequests() {
        if (this._urlLoaders != null) {
            this._urlLoaders.clear();
            this._urlLoaders = null;
        }
        if (this._failedUrlLoaders != null) {
            this._failedUrlLoaders.clear();
            this._failedUrlLoaders = null;
        }
        if (this._currentLoader != null) {
            this._currentLoader.cancel(true);
            this._currentLoader = null;
        }
    }
    
    private class ApplifierImpactCancelUrlLoaderRunner implements Runnable
    {
        private ApplifierImpactUrlLoader _loader;
        
        public ApplifierImpactCancelUrlLoaderRunner(final ApplifierImpactUrlLoader loader) {
            super();
            this._loader = null;
            this._loader = loader;
        }
        
        @Override
        public void run() {
            try {
                this._loader.cancel(true);
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Cancelling urlLoader got exception: " + ex.getMessage(), this);
            }
        }
    }
    
    private enum ApplifierImpactRequestType
    {
        Analytics("Analytics", 0), 
        Unsent("Unsent", 3), 
        VideoPlan("VideoPlan", 1), 
        VideoViewed("VideoViewed", 2);
        
        public static ApplifierImpactRequestType getValueOf(final String s) {
            if (ApplifierImpactRequestType.VideoPlan.toString().equals(s.toLowerCase())) {
                return ApplifierImpactRequestType.VideoPlan;
            }
            if (ApplifierImpactRequestType.VideoViewed.toString().equals(s.toLowerCase())) {
                return ApplifierImpactRequestType.VideoViewed;
            }
            if (ApplifierImpactRequestType.Unsent.toString().equals(s.toLowerCase())) {
                return ApplifierImpactRequestType.Unsent;
            }
            return null;
        }
        
        @SuppressLint({ "DefaultLocale" })
        @Override
        public String toString() {
            return this.name().toString().toLowerCase();
        }
    }
    
    private class ApplifierImpactUrlLoader extends AsyncTask<String, Integer, String>
    {
        private String _baseUrl;
        private BufferedInputStream _binput;
        private HttpURLConnection _connection;
        private Boolean _done;
        private int _downloadLength;
        private String _finalUrl;
        private String _httpMethod;
        private InputStream _input;
        private String _queryParams;
        private ApplifierImpactRequestType _requestType;
        private int _retries;
        private URL _url;
        private String _urlData;
        
        public ApplifierImpactUrlLoader(final String s, final String s2, final String httpMethod, final ApplifierImpactRequestType requestType, final int retries) {
            super();
            this._url = null;
            this._connection = null;
            this._downloadLength = 0;
            this._input = null;
            this._binput = null;
            this._urlData = "";
            this._requestType = null;
            this._finalUrl = null;
            this._retries = 0;
            this._httpMethod = "GET";
            this._queryParams = null;
            this._baseUrl = null;
            this._done = false;
            while (true) {
                try {
                    this._finalUrl = s;
                    this._baseUrl = s;
                    if (httpMethod.equals("GET") && s2 != null && s2.length() > 2) {
                        this._finalUrl = String.valueOf(this._finalUrl) + "?" + s2;
                    }
                    this._url = new URL(this._finalUrl);
                    this._queryParams = s2;
                    this._httpMethod = httpMethod;
                    ApplifierImpactWebData.access$3(ApplifierImpactWebData.this, 1 + ApplifierImpactWebData.this._totalLoadersCreated);
                    ApplifierImpactUtils.Log("Total urlLoaders created: " + ApplifierImpactWebData.this._totalLoadersCreated, this);
                    this._requestType = requestType;
                    this._retries = retries;
                }
                catch (Exception ex) {
                    ApplifierImpactUtils.Log("Problems with url! Error-message: " + ex.getMessage(), this);
                    continue;
                }
                break;
            }
        }
        
        private void cancelInMainThread() {
            if (ApplifierImpactProperties.CURRENT_ACTIVITY != null) {
                ApplifierImpactProperties.CURRENT_ACTIVITY.runOnUiThread((Runnable)new ApplifierImpactCancelUrlLoaderRunner(this));
            }
        }
        
        private void closeAndFlushConnection() {
            try {
                this._input.close();
                this._input = null;
                this._binput.close();
                this._binput = null;
            }
            catch (Exception ex) {
                ApplifierImpactUtils.Log("Problems closing streams: " + ex.getMessage(), this);
            }
        }
        
        public void clear() {
            this._url = null;
            this._downloadLength = 0;
            this._urlData = "";
            this._requestType = null;
            this._finalUrl = null;
            this._retries = 0;
            this._httpMethod = null;
            this._queryParams = null;
            this._baseUrl = null;
        }
        
        protected String doInBackground(final String... p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_0        
            //     1: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._url:Ljava/net/URL;
            //     4: invokevirtual   java/net/URL.toString:()Ljava/lang/String;
            //     7: ldc             "https://"
            //     9: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
            //    12: ifeq            421
            //    15: aload_0        
            //    16: aload_0        
            //    17: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._url:Ljava/net/URL;
            //    20: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
            //    23: checkcast       Ljavax/net/ssl/HttpsURLConnection;
            //    26: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    29: aload_0        
            //    30: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    33: sipush          20000
            //    36: invokevirtual   java/net/HttpURLConnection.setConnectTimeout:(I)V
            //    39: aload_0        
            //    40: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    43: sipush          30000
            //    46: invokevirtual   java/net/HttpURLConnection.setReadTimeout:(I)V
            //    49: aload_0        
            //    50: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    53: aload_0        
            //    54: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._httpMethod:Ljava/lang/String;
            //    57: invokevirtual   java/net/HttpURLConnection.setRequestMethod:(Ljava/lang/String;)V
            //    60: aload_0        
            //    61: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    64: ldc             "Content-type"
            //    66: ldc             "application/x-www-form-urlencoded"
            //    68: invokevirtual   java/net/HttpURLConnection.setRequestProperty:(Ljava/lang/String;Ljava/lang/String;)V
            //    71: aload_0        
            //    72: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    75: iconst_1       
            //    76: invokevirtual   java/net/HttpURLConnection.setDoInput:(Z)V
            //    79: aload_0        
            //    80: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._httpMethod:Ljava/lang/String;
            //    83: ldc             "POST"
            //    85: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //    88: ifeq            99
            //    91: aload_0        
            //    92: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //    95: iconst_1       
            //    96: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
            //    99: aload_0        
            //   100: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   103: ifnull          419
            //   106: aload_0        
            //   107: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._httpMethod:Ljava/lang/String;
            //   110: ldc             "POST"
            //   112: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
            //   115: ifeq            158
            //   118: new             Ljava/io/PrintWriter;
            //   121: dup            
            //   122: new             Ljava/io/OutputStreamWriter;
            //   125: dup            
            //   126: aload_0        
            //   127: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   130: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
            //   133: ldc             "UTF-8"
            //   135: invokespecial   java/io/OutputStreamWriter.<init>:(Ljava/io/OutputStream;Ljava/lang/String;)V
            //   138: iconst_1       
            //   139: invokespecial   java/io/PrintWriter.<init>:(Ljava/io/Writer;Z)V
            //   142: astore          12
            //   144: aload           12
            //   146: aload_0        
            //   147: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._queryParams:Ljava/lang/String;
            //   150: invokevirtual   java/io/PrintWriter.print:(Ljava/lang/String;)V
            //   153: aload           12
            //   155: invokevirtual   java/io/PrintWriter.flush:()V
            //   158: new             Ljava/lang/StringBuilder;
            //   161: dup            
            //   162: ldc             "Connection response: "
            //   164: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   167: aload_0        
            //   168: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   171: invokevirtual   java/net/HttpURLConnection.getResponseCode:()I
            //   174: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   177: ldc             ", "
            //   179: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   182: aload_0        
            //   183: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   186: invokevirtual   java/net/HttpURLConnection.getResponseMessage:()Ljava/lang/String;
            //   189: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   192: ldc             ", "
            //   194: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   197: aload_0        
            //   198: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   201: invokevirtual   java/net/HttpURLConnection.getURL:()Ljava/net/URL;
            //   204: invokevirtual   java/net/URL.toString:()Ljava/lang/String;
            //   207: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   210: ldc             " : "
            //   212: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   215: aload_0        
            //   216: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._queryParams:Ljava/lang/String;
            //   219: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   222: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   225: aload_0        
            //   226: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   229: aload_0        
            //   230: aload_0        
            //   231: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   234: invokevirtual   java/net/HttpURLConnection.getInputStream:()Ljava/io/InputStream;
            //   237: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._input:Ljava/io/InputStream;
            //   240: aload_0        
            //   241: new             Ljava/io/BufferedInputStream;
            //   244: dup            
            //   245: aload_0        
            //   246: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._input:Ljava/io/InputStream;
            //   249: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
            //   252: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._binput:Ljava/io/BufferedInputStream;
            //   255: lconst_0       
            //   256: lstore          4
            //   258: aload_0        
            //   259: aload_0        
            //   260: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   263: invokevirtual   java/net/HttpURLConnection.getContentLength:()I
            //   266: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._downloadLength:I
            //   269: aload_0        
            //   270: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
            //   273: astore          7
            //   275: aload           7
            //   277: iconst_1       
            //   278: aload           7
            //   280: invokestatic    com/fusepowered/a1/webapp/ApplifierImpactWebData.access$4:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I
            //   283: iadd           
            //   284: invokestatic    com/fusepowered/a1/webapp/ApplifierImpactWebData.access$5:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;I)V
            //   287: new             Ljava/lang/StringBuilder;
            //   290: dup            
            //   291: ldc_w           "Total urlLoaders that have started running: "
            //   294: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   297: aload_0        
            //   298: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.this$0:Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;
            //   301: invokestatic    com/fusepowered/a1/webapp/ApplifierImpactWebData.access$4:(Lcom/fusepowered/a1/webapp/ApplifierImpactWebData;)I
            //   304: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   307: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   310: aload_0        
            //   311: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   314: new             Ljava/lang/StringBuilder;
            //   317: dup            
            //   318: ldc_w           "Reading data from: "
            //   321: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   324: aload_0        
            //   325: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._url:Ljava/net/URL;
            //   328: invokevirtual   java/net/URL.toString:()Ljava/lang/String;
            //   331: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   334: ldc_w           " Content-length: "
            //   337: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   340: aload_0        
            //   341: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._downloadLength:I
            //   344: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
            //   347: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   350: aload_0        
            //   351: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   354: new             Lorg/apache/http/util/ByteArrayBuffer;
            //   357: dup            
            //   358: sipush          20480
            //   361: invokespecial   org/apache/http/util/ByteArrayBuffer.<init>:(I)V
            //   364: astore          8
            //   366: aload_0        
            //   367: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._binput:Ljava/io/BufferedInputStream;
            //   370: invokevirtual   java/io/BufferedInputStream.read:()I
            //   373: istore          9
            //   375: iload           9
            //   377: iconst_m1      
            //   378: if_icmpne       546
            //   381: aload_0        
            //   382: new             Ljava/lang/String;
            //   385: dup            
            //   386: aload           8
            //   388: invokevirtual   org/apache/http/util/ByteArrayBuffer.toByteArray:()[B
            //   391: invokespecial   java/lang/String.<init>:([B)V
            //   394: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._urlData:Ljava/lang/String;
            //   397: new             Ljava/lang/StringBuilder;
            //   400: dup            
            //   401: ldc_w           "Read total of: "
            //   404: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   407: lload           4
            //   409: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
            //   412: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   415: aload_0        
            //   416: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   419: aconst_null    
            //   420: areturn        
            //   421: aload_0        
            //   422: aload_0        
            //   423: getfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._url:Ljava/net/URL;
            //   426: invokevirtual   java/net/URL.openConnection:()Ljava/net/URLConnection;
            //   429: checkcast       Ljava/net/HttpURLConnection;
            //   432: putfield        com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader._connection:Ljava/net/HttpURLConnection;
            //   435: goto            29
            //   438: astore_2       
            //   439: new             Ljava/lang/StringBuilder;
            //   442: dup            
            //   443: ldc_w           "Problems opening connection: "
            //   446: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   449: aload_2        
            //   450: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   453: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   456: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   459: aload_0        
            //   460: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   463: aload_0        
            //   464: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.cancelInMainThread:()V
            //   467: aconst_null    
            //   468: areturn        
            //   469: astore          13
            //   471: new             Ljava/lang/StringBuilder;
            //   474: dup            
            //   475: ldc_w           "Problems writing post-data: "
            //   478: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   481: aload           13
            //   483: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   486: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   489: ldc             ", "
            //   491: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   494: aload           13
            //   496: invokevirtual   java/lang/Exception.getStackTrace:()[Ljava/lang/StackTraceElement;
            //   499: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
            //   502: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   505: aload_0        
            //   506: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   509: aload_0        
            //   510: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.cancelInMainThread:()V
            //   513: aconst_null    
            //   514: areturn        
            //   515: astore_3       
            //   516: new             Ljava/lang/StringBuilder;
            //   519: dup            
            //   520: ldc_w           "Problems opening stream: "
            //   523: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   526: aload_3        
            //   527: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   530: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   533: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   536: aload_0        
            //   537: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   540: aload_0        
            //   541: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.cancelInMainThread:()V
            //   544: aconst_null    
            //   545: areturn        
            //   546: lload           4
            //   548: lconst_1       
            //   549: ladd           
            //   550: lstore          4
            //   552: iload           9
            //   554: i2b            
            //   555: istore          10
            //   557: aload           8
            //   559: iload           10
            //   561: invokevirtual   org/apache/http/util/ByteArrayBuffer.append:(I)V
            //   564: aload_0        
            //   565: invokevirtual   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.isCancelled:()Z
            //   568: istore          11
            //   570: iload           11
            //   572: ifeq            366
            //   575: aconst_null    
            //   576: areturn        
            //   577: astore          6
            //   579: new             Ljava/lang/StringBuilder;
            //   582: dup            
            //   583: ldc_w           "Problems loading url! Error-message: "
            //   586: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
            //   589: aload           6
            //   591: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   594: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   597: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   600: aload_0        
            //   601: invokestatic    com/fusepowered/a1/ApplifierImpactUtils.Log:(Ljava/lang/String;Ljava/lang/Object;)V
            //   604: aload_0        
            //   605: invokespecial   com/fusepowered/a1/webapp/ApplifierImpactWebData$ApplifierImpactUrlLoader.cancelInMainThread:()V
            //   608: aconst_null    
            //   609: areturn        
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  0      29     438    469    Ljava/lang/Exception;
            //  29     99     438    469    Ljava/lang/Exception;
            //  118    158    469    515    Ljava/lang/Exception;
            //  158    255    515    546    Ljava/lang/Exception;
            //  269    366    577    610    Ljava/lang/Exception;
            //  366    375    577    610    Ljava/lang/Exception;
            //  381    419    577    610    Ljava/lang/Exception;
            //  421    435    438    469    Ljava/lang/Exception;
            //  557    570    577    610    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IndexOutOfBoundsException: Index: 272, Size: 272
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        public String getBaseUrl() {
            return this._baseUrl;
        }
        
        public String getData() {
            return this._urlData;
        }
        
        public String getHTTPMethod() {
            return this._httpMethod;
        }
        
        public String getQueryParams() {
            return this._queryParams;
        }
        
        public ApplifierImpactRequestType getRequestType() {
            return this._requestType;
        }
        
        public int getRetries() {
            return this._retries;
        }
        
        public String getUrl() {
            return this._url.toString();
        }
        
        protected void onCancelled() {
            this._done = true;
            this.closeAndFlushConnection();
            ApplifierImpactWebData.this.urlLoadFailed(this);
        }
        
        protected void onPostExecute(final String s) {
            if (!this.isCancelled() && !this._done) {
                this._done = true;
                this.closeAndFlushConnection();
                ApplifierImpactWebData.this.urlLoadCompleted(this);
            }
            super.onPostExecute((Object)s);
        }
        
        protected void onProgressUpdate(final Integer... array) {
            super.onProgressUpdate((Object[])array);
        }
    }
    
    private class ApplifierImpactUrlLoaderCreator implements Runnable
    {
        private String _queryParams;
        private String _requestMethod;
        private ApplifierImpactRequestType _requestType;
        private int _retries;
        private String _url;
        
        public ApplifierImpactUrlLoaderCreator(final String url, final String queryParams, final String requestMethod, final ApplifierImpactRequestType requestType, final int retries) {
            super();
            this._url = null;
            this._queryParams = null;
            this._requestMethod = null;
            this._requestType = null;
            this._retries = 0;
            this._url = url;
            this._queryParams = queryParams;
            this._requestMethod = requestMethod;
            this._requestType = requestType;
            this._retries = retries;
        }
        
        @Override
        public void run() {
            final ApplifierImpactUrlLoader applifierImpactUrlLoader = new ApplifierImpactUrlLoader(this._url, this._queryParams, this._requestMethod, this._requestType, this._retries);
            ApplifierImpactUtils.Log("URL: " + applifierImpactUrlLoader.getUrl(), this);
            if (this._retries <= 5) {
                ApplifierImpactWebData.this.addLoader(applifierImpactUrlLoader);
            }
            ApplifierImpactWebData.this.startNextLoader();
        }
    }
    
    public enum ApplifierVideoPosition
    {
        End("End", 4), 
        FirstQuartile("FirstQuartile", 1), 
        MidPoint("MidPoint", 2), 
        Start("Start", 0), 
        ThirdQuartile("ThirdQuartile", 3);
        
        static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition() {
            final int[] $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition = ApplifierVideoPosition.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition;
            if ($switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition != null) {
                return $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition;
            }
            final int[] $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2 = new int[values().length];
            while (true) {
                try {
                    $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2[ApplifierVideoPosition.End.ordinal()] = 5;
                    try {
                        $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2[ApplifierVideoPosition.FirstQuartile.ordinal()] = 2;
                        try {
                            $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2[ApplifierVideoPosition.MidPoint.ordinal()] = 3;
                            try {
                                $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2[ApplifierVideoPosition.Start.ordinal()] = 1;
                                try {
                                    $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2[ApplifierVideoPosition.ThirdQuartile.ordinal()] = 4;
                                    return ApplifierVideoPosition.$SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition = $switch_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition2;
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
        
        @SuppressLint({ "DefaultLocale" })
        @Override
        public String toString() {
            switch ($SWITCH_TABLE$com$applifier$impact$android$webapp$ApplifierImpactWebData$ApplifierVideoPosition()[this.ordinal()]) {
                default: {
                    return this.name().toString().toLowerCase();
                }
                case 2: {
                    return "first_quartile";
                }
                case 3: {
                    return "mid_point";
                }
                case 4: {
                    return "third_quartile";
                }
                case 5: {
                    return "video_end";
                }
                case 1: {
                    return "video_start";
                }
            }
        }
    }
}
