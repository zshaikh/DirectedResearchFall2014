.class Lcom/nativex/monetization/communication/ServerRequestManager$4;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->getDeviceBalance(Lcom/nativex/common/OnTaskCompletedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

.field final synthetic val$listener:Lcom/nativex/common/OnTaskCompletedListener;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/common/OnTaskCompletedListener;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$4;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$4;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 4
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "getDeviceBalanceStillRunning":Z
    const/4 v2, 0x0

    .line 247
    .local v2, "responseString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/nativex/monetization/communication/ServerRequestManager$4;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v3}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleGetDeviceBalance(Lcom/nativex/common/Response;)Z

    move-result v1

    .line 249
    invoke-virtual {p2}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 255
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/nativex/monetization/communication/ServerRequestManager$4;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/nativex/monetization/communication/ServerRequestManager$4;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-interface {v3, v2}, Lcom/nativex/common/OnTaskCompletedListener;->onTaskCompleted(Ljava/lang/String;)V

    .line 258
    :cond_1
    # setter for: Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z
    invoke-static {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$302(Z)Z

    .line 259
    return-void

    .line 251
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ServerRequestManager: Unexpected exception caught while finalizing GetDeviceBalance request."

    invoke-static {v3, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method
