.class public Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;
.super Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;
.source "IAPContentServerInterface.java"


# static fields
.field private static final RECEIPT_CHECK_STATUS_OK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->TAG:Ljava/lang/String;

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

.method static synthetic access$0(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->getFormattedGoogleAccounts(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static queryContentServerForSignature(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
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

.method public static verifyPurchaseSignature(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endPoint"    # Ljava/lang/String;
    .param p2, "r"    # Lcom/amazon/inapp/purchasing/Receipt;
    .param p3, "divisionProfileId"    # Ljava/lang/String;
    .param p4, "amazonUserId"    # Ljava/lang/String;
    .param p5, "payload"    # Ljava/lang/String;
    .param p6, "thirdPartyId"    # Ljava/lang/String;
    .param p7, "debug"    # Z
    .param p8, "listner"    # Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;

    .prologue
    .line 69
    new-instance v0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;

    move-object v1, p3

    move/from16 v2, p7

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;-><init>(Ljava/lang/String;ZLcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;)V

    .line 134
    .local v0, "task":Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
    new-instance v1, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    const/4 v2, 0x3

    sget-object v3, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;)V

    sput-object v1, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->lastReceiptCheckTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 135
    sget-object v1, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->lastReceiptCheckTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    invoke-static {v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->submitWorker(Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;)Ljava/util/concurrent/Future;

    move-result-object v1

    sput-object v1, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->lastReceiptCheckFuture:Ljava/util/concurrent/Future;

    .line 136
    return-void
.end method
