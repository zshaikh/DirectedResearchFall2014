.class Lcom/nativex/monetization/communication/ServerRequestManager$8;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->getRichMedia(Ljava/lang/String;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$8;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$8;->val$listener:Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 5
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 409
    if-eqz p1, :cond_1

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$8;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$8;->val$listener:Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;

    invoke-virtual {v1, p2, v2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleRichMedia(Lcom/nativex/common/Response;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$8;->val$listener:Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$8;->val$listener:Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;->downloadComplete(Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/business/RichMediaResponseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while finalizing getRichMedia request."

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
