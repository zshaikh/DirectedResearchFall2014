.class public Lcom/dolphin/browser/sync/ad;
.super Lcom/dolphin/browser/sync/f;
.source "MixedSyncManager.java"


# static fields
.field private static g:Lcom/dolphin/browser/sync/ad;


# instance fields
.field private h:Lcom/dolphin/browser/sync/at;

.field private i:Lcom/dolphin/browser/sync/ab;

.field private j:Lcom/dolphin/browser/sync/s;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dolphin/browser/sync/f;-><init>()V

    .line 50
    return-void
.end method

.method private b(I)Lcom/dolphin/browser/sync/f;
    .locals 1

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->h:Lcom/dolphin/browser/sync/at;

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->i:Lcom/dolphin/browser/sync/ab;

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->j:Lcom/dolphin/browser/sync/s;

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static s()Lcom/dolphin/browser/sync/ad;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/dolphin/browser/sync/ad;->g:Lcom/dolphin/browser/sync/ad;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/dolphin/browser/sync/ad;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/ad;-><init>()V

    sput-object v0, Lcom/dolphin/browser/sync/ad;->g:Lcom/dolphin/browser/sync/ad;

    .line 43
    sget-object v0, Lcom/dolphin/browser/sync/ad;->g:Lcom/dolphin/browser/sync/ad;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->a()V

    .line 45
    :cond_0
    sget-object v0, Lcom/dolphin/browser/sync/ad;->g:Lcom/dolphin/browser/sync/ad;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/dolphin/browser/sync/MixedSyncService;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/MixedSyncService;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ad;->d:Lcom/dolphin/browser/sync/BaseSyncService;

    .line 29
    new-instance v0, Lcom/dolphin/browser/sync/ae;

    iget-object v1, p0, Lcom/dolphin/browser/sync/ad;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/sync/ad;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/sync/ai;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/ae;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    .line 32
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/ad;->h:Lcom/dolphin/browser/sync/at;

    .line 33
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/ad;->i:Lcom/dolphin/browser/sync/ab;

    .line 34
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/ad;->j:Lcom/dolphin/browser/sync/s;

    .line 38
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/ad;->b(I)Lcom/dolphin/browser/sync/f;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/f;->a(ZJ)V

    .line 140
    :cond_0
    return-void
.end method

.method public a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 73
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    .line 80
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/dolphin/browser/sync/ah;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    invoke-interface {v1}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/ai;->e()Z

    move-result v1

    .line 87
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v2

    .line 88
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v3

    .line 89
    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v4

    .line 91
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/dolphin/browser/sync/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_6

    invoke-interface {v2}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/sync/ae;->a(Z)V

    .line 98
    :goto_1
    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/dolphin/browser/sync/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_7

    invoke-interface {v3}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/sync/ae;->b(Z)V

    .line 105
    :goto_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/dolphin/browser/sync/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_8

    invoke-interface {v4}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/sync/ae;->c(Z)V

    .line 118
    :goto_3
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/ad;->g()Lcom/dolphin/browser/sync/i;

    move-result-object v1

    .line 119
    monitor-enter v1

    .line 120
    :try_start_0
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/i;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    monitor-exit v1

    goto/16 :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/ae;->a(Z)V

    goto :goto_1

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/ae;->b(Z)V

    goto :goto_2

    .line 109
    :cond_8
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/sync/ae;->c(Z)V

    goto :goto_3

    .line 124
    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->e:Lcom/dolphin/browser/sync/k;

    check-cast v0, Lcom/dolphin/browser/sync/ae;

    iget-object v2, p0, Lcom/dolphin/browser/sync/ad;->h:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v2}, Lcom/dolphin/browser/sync/at;->v()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/sync/ae;->a(Ljava/util/List;)V

    .line 125
    new-instance v0, Lcom/dolphin/browser/sync/j;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/sync/j;-><init>(Lcom/dolphin/browser/sync/f;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/i;->a(Lcom/dolphin/browser/sync/j;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_4
    :try_start_2
    monitor-exit v1

    goto/16 :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v0, "MixedSyncManager"

    const-string v2, "RejectedExecutionException in beginSync!"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 129
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/i;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->h:Lcom/dolphin/browser/sync/at;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/at;->b(J)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->i:Lcom/dolphin/browser/sync/ab;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/ab;->b(J)V

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/sync/ad;->j:Lcom/dolphin/browser/sync/s;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/s;->b(J)V

    .line 58
    return-void
.end method
