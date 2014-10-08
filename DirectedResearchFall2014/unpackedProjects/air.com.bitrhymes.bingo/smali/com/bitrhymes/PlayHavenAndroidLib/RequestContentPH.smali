.class public Lcom/bitrhymes/PlayHavenAndroidLib/RequestContentPH;
.super Ljava/lang/Object;
.source "RequestContentPH.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# instance fields
.field context:Lcom/adobe/fre/FREContext;


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
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const-string v4, "PlayhavenEXt"

    .line 22
    const-string v2, "PlayhavenEXt"

    const-string v2, "RequestContentPH"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-object p1, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestContentPH;->context:Lcom/adobe/fre/FREContext;

    .line 26
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 27
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 29
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 30
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-direct {v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 31
    .local v1, "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "request":Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 32
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PlayhavenEXt"

    const-string v2, "RequestContentPH : failed"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v2, "ERROR_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 44
    const-string v0, "PlayhavenEXt"

    const-string v1, "RequestContentPH : requestFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestContentPH;->context:Lcom/adobe/fre/FREContext;

    const-string v1, "PH_REQUEST_CONTENT_EVENT"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    :try_start_0
    const-string v2, "PlayhavenEXt"

    const-string v3, "RequestContentPH : requestSucceeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "formattedJson":Ljava/lang/String;
    iget-object v2, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestContentPH;->context:Lcom/adobe/fre/FREContext;

    const-string v3, "PH_REQUEST_CONTENT_EVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "1,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "formattedJson":Ljava/lang/String;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
