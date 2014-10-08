.class public Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;
.super Ljava/lang/Object;
.source "MetadataDelegateAdapter.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHBadgeRequestListener;


# instance fields
.field private delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .line 18
    return-void
.end method


# virtual methods
.method public onBadgeRequestFailed(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 3
    .param p1, "request"    # Lv2/com/playhaven/requests/badge/PHBadgeRequest;
    .param p2, "error"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/badge/PHBadgeRequest;
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p2}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    .line 28
    return-void
.end method

.method public onBadgeRequestSucceeded(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "request"    # Lv2/com/playhaven/requests/badge/PHBadgeRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;->delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/badge/PHBadgeRequest;
    invoke-interface {v0, p1, p2}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V

    .line 23
    return-void
.end method
