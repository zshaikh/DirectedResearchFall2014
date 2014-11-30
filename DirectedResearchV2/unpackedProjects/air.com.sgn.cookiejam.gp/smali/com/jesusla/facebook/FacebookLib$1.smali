.class Lcom/jesusla/facebook/FacebookLib$1;
.super Ljava/lang/Object;
.source "FacebookLib.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jesusla/facebook/FacebookLib;->graph(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/jesusla/ane/Closure;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/facebook/FacebookLib;

.field final synthetic val$callback:Lcom/jesusla/ane/Closure;


# direct methods
.method constructor <init>(Lcom/jesusla/facebook/FacebookLib;Lcom/jesusla/ane/Closure;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/jesusla/facebook/FacebookLib$1;->this$0:Lcom/jesusla/facebook/FacebookLib;

    iput-object p2, p0, Lcom/jesusla/facebook/FacebookLib$1;->val$callback:Lcom/jesusla/ane/Closure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/jesusla/facebook/FacebookLib$1;->val$callback:Lcom/jesusla/ane/Closure;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    .local v0, "data":Lorg/json/JSONObject;
    :goto_0
    iget-object v1, p0, Lcom/jesusla/facebook/FacebookLib$1;->val$callback:Lcom/jesusla/ane/Closure;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 200
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getRequestResultBody()Lorg/json/JSONObject;

    move-result-object v0

    .restart local v0    # "data":Lorg/json/JSONObject;
    goto :goto_0
.end method
