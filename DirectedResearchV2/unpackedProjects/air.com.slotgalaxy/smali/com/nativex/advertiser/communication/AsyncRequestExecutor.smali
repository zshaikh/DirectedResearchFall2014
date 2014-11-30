.class public Lcom/nativex/advertiser/communication/AsyncRequestExecutor;
.super Ljava/lang/Object;
.source "AsyncRequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private listener:Lcom/nativex/common/OnTaskCompletedListener;

.field private request:Lcom/nativex/common/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/nativex/common/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/nativex/common/Request;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->execute(Lcom/nativex/common/Request;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/nativex/common/Request;Lcom/nativex/common/OnTaskCompletedListener;)V
    .locals 0
    .param p1, "request"    # Lcom/nativex/common/Request;
    .param p2, "listener"    # Lcom/nativex/common/OnTaskCompletedListener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->execute(Lcom/nativex/common/Request;Lcom/nativex/common/OnTaskCompletedListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public execute(Lcom/nativex/common/Request;)V
    .locals 1
    .param p1, "request"    # Lcom/nativex/common/Request;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->execute(Lcom/nativex/common/Request;Lcom/nativex/common/OnTaskCompletedListener;)V

    .line 64
    return-void
.end method

.method public execute(Lcom/nativex/common/Request;Lcom/nativex/common/OnTaskCompletedListener;)V
    .locals 2
    .param p1, "request"    # Lcom/nativex/common/Request;
    .param p2, "listener"    # Lcom/nativex/common/OnTaskCompletedListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    .line 50
    iput-object p2, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->listener:Lcom/nativex/common/OnTaskCompletedListener;

    .line 51
    invoke-virtual {p0}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->isOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "AsyncRequestExecutor: Currently on main thread. Creating new thread to execute the request."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    .end local v0    # "thread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v1, "AsyncRequestExecutor: Currently on child thread. Executing the request in the current thread."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->run()V

    goto :goto_0
.end method

.method protected isOnMainThread()Z
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 68
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v3}, Lcom/nativex/common/Request;->shouldExecute()Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not met the initial requirements"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/nativex/common/Request;->executeListener(ZLcom/nativex/common/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncRequestExecutor.run() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request failed. Unexpected exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v3, v6, v7}, Lcom/nativex/common/Request;->executeListener(ZLcom/nativex/common/Response;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v3}, Lcom/nativex/common/Request;->generateRequest()V

    .line 77
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v3}, Lcom/nativex/common/Request;->preExecute()V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request URL -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request body -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 81
    new-instance v3, Lcom/nativex/common/HTTPServiceManager;

    invoke-direct {v3}, Lcom/nativex/common/HTTPServiceManager;-><init>()V

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v3, v4}, Lcom/nativex/common/HTTPServiceManager;->execute(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;

    move-result-object v1

    .line 82
    .local v1, "response":Lcom/nativex/common/Response;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response body -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcom/nativex/common/Response;->getStatusCode()I

    move-result v2

    .line 85
    .local v2, "statusCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    invoke-virtual {v4}, Lcom/nativex/common/Request;->getRequestType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " request status -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nativex/common/Response;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 86
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    const/16 v3, 0x190

    if-ge v2, v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/nativex/common/Request;->executeListener(ZLcom/nativex/common/Response;)V

    .line 91
    :goto_1
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->listener:Lcom/nativex/common/OnTaskCompletedListener;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->listener:Lcom/nativex/common/OnTaskCompletedListener;

    invoke-virtual {v1}, Lcom/nativex/common/Response;->getResponse()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nativex/common/OnTaskCompletedListener;->onTaskCompleted(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/nativex/advertiser/communication/AsyncRequestExecutor;->request:Lcom/nativex/common/Request;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/nativex/common/Request;->executeListener(ZLcom/nativex/common/Response;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
