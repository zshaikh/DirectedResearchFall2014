.class public Lcom/playhaven/sampleapp/examples/PublisherIAPView;
.super Lcom/playhaven/sampleapp/examples/ExampleView;
.source "PublisherIAPView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# instance fields
.field private request:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/playhaven/sampleapp/examples/ExampleView;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const-string v0, "IAP Tracking Request"

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/PublisherIAPView;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 47
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

    .line 49
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
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

    .line 45
    .end local v1    # "formattedJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public startRequest()V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->startRequest()V

    .line 30
    new-instance v0, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    const-string v1, "sword_003"

    const/4 v2, 0x2

    sget-object v3, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherIAPView;->request:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    .line 32
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/PublisherIAPView;->request:Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/purchases/PHPublisherIAPTrackingRequest;->send()V

    .line 33
    return-void
.end method
