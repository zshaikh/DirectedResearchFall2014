.class Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;
.super Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;
.source "IAPContentServerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->verifyPurchaseSignature(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$amazonUserId:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$debug:Z

.field private final synthetic val$divisionProfileId:Ljava/lang/String;

.field private final synthetic val$endPoint:Ljava/lang/String;

.field private final synthetic val$listner:Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;

.field private final synthetic val$payload:Ljava/lang/String;

.field private final synthetic val$r:Lcom/amazon/inapp/purchasing/Receipt;

.field private final synthetic val$thirdPartyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/amazon/inapp/purchasing/Receipt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$divisionProfileId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$debug:Z

    iput-object p3, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$r:Lcom/amazon/inapp/purchasing/Receipt;

    iput-object p4, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$amazonUserId:Ljava/lang/String;

    iput-object p5, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$payload:Ljava/lang/String;

    iput-object p6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$thirdPartyId:Ljava/lang/String;

    iput-object p7, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$context:Landroid/content/Context;

    iput-object p8, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$endPoint:Ljava/lang/String;

    iput-object p9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$listner:Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;

    .line 69
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundOperationsOver(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->error:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$listner:Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;

    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$r:Lcom/amazon/inapp/purchasing/Receipt;

    invoke-interface {v0, v1, p1}, Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;->onError(Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$listner:Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;

    iget-object v1, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$r:Lcom/amazon/inapp/purchasing/Receipt;

    invoke-interface {v0, v1, p1}, Lcom/gamesys/android/billing/amazon/fwk/IServerAsyncCheckPurchase;->onSuccess(Lcom/amazon/inapp/purchasing/Receipt;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "o":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "DivisionProfileId"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$divisionProfileId:Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v6, "test_mode"

    iget-boolean v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$debug:Z

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 80
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v2, "receipt_data":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v5, "unsignedData":Lorg/json/JSONObject;
    const-string v6, "sku"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$r:Lcom/amazon/inapp/purchasing/Receipt;

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v6, "unsigned_data"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v6, "amazon_user_id"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$amazonUserId:Ljava/lang/String;

    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v6, "token"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$r:Lcom/amazon/inapp/purchasing/Receipt;

    invoke-virtual {v9}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v6, "receipt_data"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v6, "signed_item"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$payload:Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v6, "thirdPartyId"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$thirdPartyId:Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v6, "google_accounts"

    iget-object v9, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->getFormattedGoogleAccounts(Landroid/content/Context;)Lorg/json/JSONArray;
    invoke-static {v9}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->access$0(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2    # "receipt_data":Lorg/json/JSONObject;
    .end local v5    # "unsignedData":Lorg/json/JSONObject;
    :goto_0
    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->val$endPoint:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->queryContentServerForSignature(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    .line 100
    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 101
    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x5

    if-lt v6, v9, :cond_2

    :cond_0
    move v6, v7

    .line 100
    :goto_1
    iput-boolean v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->error:Z

    .line 103
    iget-boolean v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->error:Z

    if-nez v6, :cond_1

    .line 106
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "res":Lorg/json/JSONObject;
    const-string v6, "Status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 110
    .local v4, "status":I
    if-ne v4, v8, :cond_3

    .line 111
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->error:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v3    # "res":Lorg/json/JSONObject;
    .end local v4    # "status":I
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->internalResult:Ljava/lang/Object;

    return-object v6

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->access$1()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Unable to create JSON for receipt verification"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    move v6, v8

    .line 101
    goto :goto_1

    .line 113
    .restart local v3    # "res":Lorg/json/JSONObject;
    .restart local v4    # "status":I
    :cond_3
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->error:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 115
    .end local v3    # "res":Lorg/json/JSONObject;
    .end local v4    # "status":I
    :catch_1
    move-exception v0

    .line 116
    .restart local v0    # "e":Lorg/json/JSONException;
    # getter for: Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface;->access$1()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Unable to decode the resulting Json from the verification endpoint"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean v8, p0, Lcom/gamesys/android/billing/amazon/fwk/IAPContentServerInterface$1;->error:Z

    goto :goto_2
.end method
