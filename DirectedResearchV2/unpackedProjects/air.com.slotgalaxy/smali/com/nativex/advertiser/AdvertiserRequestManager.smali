.class public Lcom/nativex/advertiser/AdvertiserRequestManager;
.super Ljava/lang/Object;
.source "AdvertiserRequestManager.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static actionTaken(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Lcom/nativex/advertiser/communication/ActionTakenRequest;

    invoke-direct {v1}, Lcom/nativex/advertiser/communication/ActionTakenRequest;-><init>()V

    .line 53
    .local v1, "request":Lcom/nativex/advertiser/communication/ActionTakenRequest;
    invoke-virtual {v1, p0}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setActionId(I)V

    .line 54
    new-instance v2, Lcom/nativex/advertiser/HttpConnectionManager;

    invoke-direct {v2}, Lcom/nativex/advertiser/HttpConnectionManager;-><init>()V

    invoke-virtual {v2}, Lcom/nativex/advertiser/HttpConnectionManager;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 55
    new-instance v2, Lcom/nativex/advertiser/AdvertiserRequestManager$1;

    invoke-direct {v2}, Lcom/nativex/advertiser/AdvertiserRequestManager$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/nativex/advertiser/communication/ActionTakenRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 81
    new-instance v2, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;

    invoke-direct {v2, v1}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;-><init>(Lcom/nativex/common/Request;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "request":Lcom/nativex/advertiser/communication/ActionTakenRequest;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AdvertiserRequestManager: Unexpected exception caught in actionTaken()"

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
