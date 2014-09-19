.class public Lcom/bitrhyms/tapjoylib/InitVideoAd;
.super Ljava/lang/Object;
.source "InitVideoAd.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/tapjoy/TapjoyVideoNotifier;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field adec:Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/bitrhyms/tapjoylib/InitVideoAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bitrhyms/tapjoylib/InitVideoAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "context"
    .parameter "args"

    .prologue
    .line 19
    move-object v0, p1

    check-cast v0, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;

    move-object v1, v0

    .line 20
    .local v1, adec:Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;
    invoke-static {p1}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->setFREContext(Lcom/adobe/fre/FREContext;)V

    .line 22
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/tapjoy/TapjoyLog;->enableLogging(Z)V

    .line 25
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 26
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tapjoy/TapjoyConnect;->setVideoNotifier(Lcom/tapjoy/TapjoyVideoNotifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 28
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 29
    .local v3, e:Ljava/lang/Exception;
    sget-object v4, Lcom/bitrhyms/tapjoylib/InitVideoAd;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v4, "ERROR_EVENT"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public videoComplete()V
    .locals 3

    .prologue
    .line 46
    sget-object v1, Lcom/bitrhyms/tapjoylib/InitVideoAd;->TAG:Ljava/lang/String;

    const-string v2, " videoStart "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 48
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 49
    const-string v1, "TAPJOY_VIDEO_LOAD_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public videoError(I)V
    .locals 3
    .parameter "statusCode"

    .prologue
    .line 37
    sget-object v1, Lcom/bitrhyms/tapjoylib/InitVideoAd;->TAG:Ljava/lang/String;

    const-string v2, " videoError "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 39
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 40
    const-string v1, "TAPJOY_VIDEO_LOAD_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public videoStart()V
    .locals 3

    .prologue
    .line 55
    sget-object v1, Lcom/bitrhyms/tapjoylib/InitVideoAd;->TAG:Ljava/lang/String;

    const-string v2, "  videoStart "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/bitrhyms/tapjoylib/AndroidExtensionContext;->getFreContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    .line 57
    .local v0, context:Lcom/adobe/fre/FREContext;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "TAPJOY_VIDEO_LOAD_EVENT"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method
