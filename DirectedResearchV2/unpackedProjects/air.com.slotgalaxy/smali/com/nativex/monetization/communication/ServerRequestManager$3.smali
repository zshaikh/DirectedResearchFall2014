.class Lcom/nativex/monetization/communication/ServerRequestManager$3;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->endSession(Lcom/nativex/common/OnTaskCompletedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/ServerRequestManager;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/ServerRequestManager;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$3;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 4
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 184
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$3;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v2}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleEndSession(Lcom/nativex/common/Response;)V

    .line 186
    invoke-virtual {p2}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$3;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;
    invoke-static {v2}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$200(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/common/OnTaskCompletedListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$3;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;
    invoke-static {v2}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$200(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/common/OnTaskCompletedListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nativex/common/OnTaskCompletedListener;->onTaskCompleted(Ljava/lang/String;)V

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$3;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    const/4 v3, 0x0

    # setter for: Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;
    invoke-static {v2, v3}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$202(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/common/OnTaskCompletedListener;)Lcom/nativex/common/OnTaskCompletedListener;

    .line 197
    return-void

    .line 189
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while finalizing EndSession request."

    invoke-static {v2}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
