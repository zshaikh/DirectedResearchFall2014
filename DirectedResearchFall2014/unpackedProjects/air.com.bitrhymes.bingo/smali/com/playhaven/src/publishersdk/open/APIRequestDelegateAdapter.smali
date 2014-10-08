.class public Lcom/playhaven/src/publishersdk/open/APIRequestDelegateAdapter;
.super Ljava/lang/Object;
.source "APIRequestDelegateAdapter.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHOpenRequestListener;


# instance fields
.field private delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/open/APIRequestDelegateAdapter;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .line 20
    return-void
.end method


# virtual methods
.method public onOpenFailed(Lv2/com/playhaven/requests/open/PHOpenRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 3
    .param p1, "request"    # Lv2/com/playhaven/requests/open/PHOpenRequest;
    .param p2, "error"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/APIRequestDelegateAdapter;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/open/PHOpenRequest;
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p2}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method

.method public onOpenSuccessful(Lv2/com/playhaven/requests/open/PHOpenRequest;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/open/PHOpenRequest;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/APIRequestDelegateAdapter;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/open/PHOpenRequest;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V

    .line 26
    return-void
.end method
