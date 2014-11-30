.class Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;
.super Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;
.source "GamesysContentServerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->queryInventoryAsync(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$endPoint:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

.field private final synthetic val$params:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$params:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$endPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    .line 82
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundOperationsOver(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$listener:Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    invoke-interface {v0, p1}, Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;->onAyncOperationDone(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 87
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v1, "finalJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "payload"

    iget-object v4, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$params:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-boolean v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->error:Z

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->val$endPoint:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->queryInventory(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->internalResult:Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->internalResult:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->internalResult:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->internalResult:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->error:Z

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->internalResult:Ljava/lang/Object;

    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    iput-boolean v3, p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;->error:Z

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    move v2, v3

    .line 96
    goto :goto_1
.end method
