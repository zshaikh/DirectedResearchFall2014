.class public Lcom/playtika/extensions/playhaven/PlayHavenShowFunction;
.super Ljava/lang/Object;
.source "PlayHavenShowFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;


# instance fields
.field private context:Lcom/playtika/extensions/playhaven/PlayHavenContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "params"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 22
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/playhaven/PlayHavenContext;

    move-object v5, v0

    iput-object v5, p0, Lcom/playtika/extensions/playhaven/PlayHavenShowFunction;->context:Lcom/playtika/extensions/playhaven/PlayHavenContext;

    .line 23
    const-string v3, ""

    .line 25
    .local v3, "place":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 30
    .local v1, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    invoke-direct {v4, v1, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 32
    .local v4, "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    invoke-virtual {v4, p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnContentListener(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$ContentDelegate;)V

    .line 33
    invoke-virtual {v4}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->send()V

    .line 35
    const/4 v5, 0x0

    return-object v5

    .line 26
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public didDismissContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;)V
    .locals 0
    .param p1, "arg0"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "arg1"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest$PHDismissType;

    .prologue
    .line 50
    return-void
.end method

.method public didDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 2
    .param p1, "arg0"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "arg1"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/playtika/extensions/playhaven/PlayHavenShowFunction;->context:Lcom/playtika/extensions/playhaven/PlayHavenContext;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/playhaven/PlayHavenContext;->dispatchEvent(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "arg0"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "arg1"    # Ljava/lang/Exception;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/playtika/extensions/playhaven/PlayHavenShowFunction;->context:Lcom/playtika/extensions/playhaven/PlayHavenContext;

    const-string v1, "fail"

    invoke-virtual {v0, v1}, Lcom/playtika/extensions/playhaven/PlayHavenContext;->dispatchEvent(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "arg0"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "arg1"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    return-void
.end method

.method public willDisplayContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;Lcom/playhaven/src/publishersdk/content/PHContent;)V
    .locals 0
    .param p1, "arg0"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    .param p2, "arg1"    # Lcom/playhaven/src/publishersdk/content/PHContent;

    .prologue
    .line 60
    return-void
.end method

.method public willGetContent(Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;)V
    .locals 0
    .param p1, "arg0"    # Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .prologue
    .line 64
    return-void
.end method
