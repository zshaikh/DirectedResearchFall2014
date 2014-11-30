.class Lcom/nativex/monetization/communication/ServerRequestManager$2;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"

# interfaces
.implements Lcom/nativex/common/OnRequestCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;->createSession(Lcom/nativex/common/OnTaskCompletedListener;)V
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
    .line 130
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager$2;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    iput-object p2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$2;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(ZLcom/nativex/common/Response;)V
    .locals 4
    .param p1, "succeded"    # Z
    .param p2, "response"    # Lcom/nativex/common/Response;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p2}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$2;->this$0:Lcom/nativex/monetization/communication/ServerRequestManager;

    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;
    invoke-static {v2}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nativex/monetization/communication/ServerResponseHandler;->handleCreateSession(Lcom/nativex/common/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$2;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/nativex/monetization/communication/ServerRequestManager$2;->val$listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-interface {v2, v1}, Lcom/nativex/common/OnTaskCompletedListener;->onTaskCompleted(Ljava/lang/String;)V

    .line 148
    :cond_1
    const-string v2, "Running GetDeviceBalanceTask"

    invoke-static {v2}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/communication/ServerRequestManager;->getDeviceBalance(Z)V

    .line 150
    return-void

    .line 142
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while finalizing CreateSession request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
