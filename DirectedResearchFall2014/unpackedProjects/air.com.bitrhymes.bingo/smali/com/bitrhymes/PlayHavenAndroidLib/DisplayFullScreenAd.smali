.class public Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;
.super Ljava/lang/Object;
.source "DisplayFullScreenAd.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field private _context:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)Lcom/adobe/fre/FREContext;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "context"
    .parameter "args"

    .prologue
    const-string v5, "ERROR_EVENT"

    const-string v4, "PlayhavenEXt"

    .line 21
    const-string v2, "PlayhavenEXt"

    const-string v2, "DisplayFullScreenAd"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p1, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;

    .line 27
    :try_start_0
    const-string v2, "PlayhavenEXt"

    const-string v3, "DisplayFullScreenAd : suc"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 29
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 31
    new-instance v1, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;

    .line 32
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-direct {v1, v2, v3}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 33
    .local v1, request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    new-instance v2, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;

    invoke-direct {v2, p0}, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd$1;-><init>(Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;)V

    invoke-virtual {v1, v2}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->setOnContentListener(Lv2/com/playhaven/listeners/PHContentRequestListener;)V

    .line 83
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #request:Lcom/playhaven/src/publishersdk/content/PHPublisherContentRequest;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 84
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PlayhavenEXt"

    const-string v2, "DisplayFullScreenAd : failed"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/bitrhymes/PlayHavenAndroidLib/DisplayFullScreenAd;->_context:Lcom/adobe/fre/FREContext;

    const-string v3, "ERROR_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "ERROR_EVENT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
