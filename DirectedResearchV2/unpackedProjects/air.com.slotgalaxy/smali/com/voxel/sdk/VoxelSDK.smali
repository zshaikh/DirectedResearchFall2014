.class public Lcom/voxel/sdk/VoxelSDK;
.super Ljava/lang/Object;
.source "VoxelSDK.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/sdk/VoxelSDK$AdListener;,
        Lcom/voxel/sdk/VoxelSDK$ReportEventTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "1.3.5"

.field private static adManager:Lcom/voxel/sdk/AdManager;

.field private static apiClient:Lcom/voxel/api/ApiClient;

.field private static appContext:Landroid/content/Context;

.field private static assetManager:Lcom/voxel/sdk/AssetManager;

.field private static connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

.field private static hasNativeLib:Z

.field private static isInitialized:Z

.field protected static overrideCampaignId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/voxel/sdk/VoxelSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/voxel/sdk/VoxelSDK;->isInitialized:Z

    .line 35
    sput-boolean v1, Lcom/voxel/sdk/VoxelSDK;->hasNativeLib:Z

    .line 316
    :try_start_0
    const-string v0, "vxlnative"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    sput-boolean v0, Lcom/voxel/sdk/VoxelSDK;->hasNativeLib:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method

.method public static canDisplayAd()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->canRunSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 136
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v0}, Lcom/voxel/sdk/AdManager;->hasAd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v0}, Lcom/voxel/sdk/AdManager;->fetch()V

    move v0, v1

    .line 139
    goto :goto_0

    :cond_1
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public static canRunSession()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 125
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v0}, Lcom/voxel/sdk/ConnectionMonitor;->isConnectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v0}, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivity()V

    move v0, v1

    .line 129
    goto :goto_0
.end method

.method public static checkInitialization()Z
    .locals 3

    .prologue
    const-string v2, "----------------------------------------------------"

    .line 81
    sget-boolean v0, Lcom/voxel/sdk/VoxelSDK;->isInitialized:Z

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v1, "----------------------------------------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v1, "| VOXEL NOT INITIALIZED                            |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v1, "| VoxelSDK is not correctly initialized, disabling |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v1, "----------------------------------------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createSessionDialog(Landroid/content/Context;J)Lcom/voxel/sdk/ad/VoxelAppDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "campaignId"    # J

    .prologue
    .line 242
    new-instance v0, Lcom/voxel/sdk/VoxelAppConfig;

    invoke-direct {v0}, Lcom/voxel/sdk/VoxelAppConfig;-><init>()V

    .line 243
    .local v0, "config":Lcom/voxel/sdk/VoxelAppConfig;
    invoke-virtual {v0, p1, p2}, Lcom/voxel/sdk/VoxelAppConfig;->setCampaignId(J)V

    .line 244
    invoke-static {p0, v0}, Lcom/voxel/sdk/VoxelSDK;->createSessionDialog(Landroid/content/Context;Lcom/voxel/sdk/VoxelAppConfig;)Lcom/voxel/sdk/ad/VoxelAppDialog;

    move-result-object v1

    return-object v1
.end method

.method public static createSessionDialog(Landroid/content/Context;Lcom/voxel/sdk/VoxelAppConfig;)Lcom/voxel/sdk/ad/VoxelAppDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/voxel/sdk/VoxelAppConfig;

    .prologue
    .line 249
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 255
    :goto_0
    return-object v1

    .line 252
    :cond_0
    new-instance v0, Lcom/voxel/sdk/VoxelAppDialogImpl;

    invoke-direct {v0, p0}, Lcom/voxel/sdk/VoxelAppDialogImpl;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, "dialog":Lcom/voxel/sdk/VoxelAppDialogImpl;
    invoke-virtual {v0, p1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->setAppConfig(Lcom/voxel/sdk/VoxelAppConfig;)V

    move-object v1, v0

    .line 255
    goto :goto_0
.end method

.method public static displayInterstitial(Landroid/content/Context;JLcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "campaignId"    # J
    .param p3, "listener"    # Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .prologue
    .line 185
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    new-instance v1, Lcom/voxel/sdk/VoxelSDK$2;

    invoke-direct {v1, p0, p3}, Lcom/voxel/sdk/VoxelSDK$2;-><init>(Landroid/content/Context;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/voxel/sdk/AdManager;->fetch(JLcom/voxel/sdk/AdManager$AdFetchListener;)V

    goto :goto_0
.end method

.method public static displayInterstitial(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    check-cast v0, Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    invoke-static {p0, v0}, Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)Z

    move-result v0

    return v0
.end method

.method protected static displayInterstitial(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "campaign"    # Lcom/voxel/api/model/CampaignInfo;
    .param p2, "listener"    # Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 237
    :goto_0
    return v3

    .line 206
    :cond_0
    if-nez p1, :cond_1

    move v3, v5

    .line 207
    goto :goto_0

    .line 210
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v3

    sget-object v4, Lcom/voxel/api/model/CampaignInfo$PrerollType;->STATIC:Lcom/voxel/api/model/CampaignInfo$PrerollType;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v4, :cond_2

    .line 213
    :try_start_1
    new-instance v2, Lcom/voxel/sdk/VoxelStaticPreroll;

    invoke-direct {v2, p0, p1}, Lcom/voxel/sdk/VoxelStaticPreroll;-><init>(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .local v2, "preroll":Lcom/voxel/sdk/VoxelStaticPreroll;
    :try_start_2
    invoke-virtual {v2, p2}, Lcom/voxel/sdk/VoxelStaticPreroll;->setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V

    .line 218
    invoke-virtual {v2}, Lcom/voxel/sdk/VoxelStaticPreroll;->show()V

    .line 229
    .end local v2    # "preroll":Lcom/voxel/sdk/VoxelStaticPreroll;
    :goto_1
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v3, p1}, Lcom/voxel/sdk/AdManager;->displayedAd(Lcom/voxel/api/model/CampaignInfo;)V

    .line 237
    const/4 v3, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, "ex":Ljava/io/FileNotFoundException;
    move v3, v5

    .line 215
    goto :goto_0

    .line 220
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :cond_2
    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/voxel/sdk/VoxelSDK;->createSessionDialog(Landroid/content/Context;J)Lcom/voxel/sdk/ad/VoxelAppDialog;

    move-result-object v0

    check-cast v0, Lcom/voxel/sdk/VoxelAppDialogImpl;

    .line 222
    .local v0, "dialog":Lcom/voxel/sdk/VoxelAppDialogImpl;
    invoke-virtual {v0, p2}, Lcom/voxel/sdk/VoxelAppDialogImpl;->setStateListener(Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)V

    .line 223
    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getPrerollType()Lcom/voxel/api/model/CampaignInfo$PrerollType;

    move-result-object v3

    sget-object v4, Lcom/voxel/api/model/CampaignInfo$PrerollType;->BLURRED_APP:Lcom/voxel/api/model/CampaignInfo$PrerollType;

    if-ne v3, v4, :cond_3

    .line 224
    invoke-virtual {v0, p1}, Lcom/voxel/sdk/VoxelAppDialogImpl;->showBlurredPreroll(Lcom/voxel/api/model/CampaignInfo;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 230
    .end local v0    # "dialog":Lcom/voxel/sdk/VoxelAppDialogImpl;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 231
    .local v1, "ex":Landroid/view/WindowManager$BadTokenException;
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v4, "Could not display interstitial after parent activity is not active"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 234
    goto :goto_0

    .line 226
    .end local v1    # "ex":Landroid/view/WindowManager$BadTokenException;
    .restart local v0    # "dialog":Lcom/voxel/sdk/VoxelAppDialogImpl;
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/voxel/sdk/VoxelAppDialogImpl;->show()V
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public static displayInterstitial(Landroid/content/Context;Lcom/voxel/sdk/VoxelSDK$AdListener;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/voxel/sdk/VoxelSDK$AdListener;

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "stateListener":Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;
    if-eqz p1, :cond_0

    .line 153
    new-instance v1, Lcom/voxel/sdk/VoxelSDK$1;

    .end local v1    # "stateListener":Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;
    invoke-direct {v1, p1}, Lcom/voxel/sdk/VoxelSDK$1;-><init>(Lcom/voxel/sdk/VoxelSDK$AdListener;)V

    .line 168
    .restart local v1    # "stateListener":Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;
    :cond_0
    invoke-static {p0, v1}, Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)Z

    move-result v0

    .line 169
    .local v0, "displayed":Z
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 170
    invoke-interface {p1}, Lcom/voxel/sdk/VoxelSDK$AdListener;->onAdDisplayed()V

    .line 172
    :cond_1
    return v0
.end method

.method public static displayInterstitial(Landroid/content/Context;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;

    .prologue
    .line 177
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v0}, Lcom/voxel/sdk/AdManager;->getNextAd()Lcom/voxel/api/model/CampaignInfo;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/voxel/sdk/VoxelSDK;->displayInterstitial(Landroid/content/Context;Lcom/voxel/api/model/CampaignInfo;Lcom/voxel/sdk/ad/VoxelAppDialog$StateListener;)Z

    move-result v0

    goto :goto_0
.end method

.method protected static getAdManager()Lcom/voxel/sdk/AdManager;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    return-object v0
.end method

.method protected static getApiClient()Lcom/voxel/api/ApiClient;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    goto :goto_0
.end method

.method public static getAssetManager()Lcom/voxel/sdk/AssetManager;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->assetManager:Lcom/voxel/sdk/AssetManager;

    return-object v0
.end method

.method protected static getConnectionMonitor()Lcom/voxel/sdk/ConnectionMonitor;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .prologue
    const-string v5, "----------------------------------------------------"

    .line 41
    sget-boolean v3, Lcom/voxel/sdk/VoxelSDK;->isInitialized:Z

    if-eqz v3, :cond_0

    .line 78
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-boolean v3, Lcom/voxel/sdk/VoxelSDK;->hasNativeLib:Z

    if-nez v3, :cond_1

    .line 46
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v4, "----------------------------------------------------"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v4, "| VOXEL INTEGRATION ERROR                          |"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v4, "| libvxlnative.so cannot be loaded, voxel disabled |"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v4, "----------------------------------------------------"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/voxel/sdk/VoxelSDK;->isInitialized:Z

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/voxel/sdk/VoxelSDK;->appContext:Landroid/content/Context;

    .line 56
    new-instance v3, Lcom/voxel/api/ApiClient;

    invoke-direct {v3}, Lcom/voxel/api/ApiClient;-><init>()V

    sput-object v3, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    .line 57
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    invoke-virtual {v3, p1}, Lcom/voxel/api/ApiClient;->setToken(Ljava/lang/String;)V

    .line 58
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    invoke-virtual {v3, p2}, Lcom/voxel/api/ApiClient;->setSecretKey(Ljava/lang/String;)V

    .line 59
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "androidId":Ljava/lang/String;
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    invoke-virtual {v3, v0}, Lcom/voxel/api/ApiClient;->setDeviceId(Ljava/lang/String;)V

    .line 62
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    const-string v4, "1.3.5"

    invoke-virtual {v3, v4}, Lcom/voxel/api/ApiClient;->setVersion(Ljava/lang/String;)V

    .line 63
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    sget-object v4, Lcom/voxel/sdk/VoxelSDK;->appContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/voxel/api/ApiClient;->setBundleId(Ljava/lang/String;)V

    .line 65
    new-instance v3, Lcom/voxel/sdk/ConnectionMonitor;

    invoke-direct {v3}, Lcom/voxel/sdk/ConnectionMonitor;-><init>()V

    sput-object v3, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    .line 66
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    sget-object v4, Lcom/voxel/sdk/VoxelSDK;->appContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/voxel/sdk/ConnectionMonitor;->startMonitoring(Landroid/content/Context;)V

    .line 68
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->appContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "vxl_assets"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v1, "assetDir":Ljava/io/File;
    :try_start_0
    new-instance v3, Lcom/voxel/sdk/AssetManager;

    invoke-direct {v3, v1}, Lcom/voxel/sdk/AssetManager;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/voxel/sdk/VoxelSDK;->assetManager:Lcom/voxel/sdk/AssetManager;

    .line 71
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->assetManager:Lcom/voxel/sdk/AssetManager;

    invoke-virtual {v3}, Lcom/voxel/sdk/AssetManager;->fetchStaticAssets()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    new-instance v3, Lcom/voxel/sdk/AdManager;

    invoke-direct {v3}, Lcom/voxel/sdk/AdManager;-><init>()V

    sput-object v3, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    .line 77
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v3}, Lcom/voxel/sdk/AdManager;->fetch()V

    goto/16 :goto_0

    .line 72
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 73
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/voxel/sdk/VoxelSDK;->TAG:Ljava/lang/String;

    const-string v4, "Could not initialize assets"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static prepare()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    invoke-virtual {v0}, Lcom/voxel/sdk/AdManager;->fetch()V

    .line 110
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v0}, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivity()V

    goto :goto_0
.end method

.method public static prepareCampaign(J)V
    .locals 2
    .param p0, "campaignId"    # J

    .prologue
    .line 114
    invoke-static {}, Lcom/voxel/sdk/VoxelSDK;->checkInitialization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    invoke-virtual {v0}, Lcom/voxel/sdk/ConnectionMonitor;->checkConnectivity()V

    .line 118
    sget-object v0, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/voxel/sdk/AdManager;->fetch(JLcom/voxel/sdk/AdManager$AdFetchListener;)V

    goto :goto_0
.end method

.method protected static reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "campaign"    # Lcom/voxel/api/model/CampaignInfo;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/voxel/sdk/VoxelSDK;->reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;Ljava/util/Map;)V

    .line 279
    return-void
.end method

.method protected static reportEvent(Ljava/lang/String;Lcom/voxel/api/model/CampaignInfo;Ljava/util/Map;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "campaign"    # Lcom/voxel/api/model/CampaignInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/voxel/api/model/CampaignInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 286
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 287
    :cond_0
    const-string v2, "event"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    if-eqz p1, :cond_1

    .line 289
    const-string v2, "campaign_id"

    invoke-virtual {p1}, Lcom/voxel/api/model/CampaignInfo;->getCampaignId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_1
    const-string v2, "form_factor"

    invoke-static {}, Lcom/voxel/sdk/Config;->getFormFactor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v1, Lcom/voxel/sdk/VoxelSDK$ReportEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/voxel/sdk/VoxelSDK$ReportEventTask;-><init>(Lcom/voxel/sdk/VoxelSDK$1;)V

    .line 294
    .local v1, "task":Lcom/voxel/sdk/VoxelSDK$ReportEventTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/voxel/sdk/VoxelSDK$ReportEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    return-void
.end method

.method protected static reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/voxel/sdk/VoxelSDK;->isInitialized:Z

    .line 97
    sput-object v1, Lcom/voxel/sdk/VoxelSDK;->apiClient:Lcom/voxel/api/ApiClient;

    .line 98
    sput-object v1, Lcom/voxel/sdk/VoxelSDK;->connectionMonitor:Lcom/voxel/sdk/ConnectionMonitor;

    .line 99
    sput-object v1, Lcom/voxel/sdk/VoxelSDK;->assetManager:Lcom/voxel/sdk/AssetManager;

    .line 100
    sput-object v1, Lcom/voxel/sdk/VoxelSDK;->adManager:Lcom/voxel/sdk/AdManager;

    .line 101
    sput-object v1, Lcom/voxel/sdk/VoxelSDK;->appContext:Landroid/content/Context;

    .line 102
    sput-object v1, Lcom/voxel/sdk/VoxelSDK;->overrideCampaignId:Ljava/lang/Long;

    .line 103
    return-void
.end method
