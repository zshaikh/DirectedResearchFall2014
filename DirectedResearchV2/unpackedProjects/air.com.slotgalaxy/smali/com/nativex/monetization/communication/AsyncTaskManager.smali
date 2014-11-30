.class public Lcom/nativex/monetization/communication/AsyncTaskManager;
.super Ljava/lang/Object;
.source "AsyncTaskManager.java"

# interfaces
.implements Lcom/nativex/monetization/interfaces/IAsyncTaskManager;


# static fields
.field private static instance:Lcom/nativex/monetization/communication/AsyncTaskManager;


# instance fields
.field private onTaskCompleted:Lcom/nativex/common/OnBaseTaskCompletedListener;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nativex/common/Request;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lcom/nativex/monetization/communication/BaseAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    .line 46
    iput-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/nativex/monetization/communication/AsyncTaskManager$1;

    invoke-direct {v0, p0}, Lcom/nativex/monetization/communication/AsyncTaskManager$1;-><init>(Lcom/nativex/monetization/communication/AsyncTaskManager;)V

    iput-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->onTaskCompleted:Lcom/nativex/common/OnBaseTaskCompletedListener;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/communication/AsyncTaskManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nativex/monetization/communication/AsyncTaskManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    return-object v0
.end method

.method public static cancelRequests()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->cancelRequests(Z)V

    .line 188
    return-void
.end method

.method public static cancelRequests(Z)V
    .locals 1
    .param p0, "cancelRunningTasks"    # Z

    .prologue
    .line 177
    sget-object v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    iget-object v0, v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    iget-object v0, v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    :cond_0
    if-eqz p0, :cond_1

    .line 181
    invoke-static {}, Lcom/nativex/monetization/communication/BaseAsyncTask;->cancelTask()V

    .line 182
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nativex/monetization/communication/BaseAsyncTask;->setOnTaskCompletedListener(Lcom/nativex/common/OnBaseTaskCompletedListener;)V

    .line 184
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/nativex/monetization/communication/AsyncTaskManager;
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/nativex/monetization/communication/AsyncTaskManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/nativex/monetization/communication/AsyncTaskManager;

    invoke-direct {v1}, Lcom/nativex/monetization/communication/AsyncTaskManager;-><init>()V

    sput-object v1, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    .line 74
    :cond_0
    sget-object v1, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public executeImmediate(Lcom/nativex/common/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/nativex/common/Request;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->onTaskCompleted:Lcom/nativex/common/OnBaseTaskCompletedListener;

    invoke-virtual {p0, p1, v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeImmediate(Lcom/nativex/common/Request;Lcom/nativex/common/OnBaseTaskCompletedListener;)Z

    move-result v0

    return v0
.end method

.method public executeImmediate(Lcom/nativex/common/Request;Lcom/nativex/common/OnBaseTaskCompletedListener;)Z
    .locals 7
    .param p1, "request"    # Lcom/nativex/common/Request;
    .param p2, "listener"    # Lcom/nativex/common/OnBaseTaskCompletedListener;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    new-instance v1, Lcom/nativex/common/HTTPServiceManager;

    invoke-virtual {p1}, Lcom/nativex/common/Request;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nativex/common/HTTPServiceManager;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 120
    .local v1, "manager":Lcom/nativex/common/HTTPServiceManager;
    :goto_0
    new-instance v2, Lcom/nativex/monetization/communication/BaseAsyncTask;

    invoke-direct {v2, v1}, Lcom/nativex/monetization/communication/BaseAsyncTask;-><init>(Lcom/nativex/common/IHTTPServiceManager;)V

    iput-object v2, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    .line 121
    if-eqz p2, :cond_0

    .line 122
    invoke-static {p2}, Lcom/nativex/monetization/communication/BaseAsyncTask;->setOnTaskCompletedListener(Lcom/nativex/common/OnBaseTaskCompletedListener;)V

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/nativex/common/Request;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/communication/BaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    move v2, v6

    .line 131
    .end local v1    # "manager":Lcom/nativex/common/HTTPServiceManager;
    :goto_1
    return v2

    .line 118
    :cond_1
    new-instance v1, Lcom/nativex/common/HTTPServiceManager;

    invoke-direct {v1}, Lcom/nativex/common/HTTPServiceManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "manager":Lcom/nativex/common/HTTPServiceManager;
    goto :goto_0

    .line 127
    .end local v1    # "manager":Lcom/nativex/common/HTTPServiceManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AsyncTaskManager: Unexpected exception while executing immediate task"

    invoke-static {v2}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v5

    .line 131
    goto :goto_1
.end method

.method public executeRequest(Lcom/nativex/common/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/nativex/common/Request;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeTasks()Z

    move-result v0

    goto :goto_0
.end method

.method public executeTasks()Z
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Lcom/nativex/advertiser/NetworkConnectionManager;->getInstance()Lcom/nativex/advertiser/NetworkConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nativex/advertiser/NetworkConnectionManager;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->isApplicationInForeground()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/nativex/monetization/communication/BaseAsyncTask;->status:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    sget-object v4, Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;->PENDING:Lcom/nativex/monetization/communication/BaseAsyncTask$STATUS;

    if-ne v3, v4, :cond_1

    .line 90
    new-instance v3, Lcom/nativex/monetization/communication/BaseAsyncTask;

    new-instance v4, Lcom/nativex/common/HTTPServiceManager;

    invoke-direct {v4}, Lcom/nativex/common/HTTPServiceManager;-><init>()V

    invoke-direct {v3, v4}, Lcom/nativex/monetization/communication/BaseAsyncTask;-><init>(Lcom/nativex/common/IHTTPServiceManager;)V

    iput-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    .line 91
    iget-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Lcom/nativex/common/Request;

    .line 92
    .local v2, "requestsToExecute":[Lcom/nativex/common/Request;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nativex/common/Request;

    .line 94
    .local v1, "request":Lcom/nativex/common/Request;
    aput-object v1, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "request":Lcom/nativex/common/Request;
    :cond_0
    iget-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->onTaskCompleted:Lcom/nativex/common/OnBaseTaskCompletedListener;

    invoke-static {v3}, Lcom/nativex/monetization/communication/BaseAsyncTask;->setOnTaskCompletedListener(Lcom/nativex/common/OnBaseTaskCompletedListener;)V

    .line 97
    iget-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/communication/BaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->task:Lcom/nativex/monetization/communication/BaseAsyncTask;

    .line 99
    iget-object v3, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 100
    const/4 v3, 0x1

    .line 102
    .end local v0    # "i":I
    .end local v2    # "requestsToExecute":[Lcom/nativex/common/Request;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected isApplicationInForeground()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 141
    :try_start_0
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 142
    .local v2, "context":Landroid/content/Context;
    const-string v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 143
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 145
    .local v6, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v6, :cond_0

    move v7, v9

    .line 160
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_0
    return v7

    .line 149
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v6    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 152
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_1

    iget-object v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    const/4 v7, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 157
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "AsyncTaskManager: Unexpected exception while checking if the application is in foreground"

    invoke-static {v7}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    move v7, v9

    .line 160
    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->release(Z)V

    .line 165
    return-void
.end method

.method public release(Z)V
    .locals 1
    .param p1, "cancelRunningTasks"    # Z

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Lcom/nativex/monetization/communication/AsyncTaskManager;->cancelRequests(Z)V

    .line 170
    invoke-static {}, Lcom/nativex/advertiser/NetworkConnectionManager;->release()V

    .line 171
    iput-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;

    .line 172
    sput-object v0, Lcom/nativex/monetization/communication/AsyncTaskManager;->instance:Lcom/nativex/monetization/communication/AsyncTaskManager;

    .line 173
    return-void
.end method
