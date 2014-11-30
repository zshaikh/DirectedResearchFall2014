.class public Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;
.super Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;
.source "IABContentServerInterface.java"


# static fields
.field private static final RECEIPT_CHECK_STATUS_OK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static queryContentServerForReceiptCheck(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p0, "endPoint"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    new-instance v1, Lcom/gamesys/android/billing/common/fwk/ClientUri;

    invoke-direct {v1, p1, p0}, Lcom/gamesys/android/billing/common/fwk/ClientUri;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 41
    .local v1, "uri":Lcom/gamesys/android/billing/common/fwk/ClientUri;
    invoke-static {v1}, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->performRequest(Lcom/gamesys/android/billing/common/fwk/ClientUri;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "res":Ljava/lang/Object;
    return-object v0
.end method

.method public static verifyPurchaseSignature(Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;ZLcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endPoint"    # Ljava/lang/String;
    .param p2, "p"    # Lcom/gamesys/android/billing/google/util/Purchase;
    .param p3, "divisionProfileId"    # Ljava/lang/String;
    .param p4, "thirdPartyId"    # Ljava/lang/String;
    .param p5, "debug"    # Z
    .param p6, "listener"    # Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "DivisionProfileId"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v4, "test_mode"

    invoke-virtual {v1, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v2, "receipt_data":Lorg/json/JSONObject;
    const-string v4, "unsigned_data"

    invoke-virtual {p2}, Lcom/gamesys/android/billing/google/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v4, "signature"

    invoke-virtual {p2}, Lcom/gamesys/android/billing/google/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v4, "receipt_data"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v4, "signed_item"

    invoke-virtual {p2}, Lcom/gamesys/android/billing/google/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v4, "thirdPartyId"

    invoke-virtual {v1, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v4, "google_accounts"

    invoke-static {p0}, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->getFormattedGoogleAccounts(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "receipt_data":Lorg/json/JSONObject;
    :goto_0
    new-instance v3, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;

    invoke-direct {v3, p1, v1, p6, p2}, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 131
    .local v3, "task":Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
    new-instance v4, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    const/4 v5, 0x3

    sget-object v6, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->TAG:Ljava/lang/String;

    invoke-direct {v4, v5, v6, p1, v3}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;)V

    sput-object v4, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->lastReceiptCheckTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 132
    sget-object v4, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->lastReceiptCheckTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    invoke-static {v4}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->submitWorker(Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;)Ljava/util/concurrent/Future;

    move-result-object v4

    sput-object v4, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->lastReceiptCheckFuture:Ljava/util/concurrent/Future;

    .line 133
    return-void

    .line 85
    .end local v3    # "task":Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->TAG:Ljava/lang/String;

    const-string v5, "Unable to create JSON for receipt verification"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
