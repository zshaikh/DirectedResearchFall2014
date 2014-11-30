.class public Lcom/nativex/monetization/communication/ServerRequestManager;
.super Ljava/lang/Object;
.source "ServerRequestManager.java"


# static fields
.field private static final END_SESSION_DELAY:J = 0x7d0L

.field private static final MSG_END_SESSION:I = 0x3e8

.field private static deviceBalanceExecuting:Z

.field private static final handler:Landroid/os/Handler;

.field private static instance:Lcom/nativex/monetization/communication/ServerRequestManager;


# instance fields
.field private endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;

.field private released:Z

.field private responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    .line 74
    new-instance v0, Lcom/nativex/monetization/communication/ServerRequestManager$1;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/ServerRequestManager$1;-><init>()V

    sput-object v0, Lcom/nativex/monetization/communication/ServerRequestManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;

    .line 63
    iput-object v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->released:Z

    .line 110
    new-instance v0, Lcom/nativex/monetization/communication/ServerResponseHandler;

    invoke-direct {v0}, Lcom/nativex/monetization/communication/ServerResponseHandler;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;

    .line 111
    return-void
.end method

.method static synthetic access$000()Lcom/nativex/monetization/communication/ServerRequestManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/monetization/communication/ServerResponseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/communication/ServerRequestManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->responseHandler:Lcom/nativex/monetization/communication/ServerResponseHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nativex/monetization/communication/ServerRequestManager;)Lcom/nativex/common/OnTaskCompletedListener;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/communication/ServerRequestManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/common/OnTaskCompletedListener;)Lcom/nativex/common/OnTaskCompletedListener;
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/communication/ServerRequestManager;
    .param p1, "x1"    # Lcom/nativex/common/OnTaskCompletedListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;

    return-object p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 60
    sput-boolean p0, Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/nativex/monetization/communication/ServerRequestManager;
    .locals 2

    .prologue
    .line 119
    const-class v0, Lcom/nativex/monetization/communication/ServerRequestManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Lcom/nativex/monetization/communication/ServerRequestManager;

    invoke-direct {v1}, Lcom/nativex/monetization/communication/ServerRequestManager;-><init>()V

    sput-object v1, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;

    .line 122
    :cond_0
    sget-object v1, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public commitSmartOffers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nativex/monetization/smartoffers/SmartOfferResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nativex/monetization/smartoffers/SmartOfferResult;>;"
    :try_start_0
    new-instance v1, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;

    invoke-direct {v1}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;-><init>()V

    .line 304
    .local v1, "request":Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;
    invoke-virtual {v1, p1}, Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;->setResults(Ljava/util/List;)V

    .line 306
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession()V

    .line 307
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeRequest(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v1    # "request":Lcom/nativex/monetization/smartoffers/CommitSmartOffersRequest;
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while executing GetSmartOfferRules request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createSession()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession(Lcom/nativex/common/OnTaskCompletedListener;)V

    .line 161
    return-void
.end method

.method public createSession(Lcom/nativex/common/OnTaskCompletedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/nativex/common/OnTaskCompletedListener;

    .prologue
    .line 128
    :try_start_0
    sget-object v2, Lcom/nativex/monetization/communication/ServerRequestManager;->handler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    new-instance v1, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;

    invoke-direct {v1}, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;-><init>()V

    .line 130
    .local v1, "request":Lcom/nativex/monetization/communication/requests/CreateSessionRequest;
    new-instance v2, Lcom/nativex/monetization/communication/ServerRequestManager$2;

    invoke-direct {v2, p0, p1}, Lcom/nativex/monetization/communication/ServerRequestManager$2;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/common/OnTaskCompletedListener;)V

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/communication/requests/CreateSessionRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 152
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeRequest(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "request":Lcom/nativex/monetization/communication/requests/CreateSessionRequest;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while executing CreateSession request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endSession()V
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->endSession(Lcom/nativex/common/OnTaskCompletedListener;Z)V

    .line 165
    return-void
.end method

.method public endSession(Lcom/nativex/common/OnTaskCompletedListener;Z)V
    .locals 6
    .param p1, "listener"    # Lcom/nativex/common/OnTaskCompletedListener;
    .param p2, "immediate"    # Z

    .prologue
    .line 172
    :try_start_0
    iput-object p1, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->endSessionListener:Lcom/nativex/common/OnTaskCompletedListener;

    .line 174
    new-instance v2, Lcom/nativex/monetization/communication/requests/EndSessionRequest;

    invoke-direct {v2}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;-><init>()V

    .line 176
    .local v2, "request":Lcom/nativex/monetization/communication/requests/EndSessionRequest;
    new-instance v3, Lcom/nativex/monetization/communication/ServerRequestManager$3;

    invoke-direct {v3, p0}, Lcom/nativex/monetization/communication/ServerRequestManager$3;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;)V

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 199
    invoke-virtual {v2}, Lcom/nativex/monetization/communication/requests/EndSessionRequest;->preGenerateRequest()V

    .line 201
    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/nativex/monetization/communication/ServerRequestManager;->handleEndSession(Lcom/nativex/monetization/communication/requests/EndSessionRequest;)V

    .line 213
    .end local v2    # "request":Lcom/nativex/monetization/communication/requests/EndSessionRequest;
    :goto_0
    return-void

    .line 204
    .restart local v2    # "request":Lcom/nativex/monetization/communication/requests/EndSessionRequest;
    :cond_0
    sget-object v3, Lcom/nativex/monetization/communication/ServerRequestManager;->handler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    sget-object v3, Lcom/nativex/monetization/communication/ServerRequestManager;->handler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 206
    .local v1, "msg":Landroid/os/Message;
    sget-object v3, Lcom/nativex/monetization/communication/ServerRequestManager;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "request":Lcom/nativex/monetization/communication/requests/EndSessionRequest;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ServerRequestManager: Unexpected exception caught while executing EndSession request."

    invoke-static {v3}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public executePendingRequests()V
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeTasks()Z

    .line 429
    return-void
.end method

.method public getDeviceBalance()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nativex/monetization/communication/ServerRequestManager;->getDeviceBalance(Lcom/nativex/common/OnTaskCompletedListener;Z)V

    .line 222
    return-void
.end method

.method public getDeviceBalance(Lcom/nativex/common/OnTaskCompletedListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/nativex/common/OnTaskCompletedListener;
    .param p2, "runCreateSession"    # Z

    .prologue
    .line 228
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->isCurrencySupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    const-string v2, "Balance disabled for this app"

    invoke-static {v2}, Lcom/nativex/common/Log;->i(Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sget-boolean v2, Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    if-nez v2, :cond_0

    .line 235
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nativex/monetization/communication/ServerRequestManager;->deviceBalanceExecuting:Z

    .line 236
    new-instance v1, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;

    invoke-direct {v1}, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;-><init>()V

    .line 238
    .local v1, "request":Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;
    new-instance v2, Lcom/nativex/monetization/communication/ServerRequestManager$4;

    invoke-direct {v2, p0, p1}, Lcom/nativex/monetization/communication/ServerRequestManager$4;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/common/OnTaskCompletedListener;)V

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 261
    if-eqz p2, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession()V

    .line 264
    :cond_2
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeRequest(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v1    # "request":Lcom/nativex/monetization/communication/requests/GetDeviceBalanceRequest;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while executing GetDeviceBalance request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDeviceBalance(Z)V
    .locals 1
    .param p1, "runCreateSession"    # Z

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nativex/monetization/communication/ServerRequestManager;->getDeviceBalance(Lcom/nativex/common/OnTaskCompletedListener;Z)V

    .line 218
    return-void
.end method

.method public getOfferCache(Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;

    .prologue
    const-string v5, "application/json"

    .line 363
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "SessionId"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v5, "PublicServices/ServiceApiRestV1.svc/Offer/Cache"

    invoke-static {v5}, Lcom/nativex/common/ServerConfig;->applyConfiguration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/nativex/common/Utilities;->appendParamsToUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;

    invoke-direct {v2, v4}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;-><init>(Ljava/lang/String;)V

    .line 369
    .local v2, "request":Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;
    const-string v5, "content-type"

    const-string v6, "application/json"

    invoke-virtual {v2, v5, v6}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v5, "accept"

    const-string v6, "application/json"

    invoke-virtual {v2, v5, v6}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v5, Lcom/nativex/monetization/communication/ServerRequestManager$7;

    invoke-direct {v5, p0, p1}, Lcom/nativex/monetization/communication/ServerRequestManager$7;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;)V

    invoke-virtual {v2, v5}, Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 390
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeImmediate(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lcom/nativex/monetization/communication/requests/GetOfferCacheRequest;
    .end local v3    # "sessionId":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "ServerRequestManager: Unexpected exception caught while executing getOfferCache request."

    invoke-static {v5, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRichMedia(Ljava/lang/String;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;

    .prologue
    .line 401
    :try_start_0
    new-instance v1, Lcom/nativex/monetization/communication/requests/RichMediaRequest;

    invoke-direct {v1, p1}, Lcom/nativex/monetization/communication/requests/RichMediaRequest;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, "request":Lcom/nativex/monetization/communication/requests/RichMediaRequest;
    new-instance v2, Lcom/nativex/monetization/communication/ServerRequestManager$8;

    invoke-direct {v2, p0, p2}, Lcom/nativex/monetization/communication/ServerRequestManager$8;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/monetization/listeners/onRichMediaDownloadedListener;)V

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/communication/requests/RichMediaRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 421
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeImmediate(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v1    # "request":Lcom/nativex/monetization/communication/requests/RichMediaRequest;
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while executing getRichMedia request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSmartOfferRules()V
    .locals 4

    .prologue
    const-string v2, "application/json"

    .line 273
    :try_start_0
    new-instance v1, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;

    invoke-direct {v1}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;-><init>()V

    .line 274
    .local v1, "request":Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;
    const-string v2, "content-type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "accept"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v2, Lcom/nativex/monetization/communication/ServerRequestManager$5;

    invoke-direct {v2, p0}, Lcom/nativex/monetization/communication/ServerRequestManager$5;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;)V

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 293
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession()V

    .line 294
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeRequest(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1    # "request":Lcom/nativex/monetization/smartoffers/GetSmartOfferRulesRequest;
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while executing GetSmartOfferRules request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handleEndSession(Lcom/nativex/monetization/communication/requests/EndSessionRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/nativex/monetization/communication/requests/EndSessionRequest;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeImmediate(Lcom/nativex/common/Request;)Z

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->released:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/nativex/advertiser/NetworkConnectionManager;->release()V

    .line 101
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->release(Z)V

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;

    .line 104
    :cond_1
    return-void
.end method

.method public redeemCurrency(Lcom/nativex/monetization/communication/RedeemCurrencyData;)V
    .locals 1
    .param p1, "balance"    # Lcom/nativex/monetization/communication/RedeemCurrencyData;

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nativex/monetization/communication/ServerRequestManager;->redeemCurrency(Lcom/nativex/monetization/communication/RedeemCurrencyData;Lcom/nativex/common/OnTaskCompletedListener;)V

    .line 358
    return-void
.end method

.method public redeemCurrency(Lcom/nativex/monetization/communication/RedeemCurrencyData;Lcom/nativex/common/OnTaskCompletedListener;)V
    .locals 3
    .param p1, "balance"    # Lcom/nativex/monetization/communication/RedeemCurrencyData;
    .param p2, "listener"    # Lcom/nativex/common/OnTaskCompletedListener;

    .prologue
    .line 317
    :try_start_0
    new-instance v1, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;

    invoke-direct {v1}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;-><init>()V

    .line 318
    .local v1, "request":Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;
    iget-object v2, p1, Lcom/nativex/monetization/communication/RedeemCurrencyData;->allBalances:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->setDeviceBalance(Ljava/util/Collection;)V

    .line 320
    new-instance v2, Lcom/nativex/monetization/communication/ServerRequestManager$6;

    invoke-direct {v2, p0, p1, p2}, Lcom/nativex/monetization/communication/ServerRequestManager$6;-><init>(Lcom/nativex/monetization/communication/ServerRequestManager;Lcom/nativex/monetization/communication/RedeemCurrencyData;Lcom/nativex/common/OnTaskCompletedListener;)V

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;->setListener(Lcom/nativex/common/OnRequestCompletedListener;)V

    .line 347
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/ServerRequestManager;->createSession()V

    .line 348
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeRequest(Lcom/nativex/common/Request;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v1    # "request":Lcom/nativex/monetization/communication/requests/RedeemCurrencyRequest;
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ServerRequestManager: Unexpected exception caught while executing RedeemCurrency request."

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 433
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nativex/monetization/communication/ServerRequestManager;->released:Z

    .line 434
    sget-object v1, Lcom/nativex/monetization/communication/ServerRequestManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->cancelRequests()V

    .line 444
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-static {}, Lcom/nativex/monetization/communication/AsyncTaskManager;->getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->release()V

    .line 438
    const/4 v1, 0x0

    sput-object v1, Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception caught while releasing the manager."

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
