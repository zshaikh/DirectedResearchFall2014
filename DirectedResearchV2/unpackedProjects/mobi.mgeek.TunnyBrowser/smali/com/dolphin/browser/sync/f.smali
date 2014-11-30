.class public abstract Lcom/dolphin/browser/sync/f;
.super Ljava/lang/Object;
.source "BaseSyncManager.java"


# static fields
.field static a:Lcom/dolphin/browser/sync/f;

.field private static g:Z


# instance fields
.field b:Landroid/content/SharedPreferences;

.field c:Landroid/content/Context;

.field d:Lcom/dolphin/browser/sync/BaseSyncService;

.field e:Lcom/dolphin/browser/sync/k;

.field f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

.field private h:Lcom/dolphin/browser/sync/i;

.field private i:Lcom/dolphin/browser/DolphinService/WebService/c;

.field private j:Lcom/dolphin/browser/sync/o;

.field private k:Lcom/dolphin/browser/sync/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/sync/f;->g:Z

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/sync/f;->a:Lcom/dolphin/browser/sync/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/dolphin/browser/sync/i;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/i;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    .line 255
    new-instance v0, Lcom/dolphin/browser/sync/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sync/h;-><init>(Lcom/dolphin/browser/sync/f;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/f;->i:Lcom/dolphin/browser/DolphinService/WebService/c;

    .line 175
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ai;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    .line 176
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->c()V

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/o;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->j:Lcom/dolphin/browser/sync/o;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/sync/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->k:Lcom/dolphin/browser/sync/b;

    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 419
    sput-boolean p0, Lcom/dolphin/browser/sync/f;->g:Z

    .line 420
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/sync/f;)Lcom/dolphin/browser/DolphinService/WebService/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->i:Lcom/dolphin/browser/DolphinService/WebService/c;

    return-object v0
.end method

.method public static q()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/dolphin/browser/sync/f;->g:Z

    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract a()V
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sync_version"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/b;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dolphin/browser/sync/f;->k:Lcom/dolphin/browser/sync/b;

    .line 283
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/o;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/dolphin/browser/sync/f;->j:Lcom/dolphin/browser/sync/o;

    .line 277
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/i;->a(Z)V

    .line 411
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 412
    return-void
.end method

.method public a(ZJ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 363
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 397
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->r()Lcom/dolphin/browser/sync/ah;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ah;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    goto :goto_0

    .line 380
    :cond_3
    if-eqz p1, :cond_4

    .line 381
    invoke-virtual {p0, v4}, Lcom/dolphin/browser/sync/f;->a(Z)V

    .line 384
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 386
    if-eqz p1, :cond_5

    .line 387
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->o()Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    .line 393
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 389
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->p()Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 395
    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/sync/f;->a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V

    goto :goto_0
.end method

.method public a(ZLcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 3

    .prologue
    .line 223
    invoke-static {}, Lcom/dolphin/browser/sync/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 228
    if-nez v0, :cond_1

    .line 229
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->r()Lcom/dolphin/browser/sync/ah;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ah;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_3

    invoke-interface {v0}, Lcom/dolphin/browser/sync/ah;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    goto :goto_0

    .line 240
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    .line 241
    monitor-enter v1

    .line 242
    :try_start_0
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/i;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    monitor-exit v1

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_4
    :try_start_1
    new-instance v0, Lcom/dolphin/browser/sync/j;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/sync/j;-><init>(Lcom/dolphin/browser/sync/f;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/sync/i;->a(Lcom/dolphin/browser/sync/j;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v0, "BaseSyncManager"

    const-string v2, "RejectedExecutionException in beginSync!"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 250
    invoke-virtual {v1}, Lcom/dolphin/browser/sync/i;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public b()Lcom/dolphin/browser/sync/k;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    return-object v0
.end method

.method public b(J)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method public c()J
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->b:Landroid/content/SharedPreferences;

    const-string v1, "sync_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/dolphin/browser/sync/f;->a(ZJ)V

    .line 360
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "pref_last_sync_time"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "pref_is_upload_pending"

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x3e8

    return v0
.end method

.method protected g()Lcom/dolphin/browser/sync/i;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->k:Lcom/dolphin/browser/sync/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/b;->b()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public k()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 205
    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->h:Lcom/dolphin/browser/sync/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/i;->c()V

    .line 207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    new-instance v0, Lcom/dolphin/browser/sync/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sync/g;-><init>(Lcom/dolphin/browser/sync/f;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 217
    return-void

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/dolphin/browser/sync/al;->a()Lcom/dolphin/browser/sync/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/al;->b()V

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/k;->c()V

    .line 347
    invoke-direct {p0}, Lcom/dolphin/browser/sync/f;->s()V

    .line 348
    return-void
.end method

.method public n()V
    .locals 3

    .prologue
    .line 355
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/sync/f;->a(ZJ)V

    .line 356
    return-void
.end method

.method public o()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->f()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public p()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->f:Lcom/dolphin/browser/sync/BaseSyncReceiver;

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/BaseSyncReceiver;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/dolphin/browser/sync/f;->f()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected r()Lcom/dolphin/browser/sync/ah;
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sync/f;->e:Lcom/dolphin/browser/sync/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/sync/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v0

    return-object v0
.end method
