.class public Lcom/playhaven/sampleapp/examples/PublisherOpenView;
.super Lcom/playhaven/sampleapp/examples/ExampleView;
.source "PublisherOpenView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# instance fields
.field private request:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/playhaven/sampleapp/examples/ExampleView;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const-string v0, "Open Request"

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/PublisherOpenView;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 45
    const-string v0, "Failed with error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "formattedJson":Ljava/lang/String;
    const-string v2, "Success with response: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "formattedJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public startRequest()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->startRequest()V

    .line 27
    new-instance v0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    invoke-direct {v0, p0, p0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherOpenView;->request:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    .line 29
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherOpenView;->request:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->send()V

    .line 31
    return-void
.end method
