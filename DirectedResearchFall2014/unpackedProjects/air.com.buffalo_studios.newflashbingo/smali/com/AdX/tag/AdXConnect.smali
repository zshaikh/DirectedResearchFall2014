.class public final Lcom/AdX/tag/AdXConnect;
.super Ljava/lang/Object;
.source "AdXConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/AdX/tag/AdXConnect$ConnectEventTask;,
        Lcom/AdX/tag/AdXConnect$ConnectTask;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

.field private static AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

.field private static AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

.field private static AdX_PREFERENCE:Ljava/lang/String;

.field public static DEBUG:Z

.field public static LOGLEVEL:I

.field private static MODREFERRAL:Ljava/lang/String;

.field private static RECEIVER_DONE:Ljava/lang/String;

.field private static REFERRAL_URL:Ljava/lang/String;

.field private static UPDATE:Ljava/lang/String;

.field public static WARN:Z

.field private static referralURL:Ljava/lang/String;

.field private static final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private AdXClickURL:Ljava/lang/String;

.field private SEND_TAG:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private appID:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private clientID:Ljava/lang/String;

.field private connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

.field private connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

.field private context:Landroid/content/Context;

.field private deviceCountryCode:Ljava/lang/String;

.field private deviceID:Ljava/lang/String;

.field private deviceLanguage:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceOSVersion:Ljava/lang/String;

.field private deviceScreenDensity:Ljava/lang/String;

.field private deviceScreenLayoutSize:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private fbattribution:Ljava/lang/String;

.field private isDataSent:Z

.field private libraryVersion:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private sdkType:Ljava/lang/String;

.field private storeAppID:Ljava/lang/String;

.field private tagVersion:Ljava/lang/String;

.field private urlParams:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 48
    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 49
    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 50
    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 51
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    .line 80
    const-string v0, "AdXPrefrences"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    .line 82
    const-string v0, "AdXReferral"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    .line 83
    const-string v0, "ReceiverDone"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    .line 84
    const-string v0, "AdXUpdate"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    .line 85
    const-string v0, "InstallReferral"

    sput-object v0, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    .line 87
    sput v1, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    .line 88
    sget v0, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    .line 89
    sget v0, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    .line 42
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v0, v2

    .line 89
    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "update"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "&"

    const-string v3, ""

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    .line 45
    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    .line 46
    iput-object v5, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 54
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 55
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 56
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 57
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 58
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 59
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 60
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 61
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 62
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 63
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 64
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 65
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenDensity:Ljava/lang/String;

    .line 66
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    .line 67
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 68
    const-string v2, "2.4.3"

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    .line 69
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 70
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 71
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 72
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 73
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 74
    iput-boolean v6, p0, Lcom/AdX/tag/AdXConnect;->isDataSent:Z

    .line 79
    const-string v2, ""

    iput-object v3, p0, Lcom/AdX/tag/AdXConnect;->AdXClickURL:Ljava/lang/String;

    .line 81
    const-string v2, "SendTag"

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 245
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v3, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 247
    .local v1, "settings":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "sendTag":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    sget-boolean v2, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AdXAppTracker"

    const-string v3, "SendTag is set to stop "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/AdX/tag/AdXConnect;->getApplicationData()V

    .line 256
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/AdX/tag/AdXConnect;->getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 259
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "udid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 260
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "androidID="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "macAddress="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 263
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "storeAppID="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "device_name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "device_type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "os_version="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "country_code="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "language="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "app_id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 270
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "clientid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "app_version="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tag_version="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "fbattribution="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "uagent="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "update="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 281
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "screen_density="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenDensity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "screen_layout_size="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 290
    :cond_2
    new-instance v2, Lcom/AdX/tag/AdXConnect$ConnectTask;

    invoke-direct {v2, p0, v5}, Lcom/AdX/tag/AdXConnect$ConnectTask;-><init>(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectTask;)V

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    .line 291
    iget-object v2, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    new-array v3, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/AdX/tag/AdXConnect$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/AdX/tag/AdXConnect;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "currency"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "AdXAppTracker"

    const-string v3, "&"

    const-string v2, ""

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->connectTask:Lcom/AdX/tag/AdXConnect$ConnectTask;

    .line 45
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    .line 46
    iput-object v4, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 54
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenDensity:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 68
    const-string v0, "2.4.3"

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->fbattribution:Ljava/lang/String;

    .line 74
    iput-boolean v5, p0, Lcom/AdX/tag/AdXConnect;->isDataSent:Z

    .line 79
    const-string v0, ""

    iput-object v2, p0, Lcom/AdX/tag/AdXConnect;->AdXClickURL:Ljava/lang/String;

    .line 81
    const-string v0, "SendTag"

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    .line 304
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdXAppTracker"

    const-string v0, "In Constructor "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/AdX/tag/AdXConnect;->getApplicationData()V

    .line 308
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AdXAppTracker"

    const-string v0, "Got Application Data "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "udid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "androidID="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "macAddress="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "storeAppID="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "device_name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "device_type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "os_version="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "country_code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "language="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "app_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "event="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "data="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "uagent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "currency="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->AdXClickURL:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "AdXClickURL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/AdX/tag/AdXConnect;->AdXClickURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    .line 329
    :cond_2
    new-instance v0, Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    invoke-direct {v0, p0, v4}, Lcom/AdX/tag/AdXConnect$ConnectEventTask;-><init>(Lcom/AdX/tag/AdXConnect;Lcom/AdX/tag/AdXConnect$ConnectEventTask;)V

    iput-object v0, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    .line 330
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->connectEventTask:Lcom/AdX/tag/AdXConnect$ConnectEventTask;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/AdX/tag/AdXConnect$ConnectEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void
.end method

.method static synthetic access$0(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->urlParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/AdX/tag/AdXConnect;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->handleConnectResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/AdX/tag/AdXConnect;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()Lcom/AdX/tag/AdXURLConnection;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    return-object v0
.end method

.method static synthetic access$5(Lcom/AdX/tag/AdXURLConnection;)V
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    return-void
.end method

.method static synthetic access$6()Lcom/AdX/tag/AdXConnect;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    return-object v0
.end method

.method static synthetic access$8(Lcom/AdX/tag/AdXConnect;)V
    .locals 0

    .prologue
    .line 48
    sput-object p0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    return-void
.end method

.method private buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 8
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 708
    .local v0, "document":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 712
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 714
    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 715
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 722
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 717
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 719
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AdXAppTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buildDocument exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doBroadcastConnectInstance(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 194
    sget-object v2, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v2}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v2, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 197
    :cond_0
    sget-object v2, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Lcom/AdX/tag/AdXConnect;

    invoke-direct {v2, p0, v4}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 200
    :cond_1
    sget-boolean v2, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "AdXAppTracker"

    const-string v3, "Broadcast Receiver - sending to AdX."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    sget-object v2, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 203
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v3, "done"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public static getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {v0}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 213
    :cond_0
    sget-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 214
    :cond_1
    new-instance v0, Lcom/AdX/tag/AdXConnect;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/AdX/tag/AdXConnect;->AdXConnectEventInstance:Lcom/AdX/tag/AdXConnect;

    .line 215
    return-void
.end method

.method public static getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "update"    # Z
    .param p2, "loglevel"    # I

    .prologue
    .line 108
    sput p2, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    .line 109
    sget-object p2, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    .end local p2    # "loglevel":I
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 112
    .local p2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v0, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "updateValue":I
    if-gez v0, :cond_a

    .line 115
    if-eqz p1, :cond_7

    sget-object p1, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    .end local p1    # "update":Z
    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .end local v0    # "updateValue":I
    const/4 p1, 0x1

    .line 117
    .local p1, "updateValue":I
    :goto_0
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AdXAppTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update flag set to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, p1

    .line 121
    .end local p1    # "updateValue":I
    .local v2, "updateValue":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 122
    .local p1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 124
    .local p1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "OTHERSTORE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "metaDataValue":Ljava/lang/String;
    const-string v3, "AdXAppTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELF HOST VALUE IS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0    # "metaDataValue":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v3, "done"

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "NETWORK"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0    # "metaDataValue":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "network":Ljava/lang/String;
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .end local p1    # "info":Landroid/content/pm/ApplicationInfo;
    const-string v3, "REFERENCE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    .local p1, "metaDataValue":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 138
    .local p1, "reference":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "referrer=utm_source%3D"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0    # "network":Ljava/lang/String;
    const-string v3, "%26utm_medium%3Dcpc%26utm_campaign%3D"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "reference":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    .local p1, "uri":Ljava/lang/String;
    sget-object v0, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    sget-object p1, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    .end local p1    # "uri":Ljava/lang/String;
    const-string v0, "done"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_2
    :goto_2
    sget-object p1, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    .local p1, "receiverDone":Ljava/lang/String;
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    if-eqz p1, :cond_8

    const-string v0, "done"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .end local p1    # "receiverDone":Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 150
    :cond_3
    sget-boolean p1, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "AdXAppTracker"

    const-string p2, "Sending to AdX"

    .end local p2    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    sget-object p1, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    if-nez p1, :cond_5

    .line 152
    new-instance p1, Lcom/AdX/tag/AdXURLConnection;

    invoke-direct {p1}, Lcom/AdX/tag/AdXURLConnection;-><init>()V

    sput-object p1, Lcom/AdX/tag/AdXConnect;->AdXURLConnection:Lcom/AdX/tag/AdXURLConnection;

    .line 154
    :cond_5
    sget-object p1, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    if-nez p1, :cond_6

    .line 155
    new-instance p1, Lcom/AdX/tag/AdXConnect;

    invoke-direct {p1, p0, v2}, Lcom/AdX/tag/AdXConnect;-><init>(Landroid/content/Context;I)V

    sput-object p1, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 157
    :cond_6
    sget-object p0, Lcom/AdX/tag/AdXConnect;->AdXConnectInstance:Lcom/AdX/tag/AdXConnect;

    .line 185
    .end local p0    # "context":Landroid/content/Context;
    :goto_3
    return-object p0

    .line 116
    .end local v2    # "updateValue":I
    .local v0, "updateValue":I
    .restart local p0    # "context":Landroid/content/Context;
    .local p1, "update":Z
    .restart local p2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    sget-object p1, Lcom/AdX/tag/AdXConnect;->UPDATE:Ljava/lang/String;

    .end local p1    # "update":Z
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .end local v0    # "updateValue":I
    const/4 p1, 0x0

    .local p1, "updateValue":I
    goto/16 :goto_0

    .line 144
    .end local p1    # "updateValue":I
    .restart local v2    # "updateValue":I
    :catch_0
    move-exception p1

    .local p1, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_2

    const-string v0, "AdXAppTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Exception;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 162
    :cond_8
    sget-boolean p1, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz p1, :cond_9

    const-string p1, "AdXAppTracker"

    const-string v0, "Re Referral yet - deferring.."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_9
    sget-object p1, Lcom/AdX/tag/AdXConnect;->RECEIVER_DONE:Ljava/lang/String;

    const-string v0, "done"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    move-object p0, p0

    .line 171
    .local p0, "ctx":Landroid/content/Context;
    move p1, v2

    .line 172
    .local p1, "isUpdate":I
    new-instance p2, Lcom/AdX/tag/AdXConnect$1;

    .end local p2    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p2, p0, p1}, Lcom/AdX/tag/AdXConnect$1;-><init>(Landroid/content/Context;I)V

    .line 182
    const-wide/16 p0, 0xc

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local p0    # "ctx":Landroid/content/Context;
    move-result-object p0

    .line 172
    invoke-static {p2, p0}, Lcom/AdX/tag/AdXConnect;->schedule(Ljava/lang/Runnable;Ljava/lang/Long;)V

    .line 185
    const/4 p0, 0x0

    goto :goto_3

    .end local v2    # "updateValue":I
    .restart local v0    # "updateValue":I
    .local p0, "context":Landroid/content/Context;
    .local p1, "update":Z
    .restart local p2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    move v2, v0

    .end local v0    # "updateValue":I
    .restart local v2    # "updateValue":I
    goto/16 :goto_1
.end method

.method public static getAdXReferral(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeout"    # I

    .prologue
    const/4 v5, 0x0

    .line 219
    sget-object v3, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 221
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "tempReferralURL":Ljava/lang/String;
    const/4 v0, 0x0

    .line 223
    .local v0, "count":I
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 233
    :cond_1
    return-object v2

    .line 227
    :cond_2
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 229
    sget-object v3, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    sget-boolean v3, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "AdXAppTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Count "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getApplicationData()V
    .locals 28

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 372
    .local v12, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "android_id"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x80

    move-object v0, v12

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 375
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_1d

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1d

    .line 378
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "APP_NAME"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 379
    .local v13, "metaDataValue":Ljava/lang/String;
    if-eqz v13, :cond_10

    const-string v24, ""

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 381
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    .line 390
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "ADX_CLIENT_ID"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 391
    if-eqz v13, :cond_11

    const-string v24, ""

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 393
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->clientID:Ljava/lang/String;

    .line 401
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "OTHERSTORE"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 402
    if-eqz v13, :cond_0

    const-string v24, ""

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 403
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->sdkType:Ljava/lang/String;

    .line 405
    new-instance v20, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 406
    .local v20, "webview":Landroid/webkit/WebView;
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->userAgent:Ljava/lang/String;

    .line 408
    .end local v20    # "webview":Landroid/webkit/WebView;
    :cond_0
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "STOREAPPID"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 409
    if-eqz v13, :cond_1

    const-string v24, ""

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 410
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->storeAppID:Ljava/lang/String;

    .line 415
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object v0, v12

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 416
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->appVersion:Ljava/lang/String;

    .line 419
    const-string v24, "android"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    .line 422
    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    .line 425
    sget-object v24, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    .line 428
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    .line 429
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->tagVersion:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 437
    .local v17, "settings":Landroid/content/SharedPreferences;
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "DEVICE_ID"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 440
    if-eqz v13, :cond_12

    const-string v24, ""

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 442
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_2
    :goto_0
    :try_start_1
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    .line 540
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 541
    .local v23, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    .end local v14    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "windowManager":Landroid/view/WindowManager;
    :cond_3
    :goto_1
    :try_start_2
    sget-object v24, Lcom/AdX/tag/AdXConnect;->REFERRAL_URL:Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 552
    .local v19, "tempReferralURL":Ljava/lang/String;
    if-eqz v19, :cond_4

    const-string v24, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 553
    sput-object v19, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    .line 555
    :cond_4
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_5

    const-string v24, "AdXAppTracker"

    const-string v25, "Metadata successfully loaded"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_5
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_6

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "APP_ID = ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->appID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_6
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_7

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "deviceName: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_7
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_8

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "deviceType: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceType:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_8
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_9

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "libraryVersion: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->libraryVersion:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_9
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_a

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "deviceOSVersion: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceOSVersion:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_a
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_b

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "COUNTRY_CODE: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceCountryCode:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_b
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_c

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "LANGUAGE_CODE: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceLanguage:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_c
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_d

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "density: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceScreenDensity:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_d
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_e

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "screen_layout: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceScreenLayoutSize:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_e
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_f

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "referralURL: ["

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v26, Lcom/AdX/tag/AdXConnect;->referralURL:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataValue":Ljava/lang/String;
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "settings":Landroid/content/SharedPreferences;
    .end local v19    # "tempReferralURL":Ljava/lang/String;
    :cond_f
    :goto_2
    return-void

    .line 385
    .restart local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "metaDataValue":Ljava/lang/String;
    :cond_10
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v24, :cond_f

    const-string v24, "AdXAppTracker"

    const-string v25, "APP_NAME can\'t be empty."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 581
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "metaDataValue":Ljava/lang/String;
    :catch_0
    move-exception v24

    move-object/from16 v7, v24

    .line 583
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v24, :cond_f

    const-string v24, "AdXAppTracker"

    const-string v25, "Add APP_ID to AndroidManifest.xml file. For more detail integration document."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 397
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "metaDataValue":Ljava/lang/String;
    :cond_11
    :try_start_3
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v24, :cond_f

    const-string v24, "AdXAppTracker"

    const-string v25, "ADX_CLIENT_ID can\'t be empty."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 449
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "settings":Landroid/content/SharedPreferences;
    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "wifi"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 450
    .local v22, "wifiMan":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 451
    .local v21, "wifiInf":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->macAddress:Ljava/lang/String;

    .line 453
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "NOIMEI"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 454
    if-eqz v13, :cond_16

    const-string v24, ""

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_16

    .line 455
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 466
    :cond_13
    :goto_3
    const/4 v11, 0x0

    .line 471
    .local v11, "invalidDeviceID":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_17

    .line 473
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_14

    const-string v24, "AdXAppTracker"

    const-string v25, "Device id is null."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_14
    const/4 v11, 0x1

    .line 495
    :goto_4
    if-eqz v11, :cond_2

    .line 497
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 498
    .local v3, "buff":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->androidID:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    const-string v24, "emulatorDeviceId"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, "deviceId":Ljava/lang/String;
    if-eqz v6, :cond_1b

    const-string v24, ""

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1b

    .line 504
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 527
    .end local v3    # "buff":Ljava/lang/StringBuffer;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v11    # "invalidDeviceID":Z
    .end local v21    # "wifiInf":Landroid/net/wifi/WifiInfo;
    .end local v22    # "wifiMan":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v24

    move-object/from16 v7, v24

    .line 529
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_15

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Error getting deviceID. e: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_15
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 457
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v21    # "wifiInf":Landroid/net/wifi/WifiInfo;
    .restart local v22    # "wifiMan":Landroid/net/wifi/WifiManager;
    :cond_16
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "phone"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 459
    .local v18, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v18, :cond_13

    .line 460
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    goto/16 :goto_3

    .line 480
    .end local v18    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v11    # "invalidDeviceID":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "000000000000000"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 482
    :cond_18
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_19

    const-string v24, "AdXAppTracker"

    const-string v25, "Device id is empty or an emulator."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_19
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 491
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    goto/16 :goto_4

    .line 509
    .restart local v3    # "buff":Ljava/lang/StringBuffer;
    .restart local v6    # "deviceId":Ljava/lang/String;
    :cond_1b
    const-string v5, "1234567890abcdefghijklmnopqrstuvw"

    .line 511
    .local v5, "constantChars":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    const/16 v24, 0x10

    move v0, v9

    move/from16 v1, v24

    if-lt v0, v1, :cond_1c

    .line 518
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    .line 521
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 522
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v24, "emulatorDeviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/AdX/tag/AdXConnect;->deviceID:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 513
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1c
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v24

    const-wide/high16 v26, 0x4059000000000000L

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v16, v0

    .line 514
    .local v16, "randomChar":I
    rem-int/lit8 v4, v16, 0x1e

    .line 515
    .local v4, "ch":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move-object v0, v3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 511
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 545
    .end local v3    # "buff":Ljava/lang/StringBuffer;
    .end local v4    # "ch":I
    .end local v5    # "constantChars":Ljava/lang/String;
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "invalidDeviceID":Z
    .end local v16    # "randomChar":I
    .end local v21    # "wifiInf":Landroid/net/wifi/WifiInfo;
    .end local v22    # "wifiMan":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v24

    move-object/from16 v7, v24

    .line 547
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v24, :cond_3

    const-string v24, "AdXAppTracker"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Error getting screen density/dimensions/layout: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 577
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v13    # "metaDataValue":Ljava/lang/String;
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "settings":Landroid/content/SharedPreferences;
    :cond_1d
    sget-boolean v24, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v24, :cond_f

    const-string v24, "AdXAppTracker"

    const-string v25, "Add APP_ID to AndroidManifest.xml file. For more detail integration document."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2
.end method

.method public static getFacebookAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const-string v3, "aid"

    const-string v11, "AdXAppTracker"

    .line 334
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v3, v2, v0

    .line 335
    .local v2, "projection":[Ljava/lang/String;
    const-string v6, ""

    .line 337
    .local v6, "attributionId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/AdX/tag/AdXConnect;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v10

    .line 354
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 341
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    move-object v0, v6

    .line 354
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 344
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_3

    const-string v0, "AdXAppTracker"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_3
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_4

    const-string v0, "AdXAppTracker"

    const-string v0, "Retry"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/AdX/tag/AdXConnect;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 349
    .restart local v7    # "c":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v10

    goto :goto_0

    .line 351
    :cond_6
    const-string v0, "aid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_1

    .line 352
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v9, v0

    .local v9, "e2":Ljava/lang/Exception;
    sget-boolean v0, Lcom/AdX/tag/AdXConnect;->WARN:Z

    if-eqz v0, :cond_2

    const-string v0, "AdXAppTracker"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 9
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v8, 0x0

    .line 735
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 736
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v5, ""

    .line 737
    .local v5, "nodeValue":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 739
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 741
    .local v2, "itemNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 742
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 749
    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 751
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 758
    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :goto_1
    return-object v6

    .line 744
    .restart local v1    # "i":I
    .restart local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v3    # "length":I
    :cond_0
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 745
    .local v4, "node":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_1

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 742
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_2
    move-object v6, v8

    .line 755
    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "length":I
    :cond_3
    move-object v6, v8

    .line 758
    goto :goto_1
.end method

.method private handleConnectResponse(Ljava/lang/String;)Z
    .locals 11
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "stop"

    const-string v7, "AdXAppTracker"

    .line 653
    invoke-direct {p0, p1}, Lcom/AdX/tag/AdXConnect;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 655
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_6

    .line 657
    const-string v5, "Referral"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/AdX/tag/AdXConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "nodeValue1":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 663
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "AdXAppTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Successfully get returned referral "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v6, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 665
    .local v4, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 666
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/AdX/tag/AdXConnect;->MODREFERRAL:Ljava/lang/String;

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 670
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    const-string v5, "Success"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/AdX/tag/AdXConnect;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "nodeValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 675
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "AdXAppTracker"

    const-string v5, "Successfully connected to AdX site."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v5, v9

    .line 693
    .end local v2    # "nodeValue":Ljava/lang/String;
    .end local v3    # "nodeValue1":Ljava/lang/String;
    :goto_0
    return v5

    .line 678
    .restart local v2    # "nodeValue":Ljava/lang/String;
    .restart local v3    # "nodeValue1":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_5

    const-string v5, "stop"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 680
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "AdXAppTracker"

    const-string v5, "Successfully connected to AdX site - stopping tags from now on."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_4
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->context:Landroid/content/Context;

    sget-object v6, Lcom/AdX/tag/AdXConnect;->AdX_PREFERENCE:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 682
    .restart local v4    # "settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 683
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/AdX/tag/AdXConnect;->SEND_TAG:Ljava/lang/String;

    const-string v6, "stop"

    invoke-interface {v1, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 684
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v5, v9

    .line 685
    goto :goto_0

    .line 689
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "settings":Landroid/content/SharedPreferences;
    :cond_5
    sget-boolean v5, Lcom/AdX/tag/AdXConnect;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "AdXAppTracker"

    const-string v5, "AdX Connect call failed."

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "nodeValue":Ljava/lang/String;
    .end local v3    # "nodeValue1":Ljava/lang/String;
    :cond_6
    move v5, v8

    .line 693
    goto :goto_0
.end method

.method public static schedule(Ljava/lang/Runnable;Ljava/lang/Long;)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delaySeconds"    # Ljava/lang/Long;

    .prologue
    .line 189
    sget-object v0, Lcom/AdX/tag/AdXConnect;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 190
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method
