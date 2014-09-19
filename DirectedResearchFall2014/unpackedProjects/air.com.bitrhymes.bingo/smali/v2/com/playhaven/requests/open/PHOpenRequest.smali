.class public Lv2/com/playhaven/requests/open/PHOpenRequest;
.super Lv2/com/playhaven/requests/base/PHAPIRequest;
.source "PHOpenRequest.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHPrefetchTaskListener;


# instance fields
.field private config:Lv2/com/playhaven/configuration/PHConfiguration;

.field private open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

.field private prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lv2/com/playhaven/requests/open/PHPrefetchTask;",
            ">;"
        }
    .end annotation
.end field

.field private prefetch_listener:Lv2/com/playhaven/listeners/PHPrefetchListener;

.field private session:Lv2/com/playhaven/requests/open/PHSession;

.field private shouldPrecache:Z

.field public startPrecachingImmediately:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->startPrecachingImmediately:Z

    .line 79
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    .line 80
    return-void
.end method

.method public constructor <init>(Lv2/com/playhaven/listeners/PHOpenRequestListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    invoke-direct {p0}, Lv2/com/playhaven/requests/open/PHOpenRequest;-><init>()V

    .line 71
    iput-object p1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    .line 72
    return-void
.end method


# virtual methods
.method public baseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    const-string v0, "/v3/publisher/open/"

    invoke-super {p0, p1, v0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->createAPIURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 218
    .local v0, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ssum"

    iget-object v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    invoke-virtual {v2}, Lv2/com/playhaven/requests/open/PHSession;->getTotalTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "scount"

    iget-object v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    invoke-virtual {v2}, Lv2/com/playhaven/requests/open/PHSession;->getSessionCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-boolean v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->shouldPrecache:Z

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "precache"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    return-object v0
.end method

.method public getOpenRequestListener()Lv2/com/playhaven/listeners/PHOpenRequestListener;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    return-object v0
.end method

.method public getPrefetchListener()Lv2/com/playhaven/listeners/PHPrefetchListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetch_listener:Lv2/com/playhaven/listeners/PHPrefetchListener;

    return-object v0
.end method

.method public getPrefetchTasks()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lv2/com/playhaven/requests/open/PHPrefetchTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getSession()Lv2/com/playhaven/requests/open/PHSession;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    return-object v0
.end method

.method public handleRequestFailure(Lv2/com/playhaven/model/PHError;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 128
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    invoke-interface {v0, p0, p1}, Lv2/com/playhaven/listeners/PHOpenRequestListener;->onOpenFailed(Lv2/com/playhaven/requests/open/PHOpenRequest;Lv2/com/playhaven/model/PHError;)V

    .line 130
    :cond_0
    return-void
.end method

.method public handleRequestSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "res"

    .prologue
    const-string v6, "precache"

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open request received a response...should we precache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->shouldPrecache:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_2

    iget-boolean v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->shouldPrecache:Z

    if-eqz v4, :cond_2

    const-string v4, "precache"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    iget-object v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 147
    const-string v4, "precache"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 149
    .local v1, precached:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 156
    new-instance v2, Lv2/com/playhaven/requests/open/PHPrefetchTask;

    invoke-direct {v2}, Lv2/com/playhaven/requests/open/PHPrefetchTask;-><init>()V

    .line 157
    .local v2, task:Lv2/com/playhaven/requests/open/PHPrefetchTask;
    invoke-virtual {v2, p0}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->setPrefetchListener(Lv2/com/playhaven/listeners/PHPrefetchTaskListener;)V

    .line 159
    invoke-virtual {v2, v3}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->setURL(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v2           #task:Lv2/com/playhaven/requests/open/PHPrefetchTask;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0           #i:I
    .end local v3           #url:Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->startPrecachingImmediately:Z

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHOpenRequest;->startNextPrefetch()V

    .line 173
    .end local v1           #precached:Lorg/json/JSONArray;
    :cond_2
    iget-object v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    invoke-virtual {v4}, Lv2/com/playhaven/requests/open/PHSession;->startAndReset()V

    .line 176
    iget-object v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    if-eqz v4, :cond_3

    .line 177
    iget-object v4, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    invoke-interface {v4, p0}, Lv2/com/playhaven/listeners/PHOpenRequestListener;->onOpenSuccessful(Lv2/com/playhaven/requests/open/PHOpenRequest;)V

    .line 179
    :cond_3
    return-void
.end method

.method public onPrefetchDone(I)V
    .locals 3
    .parameter "result"

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-cache task done. Starting next out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetch_listener:Lv2/com/playhaven/listeners/PHPrefetchListener;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetch_listener:Lv2/com/playhaven/listeners/PHPrefetchListener;

    invoke-interface {v1, p0}, Lv2/com/playhaven/listeners/PHPrefetchListener;->onPrefetchFinished(Lv2/com/playhaven/requests/open/PHOpenRequest;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->startPrecachingImmediately:Z

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lv2/com/playhaven/requests/open/PHOpenRequest;->startNextPrefetch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHOpenRequest - prefetchDone"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public send(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 95
    iget-object v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->config:Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-virtual {v2, p1}, Lv2/com/playhaven/configuration/PHConfiguration;->getShouldPrecache(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->shouldPrecache:Z

    .line 98
    const-class v2, Lv2/com/playhaven/requests/open/PHOpenRequest;

    monitor-enter v2

    .line 99
    :try_start_0
    iget-boolean v3, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->shouldPrecache:Z

    if-eqz v3, :cond_0

    .line 100
    const-class v3, Lv2/com/playhaven/cache/PHCache;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    invoke-static {p1}, Lv2/com/playhaven/cache/PHCache;->installCache(Landroid/content/Context;)V

    .line 103
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    invoke-static {p1}, Lv2/com/playhaven/requests/open/PHSession;->getInstance(Landroid/content/Context;)Lv2/com/playhaven/requests/open/PHSession;

    move-result-object v2

    iput-object v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    .line 110
    iget-object v2, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    invoke-virtual {v2}, Lv2/com/playhaven/requests/open/PHSession;->start()V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "com_playhaven_time_in_game_ssum"

    iget-object v3, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    invoke-virtual {v3}, Lv2/com/playhaven/requests/open/PHSession;->getTotalTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v2, "com_playhaven_time_in_game_scount"

    iget-object v3, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->session:Lv2/com/playhaven/requests/open/PHSession;

    invoke-virtual {v3}, Lv2/com/playhaven/requests/open/PHSession;->getSessionCount()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    invoke-super {p0, p1}, Lv2/com/playhaven/requests/base/PHAPIRequest;->send(Landroid/content/Context;)V

    .line 121
    return-void

    .line 103
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 105
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public setOpenRequestListener(Lv2/com/playhaven/listeners/PHOpenRequestListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->open_listener:Lv2/com/playhaven/listeners/PHOpenRequestListener;

    .line 51
    return-void
.end method

.method public setPrefetchListener(Lv2/com/playhaven/listeners/PHPrefetchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 46
    iput-object p1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetch_listener:Lv2/com/playhaven/listeners/PHPrefetchListener;

    .line 47
    return-void
.end method

.method public startNextPrefetch()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting precache task with a total of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lv2/com/playhaven/requests/open/PHOpenRequest;->prefetchTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lv2/com/playhaven/requests/open/PHPrefetchTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lv2/com/playhaven/requests/open/PHPrefetchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :cond_0
    return-void
.end method
