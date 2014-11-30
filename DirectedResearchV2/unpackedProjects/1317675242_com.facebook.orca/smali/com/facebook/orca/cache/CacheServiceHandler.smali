.class public Lcom/facebook/orca/cache/CacheServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "CacheServiceHandler.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/ThreadsCache;

.field private final b:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private final c:Lcom/facebook/orca/cache/AppConfigCache;

.field private final d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final e:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

.field private final f:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/cache/ThreadDisplayCache;Lcom/facebook/orca/cache/AppConfigCache;Lcom/facebook/orca/app/OrcaActivityBroadcaster;Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V
    .locals 1

    .prologue
    .line 45
    const-string v0, "CacheServiceHandler"

    invoke-direct {p0, v0}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/AppConfigCache;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 50
    iput-object p5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    .line 51
    iput-object p6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->f:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;)V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessParam;->DO_NOT_CHECK_SERVER:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 376
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 377
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    new-instance v0, Lcom/facebook/orca/server/OperationParams;

    const-string v2, "fetch_thread"

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/server/OperationParams;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 379
    invoke-virtual {p0, v0, p2}, Lcom/facebook/orca/cache/CacheServiceHandler;->g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;

    goto :goto_0
.end method


# virtual methods
.method protected e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 12

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    const-string v1, "fetchThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadsParams;

    .line 61
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsParams;->a()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/facebook/orca/cache/CacheServiceHandler$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move v0, v7

    .line 81
    :goto_0
    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->c()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/ThreadsCache;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    .line 86
    :goto_1
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadsCache;->d()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v5

    .line 88
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 89
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v6, 0x0

    move-wide v10, v8

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    .line 92
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 110
    :goto_2
    return-object v0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->a()Z

    move-result v0

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadsCache;->b()Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadsResult;

    .line 96
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v4, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 99
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->d()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 100
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->i()J

    move-result-wide v3

    .line 101
    iget-object v5, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v5, v2, v3, v4, v7}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadsCollection;JZ)V

    .line 102
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 103
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v2}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a()V

    .line 104
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->e()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->f:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadsResult;->e()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/notify/NotificationSetting;)V

    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 117
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 119
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 120
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->a()Lcom/facebook/orca/threads/ThreadsCollection;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMoreThreadsResult;->i()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadsCollection;J)V

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 124
    return-object v1
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 133
    const-string v0, "fetchThreadParams"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    .line 134
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->c()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v4

    .line 136
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_1

    .line 141
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v3, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    .line 142
    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v2}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v6

    move-object v12, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v12

    .line 154
    :goto_0
    sget-object v7, Lcom/facebook/orca/cache/CacheServiceHandler$1;->a:[I

    invoke-virtual {v4}, Lcom/facebook/orca/server/DataFreshnessParam;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    move v4, v8

    .line 171
    :goto_1
    iget-object v7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v7, v6}, Lcom/facebook/orca/cache/ThreadsCache;->h(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v9, v6}, Lcom/facebook/orca/cache/ThreadsCache;->i(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 175
    invoke-static {}, Lcom/facebook/orca/server/FetchThreadParams;->newBuilder()Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Z)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v7, v6}, Lcom/facebook/orca/cache/ThreadsCache;->h(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 180
    const-string v7, "fetchThreadParams"

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    :cond_0
    if-eqz v4, :cond_6

    .line 185
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 187
    iget-object v7, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/cache/ThreadsCache;->j(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 188
    invoke-virtual {v4, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_2

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_a

    .line 147
    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v6, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v6, v2}, Lcom/facebook/orca/cache/ThreadsCache;->c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v6

    move-object v12, v6

    move-object v6, v2

    move-object v2, v3

    move-object v3, v12

    goto/16 :goto_0

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No threadid or userid specified for thread fetch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_0
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move v4, v11

    goto/16 :goto_1

    :cond_3
    move v4, v8

    goto/16 :goto_1

    .line 161
    :pswitch_1
    iget-object v4, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParams;->f()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;I)Z

    move-result v4

    goto/16 :goto_1

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0, v6}, Lcom/facebook/orca/cache/ThreadsCache;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_UP_TO_DATE:Lcom/facebook/orca/server/DataFreshnessResult;

    move-object v1, v0

    .line 193
    :goto_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 194
    invoke-virtual {v3}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    .line 196
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    const-wide/16 v6, -0x1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    .line 198
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 216
    :goto_4
    return-object v0

    .line 190
    :cond_5
    sget-object v0, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_CACHE_STALE:Lcom/facebook/orca/server/DataFreshnessResult;

    move-object v1, v0

    goto :goto_3

    .line 200
    :cond_6
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 202
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->h()Lcom/facebook/orca/server/DataFreshnessResult;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessResult;->NO_DATA:Lcom/facebook/orca/server/DataFreshnessResult;

    if-eq v2, v3, :cond_9

    .line 203
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 204
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 205
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 207
    :cond_7
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 208
    if-eqz v2, :cond_8

    .line 209
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 210
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->e:Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;->a()V

    :cond_9
    move-object v0, v1

    goto :goto_4

    :cond_a
    move-object v6, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 257
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 258
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 260
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_0

    .line 262
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 263
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 264
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 266
    :cond_0
    return-object v1
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 224
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 225
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 227
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 228
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 229
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 231
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->b(Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 232
    return-object v1
.end method

.method protected j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 240
    const-string v0, "outgoingMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 241
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v2, "userIdInCanonicalThread"

    iget-object v3, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/SendMessageResult;

    .line 246
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/SendMessageResult;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/SendMessageResult;->b()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;)V

    .line 249
    return-object v1
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 273
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 275
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 278
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 279
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 280
    return-object v1
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 288
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 293
    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->b()Lcom/facebook/orca/server/MarkThreadParams$Mark;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/MarkThreadParams;->d()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/lang/String;J)V

    .line 296
    :cond_0
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 304
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 305
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/DeleteThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->d(Ljava/lang/String;)V

    .line 307
    return-object v1
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 314
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 316
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->a()Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->i()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/ThreadSummary;J)V

    .line 319
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Ljava/util/Collection;)V

    .line 320
    iget-object v0, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ThreadDisplayCache;->a()V

    .line 321
    return-object v1
.end method

.method protected q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 328
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/ThreadsCache;->d()Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    new-instance v2, Lcom/facebook/orca/threads/FolderCounts;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/FolderCounts;->a()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/facebook/orca/threads/FolderCounts;-><init>(IIJ)V

    .line 332
    iget-object v1, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/FolderCounts;)V

    .line 334
    :cond_0
    return-object v0
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 344
    const-string v1, "threadId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-direct {p0, v1, p2}, Lcom/facebook/orca/cache/CacheServiceHandler;->a(Ljava/lang/String;Lcom/facebook/orca/server/OrcaServiceHandler;)V

    .line 348
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 349
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->a:Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/ThreadsCache;->a(Lcom/facebook/orca/threads/Message;)V

    .line 353
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->d:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {v2, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->a(Ljava/lang/String;)V

    .line 358
    return-object v0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 386
    invoke-interface {p2, p1}, Lcom/facebook/orca/server/OrcaServiceHandler;->a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/facebook/orca/server/OperationResult;->e()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 388
    iget-object v2, p0, Lcom/facebook/orca/cache/CacheServiceHandler;->c:Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/cache/AppConfigCache;->a(Lcom/facebook/orca/appconfig/AppConfig;)V

    .line 389
    return-object v1
.end method
