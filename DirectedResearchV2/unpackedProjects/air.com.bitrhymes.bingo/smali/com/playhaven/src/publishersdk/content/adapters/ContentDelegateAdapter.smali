.class public Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;
.super Ljava/lang/Object;
.source "ContentDelegateAdapter.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHContentRequestListener;


# instance fields
.field private content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

.field private failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

.field private request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "content_delegate"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    .param p2, "failure_delegate"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    .param p3, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    .line 33
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    .line 34
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .line 35
    return-void
.end method


# virtual methods
.method public getContentDelegate()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    return-object v0
.end method

.method public getFailureDelegate()Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    return-object v0
.end method

.method public getRequestDelegate()Lcom/playhaven/src/common/PHAPIRequest$Delegate;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    return-object v0
.end method

.method public hasContentDelegate()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFailureDelegate()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestDelegate()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismissedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "type"    # Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    invoke-static {p2}, Lcom/playhaven/src/utils/EnumConversion;->convertToOldDismiss(Lv2/com/playhaven/requests/content/PHContentRequest$PHDismissType;)Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onDisplayedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {v1, p2}, Lcom/playhaven/src/publishersdk/content/PHContent;-><init>(Lv2/com/playhaven/model/PHContent;)V

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onFailedToDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 4
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "error"    # Lv2/com/playhaven/model/PHError;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    if-eqz v1, :cond_1

    .line 105
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    move-object v0, p1

    check-cast v0, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    move-object v1, v0

    invoke-virtual {p2}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;->didFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->failure_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p2}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$FailureDelegate;->contentDidFail(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Ljava/lang/Exception;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    :cond_1
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p2}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    goto :goto_0

    .line 112
    .restart local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    :cond_2
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {p2}, Lv2/com/playhaven/model/PHError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onNoContent(Lv2/com/playhaven/requests/content/PHContentRequest;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;->NoContentTriggered:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onReceivedContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->request_delegate:Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    check-cast p1, Lcom/playhaven/src/common/PHAPIRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    iget-object v1, p2, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/common/PHAPIRequest$Delegate;->requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    :cond_1
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/common/PHAPIRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    iget-object v1, p2, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onSentContentRequest(Lv2/com/playhaven/requests/content/PHContentRequest;)V
    .locals 1
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    invoke-interface {v0, p1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onWillDisplayContent(Lv2/com/playhaven/requests/content/PHContentRequest;Lv2/com/playhaven/model/PHContent;)V
    .locals 2
    .param p1, "request"    # Lv2/com/playhaven/requests/content/PHContentRequest;
    .param p2, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/adapters/ContentDelegateAdapter;->content_delegate:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;

    check-cast p1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/content/PHContentRequest;
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHContent;

    invoke-direct {v1, p2}, Lcom/playhaven/src/publishersdk/content/PHContent;-><init>(Lv2/com/playhaven/model/PHContent;)V

    invoke-interface {v0, p1, v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;->willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V

    .line 83
    :cond_0
    return-void
.end method
