.class Lcom/nativex/monetization/communication/ServerRequestManager$7;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->getOfferCache(Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$7;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$7;->val$listener:Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 3
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 378
    if-eqz p1, :cond_1

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$7;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$7;->val$listener:Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;

    invoke-virtual {v1, p2, v2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleGetOfferCache(Lcom/nativex/common/Response;Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$7;->val$listener:Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$7;->val$listener:Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;->downloadComplete(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while finalizing getOfferCache request."

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
