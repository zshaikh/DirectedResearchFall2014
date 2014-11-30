.class public Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;
.super Ljava/lang/Object;
.source "RequestForApp.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field _context:Lcom/adobe/fre/FREContext;


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
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 22
    const-string v2, "PlayhavenEXt"

    const-string v3, "RequestForApp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-object p1, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->_context:Lcom/adobe/fre/FREContext;

    .line 25
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 26
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 28
    new-instance v1, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    .line 29
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, "request":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    new-instance v2, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;

    invoke-direct {v2, p0}, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp$1;-><init>(Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;)V

    invoke-virtual {v1, v2}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->setOpenRequestListener(Lv2/com/playhaven/listeners/PHOpenRequestListener;)V

    .line 48
    invoke-virtual {v1}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "request":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 49
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/bitrhymes/PlayHavenAndroidLib/RequestForApp;->_context:Lcom/adobe/fre/FREContext;

    const-string v3, "ERROR_EVENT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "AIR_AndroidDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
