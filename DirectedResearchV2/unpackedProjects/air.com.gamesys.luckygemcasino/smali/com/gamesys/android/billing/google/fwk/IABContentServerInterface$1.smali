.class Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;
.super Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;
.source "IABContentServerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->verifyPurchaseSignature(Landroid/content/Context;Ljava/lang/String;Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/String;Ljava/lang/String;ZLcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$endPoint:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;

.field private final synthetic val$o:Lorg/json/JSONObject;

.field private final synthetic val$p:Lcom/gamesys/android/billing/google/util/Purchase;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;Lcom/gamesys/android/billing/google/util/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$endPoint:Ljava/lang/String;

    iput-object p2, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$o:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;

    iput-object p4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$p:Lcom/gamesys/android/billing/google/util/Purchase;

    .line 89
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundOperationsOver(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;

    if-eqz v0, :cond_0

    .line 122
    iget-boolean v0, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->error:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$p:Lcom/gamesys/android/billing/google/util/Purchase;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;->onError(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/Object;Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$p:Lcom/gamesys/android/billing/google/util/Purchase;

    invoke-interface {v0, v1, p1}, Lcom/gamesys/android/billing/google/fwk/IServerAsyncCheckPurchase;->onSuccess(Lcom/gamesys/android/billing/google/util/Purchase;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 93
    iget-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$endPoint:Ljava/lang/String;

    iget-object v7, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->val$o:Lorg/json/JSONObject;

    invoke-static {v4, v7}, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->queryContentServerForReceiptCheck(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 95
    iget-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x5

    if-lt v4, v7, :cond_2

    :cond_0
    move v4, v5

    .line 94
    :goto_0
    iput-boolean v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->error:Z

    .line 97
    iget-boolean v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->error:Z

    if-nez v4, :cond_1

    .line 98
    iget-object v1, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 102
    .local v1, "httpResult":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "res":Lorg/json/JSONObject;
    const-string v4, "Status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, "status":I
    if-ne v3, v6, :cond_3

    .line 107
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->error:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "httpResult":Ljava/lang/String;
    .end local v2    # "res":Lorg/json/JSONObject;
    .end local v3    # "status":I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->internalResult:Ljava/lang/Object;

    return-object v4

    :cond_2
    move v4, v6

    .line 95
    goto :goto_0

    .line 109
    .restart local v1    # "httpResult":Ljava/lang/String;
    .restart local v2    # "res":Lorg/json/JSONObject;
    .restart local v3    # "status":I
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->error:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 111
    .end local v2    # "res":Lorg/json/JSONObject;
    .end local v3    # "status":I
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to decode the resulting Json from the verification endpoint"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-boolean v6, p0, Lcom/gamesys/android/billing/google/fwk/IABContentServerInterface$1;->error:Z

    goto :goto_1
.end method
