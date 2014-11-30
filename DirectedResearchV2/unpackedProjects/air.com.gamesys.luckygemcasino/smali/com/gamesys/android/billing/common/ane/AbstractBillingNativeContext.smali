.class public abstract Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;
.super Lcom/gamesys/android/common/tools/fwk/AbstractContext;
.source "AbstractBillingNativeContext.java"

# interfaces
.implements Lcom/gamesys/android/billing/common/facade/INativeBillingContext;


# static fields
.field private static synthetic $SWITCH_TABLE$com$gamesys$android$billing$common$facade$BillingInterfaceAction:[I = null

.field protected static final APP_ID_BASE_64_METADATA_NAME:Ljava/lang/String; = "com.gamesys.android.billing.google.ane.APP_ID_BASE_64"

.field public static final BILLING_FUNCTION_NAME_BUY:Ljava/lang/String; = "bi.buy.item"

.field public static final BILLING_FUNCTION_NAME_QUERY_CONTENT_SERVER:Ljava/lang/String; = "bi.query.provider"

.field public static final BILLING_FUNCTION_NAME_QUERY_STORE:Ljava/lang/String; = "bi.query.store"

.field public static final BILLING_FUNCTION_NAME_SETUP:Ljava/lang/String; = "bi.setup"

.field public static final BILLING_FUNCTION_NAME_SHUTDOWN:Ljava/lang/String; = "bi.shutdown"

.field public static final INTENT_ACTION_AUTO_CLOSE:Ljava/lang/String; = "com.gamesys.android.billing.common.ane.INTENT_ACTION_AUTO_CLOSE"

.field public static final INTENT_ACTION_BUY_ITEM:Ljava/lang/String; = "INTENT_ACTION_BUY_ITEM"

.field public static final INTENT_KEY_PAYLOAD:Ljava/lang/String; = "INTENT_KEY_PAYLOAD"

.field public static final INTENT_KEY_PRODUCT_ID:Ljava/lang/String; = "INTENT_KEY_PRODUCT_ID"

.field public static final INTENT_KEY_THIRD_PARTY_ID:Ljava/lang/String; = "INTENT_KEY_THIRD_PARTY_ID"

.field public static final MAX_ATTEMPT_CONTENT_SERVER_CHECK_SIGNATURES:I = 0x5

.field public static final MAX_ATTEMPT_CONTENT_SERVER_ITEM_LIST:I = 0x3

.field public static final MAX_ATTEMPT_GOOGLE_PLAY_CONSUME_ITEM:I = 0x3

.field public static final MAX_ATTEMPT_GOOGLE_PLAY_ITEM_LIST:I = 0x3

.field protected static final PARAMS_KEY_ACTION_SETUP_MINIMAL:Ljava/lang/String; = "com.gamesys.android.billing.google.ane.PARAMS_KEY_ACTION_SETUP_MINIMAL"

.field protected static final PARAMS_KEY_LOG_TICKETS_PRESENCE:Ljava/lang/String; = "com.gamesys.android.billing.google.ane.PARAMS_KEY_LOG_TICKETS_PRESENCE"

.field protected static final PARAMS_KEY_QUERY_SKU_DETAILS:Ljava/lang/String; = " com.gamesys.android.billing.google.PARAMS_KEY_QUERY_SKU_DETAILS"

.field private static final REQUIRED_FUNCTION:[Ljava/lang/String;

.field protected static final SKU_LIST:Ljava/lang/String; = "com.gamesys.android.billing.common.ane.SKU_LIST"

.field protected static final SKU_LIST_FOR_CONSUMPTION:Ljava/lang/String; = "com.gamesys.android.billing.common.ane.SKU_LIST_FOR_CONSUMPTION"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionCountToCheckForAutoExecute:I

.field private actionsToDo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/gamesys/android/billing/common/facade/BillingAction;",
            ">;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field protected activityIsStarted:Z

.field private broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private cdl:Ljava/util/concurrent/CountDownLatch;

.field private isBuyActionForDebug:Z

.field private final itemInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/gamesys/android/billing/common/fwk/BuyableItem;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/common/tools/fwk/IStatusEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private logTicketsPresence:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mContentServerUrl:Ljava/lang/String;

.field protected mNonConsumableSku:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;

.field private pendingAutoclose:Z

.field private unitTestingFlag:Z


# direct methods
.method static synthetic $SWITCH_TABLE$com$gamesys$android$billing$common$facade$BillingInterfaceAction()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->$SWITCH_TABLE$com$gamesys$android$billing$common$facade$BillingInterfaceAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->values()[Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->BUY_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->CONSUME_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_CONTENT_SERVER:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE_PURCHASES:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SETUP:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SHUTDOWN:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v1}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->$SWITCH_TABLE$com$gamesys$android$billing$common$facade$BillingInterfaceAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bi.setup"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 77
    const-string v2, "bi.shutdown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bi.query.provider"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bi.query.store"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bi.buy.item"

    aput-object v2, v0, v1

    .line 76
    sput-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->REQUIRED_FUNCTION:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "extensionIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/gamesys/android/common/tools/fwk/AbstractContext;-><init>(Ljava/lang/String;)V

    .line 118
    iput-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mNonConsumableSku:Ljava/util/Set;

    .line 124
    iput-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mUserId:Ljava/lang/String;

    .line 127
    iput-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mContentServerUrl:Ljava/lang/String;

    .line 133
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    .line 139
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->activityIsStarted:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->listeners:Ljava/util/List;

    .line 145
    iput-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->activity:Landroid/app/Activity;

    .line 148
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->unitTestingFlag:Z

    .line 151
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->isBuyActionForDebug:Z

    .line 154
    iput-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    .line 157
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionsToDo:Ljava/util/Vector;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->itemInfo:Ljava/util/Map;

    .line 167
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->logTicketsPresence:Z

    .line 173
    iput v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionCountToCheckForAutoExecute:I

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->parseContentServerResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addSetupIfNedded(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p1

    .line 789
    .local v0, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 790
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 792
    .restart local v0    # "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v1, "com.gamesys.android.billing.google.ane.PARAMS_KEY_ACTION_SETUP_MINIMAL"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueSetup(Ljava/lang/String;Ljava/util/Map;)V

    .line 794
    return-void
.end method

.method private checkAndExecuteIfNeeded()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionsToDo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionCountToCheckForAutoExecute:I

    if-ne v0, v1, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeNextAction()V

    .line 718
    :cond_0
    return-void
.end method

.method private executeActionQueryContentServerInternal(Ljava/util/Map;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 4
    .param p2, "listener"    # Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "com.gamesys.android.billing.common.ane.CODE_QUERY_ITEM_PROVIDER_IN_PROGESS"

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    invoke-direct {p0, v2, v3, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    .line 288
    const-string v2, "com.gamesys.android.billing.google.ane.APP_ID_BASE_64"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "contentServerUrl"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, "contentServerUrl":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 292
    .local v1, "params":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 293
    sget-object v2, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    const-string v3, "No content serverl url provided to request item from content server"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v2, "com.gamesys.android.billing.common.ane.CODE_PROVIDER_ERROR"

    const-string v3, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER"

    invoke-direct {p0, v2, v3, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    .line 324
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;

    invoke-direct {v3, p0, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext$1;-><init>(Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->queryInventoryAsync(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    goto :goto_0
.end method

.method private handleQueryContentResult(Ljava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    .prologue
    .line 267
    if-eqz p3, :cond_1

    .line 268
    const-string v0, "com.gamesys.android.billing.common.ane.LEVEL_QUERY_ITEM_GAMESYS_PROVIDER_SUCCESS"

    if-ne p2, v0, :cond_0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-interface {p3, v0}, Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;->onAyncOperationDone(Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseContentServerResult(Ljava/lang/String;)Z
    .locals 14
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 352
    const/4 v6, 0x0

    .line 353
    .local v6, "obj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 354
    .local v2, "data":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 356
    .local v8, "offersByType":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 357
    .local v9, "tickets":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 358
    .local v10, "ticketsItems":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 359
    .local v0, "coins":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 363
    .local v1, "coinsItems":Lorg/json/JSONArray;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v6    # "obj":Lorg/json/JSONObject;
    .local v7, "obj":Lorg/json/JSONObject;
    :try_start_1
    const-string v11, "Data"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 365
    const-string v11, "OffersByType"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 373
    :try_start_2
    const-string v11, "Tickets"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 374
    const-string v11, "Items"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 377
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    if-lt v4, v11, :cond_1

    .line 389
    .end local v4    # "i":I
    :cond_0
    :goto_1
    :try_start_3
    const-string v11, "Coins"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 390
    const-string v11, "Items"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 393
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    if-lt v4, v11, :cond_2

    .line 402
    .end local v4    # "i":I
    :goto_3
    const/4 v11, 0x1

    move-object v6, v7

    .end local v7    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    :goto_4
    return v11

    .line 366
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Lorg/json/JSONException;
    :goto_5
    sget-object v11, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to find data or Offers "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    const/4 v11, 0x0

    goto :goto_4

    .line 378
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v7    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 379
    .local v5, "o":Lorg/json/JSONObject;
    const-string v11, "Sku"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "SignedItem"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->addItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 381
    .end local v4    # "i":I
    .end local v5    # "o":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 382
    .restart local v3    # "e":Lorg/json/JSONException;
    iget-boolean v11, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->logTicketsPresence:Z

    if-eqz v11, :cond_0

    .line 383
    sget-object v11, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to store signedItems for tickets : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 394
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v4    # "i":I
    :cond_2
    :try_start_5
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 395
    .restart local v5    # "o":Lorg/json/JSONObject;
    const-string v11, "Sku"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "SignedItem"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->addItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 398
    .end local v4    # "i":I
    .end local v5    # "o":Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    .line 399
    .restart local v3    # "e":Lorg/json/JSONException;
    sget-object v11, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to store signedItems for Coins : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 366
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    goto :goto_5
.end method


# virtual methods
.method public addItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->itemInfo:Ljava/util/Map;

    new-instance v1, Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    invoke-direct {v1, p1, p2}, Lcom/gamesys/android/billing/common/fwk/BuyableItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public autoCloseBroadcastProcessed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-boolean v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    if-eqz v0, :cond_0

    .line 637
    iput-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->activityIsStarted:Z

    .line 639
    :cond_0
    iput-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    .line 640
    return-void
.end method

.method protected closeAndroidInterfaceActivity()V
    .locals 4

    .prologue
    .line 600
    iget-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->activityIsStarted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    if-nez v1, :cond_0

    .line 601
    sget-object v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    const-string v2, "Closing AndroidIABInterface..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.gamesys.android.billing.common.ane.INTENT_ACTION_AUTO_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    .line 607
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 611
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 609
    :cond_0
    sget-object v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No Need to close AneActivity :: { [opened = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->activityIsStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],[pending auto close = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionsToDo:Ljava/util/Vector;

    .line 799
    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->listeners:Ljava/util/List;

    .line 800
    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mNonConsumableSku:Ljava/util/Set;

    .line 801
    return-void
.end method

.method public enableDebug(Z)Z
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 594
    invoke-static {p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->enableDebug(Z)V

    .line 595
    return p1
.end method

.method protected enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V
    .locals 4
    .param p2, "action"    # Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enqueuing : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v1, 0x0

    iput v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionCountToCheckForAutoExecute:I

    .line 772
    iget-boolean v1, p2, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->setupRequired:Z

    if-eqz v1, :cond_0

    .line 773
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->addSetupIfNedded(Ljava/util/Map;)V

    .line 775
    :cond_0
    new-instance v0, Lcom/gamesys/android/billing/common/facade/BillingAction;

    invoke-direct {v0, p2, p1}, Lcom/gamesys/android/billing/common/facade/BillingAction;-><init>(Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;Ljava/util/Map;)V

    .line 776
    .local v0, "a":Lcom/gamesys/android/billing/common/facade/BillingAction;
    iget-object v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionsToDo:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 777
    iget v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionCountToCheckForAutoExecute:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionCountToCheckForAutoExecute:I

    .line 778
    return-void
.end method

.method protected enqueueBuyItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "thirdPartyId"    # Ljava/lang/String;
    .param p4, "debug"    # Z

    .prologue
    .line 574
    iput-boolean p4, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->isBuyActionForDebug:Z

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "INTENT_KEY_PRODUCT_ID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v1, "INTENT_KEY_PAYLOAD"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string v1, "INTENT_KEY_THIRD_PARTY_ID"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->BUY_ITEM:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 580
    return-void
.end method

.method protected abstract enqueueConsumeItem(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected enqueueQueryContentServer(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_CONTENT_SERVER:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, p1, v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 506
    return-void
.end method

.method protected enqueueQueryFromStore(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "com.gamesys.android.billing.common.ane.SKU_LIST"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v1, " com.gamesys.android.billing.google.PARAMS_KEY_QUERY_SKU_DETAILS"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 529
    return-void
.end method

.method protected enqueueQueryPruchasesFromStore()V
    .locals 2

    .prologue
    .line 544
    const/4 v0, 0x0

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->QUERY_STORE_PURCHASES:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 545
    return-void
.end method

.method protected enqueueSetup(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    .local v0, "b":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "com.gamesys.android.billing.google.ane.APP_ID_BASE_64"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 469
    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SETUP:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 470
    return-void
.end method

.method protected enqueueShutdown()V
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    sget-object v1, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->SHUTDOWN:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueAction(Ljava/util/Map;Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;)V

    .line 486
    return-void
.end method

.method protected abstract executeActionBuyItem(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract executeActionConsume(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected executeActionQueryContentServer(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionQueryContentServerInternal(Ljava/util/Map;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    .line 246
    return-void
.end method

.method protected executeActionQueryContentServer(Ljava/util/Map;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionQueryContentServerInternal(Ljava/util/Map;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    .line 256
    return-void
.end method

.method protected abstract executeActionQueryPurchases()V
.end method

.method protected abstract executeActionQueryStore(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected executeActionSetup(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method protected abstract executeActionShutdown()V
.end method

.method protected executeNextAction()V
    .locals 4

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "a":Lcom/gamesys/android/billing/common/facade/BillingAction;
    iget-object v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionsToDo:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->actionsToDo:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "a":Lcom/gamesys/android/billing/common/facade/BillingAction;
    check-cast v0, Lcom/gamesys/android/billing/common/facade/BillingAction;

    .line 729
    .restart local v0    # "a":Lcom/gamesys/android/billing/common/facade/BillingAction;
    :cond_0
    if-eqz v0, :cond_1

    .line 730
    sget-object v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Performing : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    iget-object v3, v3, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->$SWITCH_TABLE$com$gamesys$android$billing$common$facade$BillingInterfaceAction()[I

    move-result-object v1

    iget-object v2, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->actionToDo:Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;

    invoke-virtual {v2}, Lcom/gamesys/android/billing/common/facade/BillingInterfaceAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 761
    :goto_0
    return-void

    .line 733
    :pswitch_0
    iget-object v1, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->parameters:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionConsume(Ljava/util/Map;)V

    goto :goto_0

    .line 736
    :pswitch_1
    iget-object v1, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->parameters:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionQueryContentServer(Ljava/util/Map;)V

    goto :goto_0

    .line 739
    :pswitch_2
    iget-object v1, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->parameters:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionQueryStore(Ljava/util/Map;)V

    goto :goto_0

    .line 742
    :pswitch_3
    iget-object v1, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->parameters:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionSetup(Ljava/util/Map;)V

    goto :goto_0

    .line 745
    :pswitch_4
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionShutdown()V

    goto :goto_0

    .line 748
    :pswitch_5
    iget-object v1, v0, Lcom/gamesys/android/billing/common/facade/BillingAction;->parameters:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionBuyItem(Ljava/util/Map;)V

    goto :goto_0

    .line 751
    :pswitch_6
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeActionQueryPurchases()V

    goto :goto_0

    .line 757
    :cond_1
    sget-object v1, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    const-string v2, "Performing : auto close... "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->closeAndroidInterfaceActivity()V

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public getAllItemsInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/gamesys/android/billing/common/fwk/BuyableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->itemInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public getContentServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mContentServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDivisionProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    sget-object v3, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    const-string v4, "getFunctions"

    invoke-static {v3, v4}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getFunctionsExposed()Ljava/util/Map;

    move-result-object v2

    .line 420
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    if-nez v2, :cond_0

    .line 421
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const/4 v3, 0x2

    const/high16 v4, 0x3f800000

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    .line 423
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    :cond_0
    const-string v3, "bi.query.provider"

    new-instance v4, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;

    invoke-direct {v4}, Lcom/gamesys/android/billing/common/ane/QueryItemFromProviderFunction;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v3, "bi.setup"

    new-instance v4, Lcom/gamesys/android/billing/common/ane/SetupFunction;

    invoke-direct {v4}, Lcom/gamesys/android/billing/common/ane/SetupFunction;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v3, "bi.buy.item"

    new-instance v4, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;

    invoke-direct {v4}, Lcom/gamesys/android/billing/common/ane/PurchaseItemFunction;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v3, "bi.query.store"

    new-instance v4, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;

    invoke-direct {v4}, Lcom/gamesys/android/billing/common/ane/QueryItemFromStoreFunction;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v3, "setDebug"

    new-instance v4, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;

    invoke-direct {v4}, Lcom/gamesys/android/billing/common/ane/EnableDebugFunction;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v3, "id.platform.installer"

    new-instance v4, Lcom/gamesys/android/common/tools/ane/StoreInstallerFunction;

    invoke-direct {v4}, Lcom/gamesys/android/common/tools/ane/StoreInstallerFunction;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->REQUIRED_FUNCTION:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 439
    return-object v2

    .line 432
    :cond_1
    sget-object v3, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->REQUIRED_FUNCTION:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 433
    new-instance v0, Lcom/gamesys/android/common/tools/NotImplementedFunctionException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The function: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->REQUIRED_FUNCTION:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be defined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/gamesys/android/common/tools/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "e":Lcom/gamesys/android/common/tools/NotImplementedFunctionException;
    sget-object v3, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    const-string v4, "Missing functions definition"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    throw v0

    .line 431
    .end local v0    # "e":Lcom/gamesys/android/common/tools/NotImplementedFunctionException;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract getFunctionsExposed()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation
.end method

.method public getPayload(Ljava/lang/String;)Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    .locals 2
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->itemInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    .line 193
    .local v0, "item":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    return-object v0
.end method

.method public isBuyItemForDebug()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->isBuyActionForDebug:Z

    return v0
.end method

.method public notifyActionDone()V
    .locals 2

    .prologue
    .line 695
    sget-object v0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->TAG:Ljava/lang/String;

    const-string v1, "Context notified : action is over"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v0, "com.gamesys.android.ane.CODE_INTERNAL_ACTION_DONE"

    const-string v1, "com.gamesys.android.ane.LEVEL_INTERNAL"

    invoke-virtual {p0, v0, v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->closeAndroidInterfaceActivity()V

    .line 706
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->executeNextAction()V

    .line 707
    return-void
.end method

.method public performBuyItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "productID"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "thirdPartyId"    # Ljava/lang/String;
    .param p4, "debug"    # Z

    .prologue
    .line 566
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueBuyItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 567
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 568
    return-void
.end method

.method public performConsumeItem(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueConsumeItem(Ljava/util/Map;)V

    .line 553
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 554
    return-void
.end method

.method public performQueryContentServer(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueQueryContentServer(Ljava/util/Map;)V

    .line 496
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 497
    return-void
.end method

.method public performQueryFromStore(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "skus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueQueryFromStore(Ljava/util/Set;)V

    .line 516
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 517
    return-void
.end method

.method public performQueryPruchasesFromStore()V
    .locals 0

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueQueryPruchasesFromStore()V

    .line 537
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 538
    return-void
.end method

.method public performSetup(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 454
    const-string v2, "com.gamesys.android.billing.google.ane.PARAMS_KEY_LOG_TICKETS_PRESENCE"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "com.gamesys.android.billing.google.ane.PARAMS_KEY_LOG_TICKETS_PRESENCE"

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->logTicketsPresence:Z

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueSetup(Ljava/lang/String;Ljava/util/Map;)V

    .line 456
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 457
    return-void

    .line 449
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "p":Ljava/lang/Object;
    move-object v0, v1

    .line 450
    check-cast v0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;

    .line 451
    .local v0, "i":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    iget-object v3, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->itemInfo:Ljava/util/Map;

    iget-object v4, v0, Lcom/gamesys/android/billing/common/fwk/BuyableItem;->sku:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    .end local v0    # "i":Lcom/gamesys/android/billing/common/fwk/BuyableItem;
    .end local v1    # "p":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public performShutdown()V
    .locals 0

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->enqueueShutdown()V

    .line 478
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->checkAndExecuteIfNeeded()V

    .line 479
    return-void
.end method

.method public registerAutoCloseReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 619
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 620
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.gamesys.android.billing.common.ane.INTENT_ACTION_AUTO_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 625
    iget-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    if-eqz v1, :cond_0

    .line 626
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->pendingAutoclose:Z

    .line 627
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->closeAndroidInterfaceActivity()V

    .line 629
    :cond_0
    return-void
.end method

.method public setContentServerUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mContentServerUrl:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public setDivisionProfileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dpi"    # Ljava/lang/String;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->mUserId:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->getBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 649
    return-void
.end method
