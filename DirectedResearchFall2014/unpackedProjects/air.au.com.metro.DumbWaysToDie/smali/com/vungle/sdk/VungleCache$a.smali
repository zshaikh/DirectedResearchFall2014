.class final Lcom/vungle/sdk/VungleCache$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VungleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/vungle/sdk/VungleCache$c;

.field final synthetic b:Lcom/vungle/sdk/VungleCache;

.field private c:Ljava/lang/Integer;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/VungleCache;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/vungle/sdk/VungleCache$a;->b:Lcom/vungle/sdk/VungleCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/sdk/VungleCache$a;->d:Z

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache$a;->a:Lcom/vungle/sdk/VungleCache$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/VungleCache;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/vungle/sdk/VungleCache$a;-><init>(Lcom/vungle/sdk/VungleCache;)V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    monitor-enter v0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "Cache"

    .line 486
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 489
    iget-boolean v1, p0, Lcom/vungle/sdk/VungleCache$a;->d:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->a:Lcom/vungle/sdk/VungleCache$c;

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->a:Lcom/vungle/sdk/o;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->a:Lcom/vungle/sdk/o;

    invoke-virtual {v2}, Lcom/vungle/sdk/o;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->a:Lcom/vungle/sdk/o;

    invoke-virtual {v3}, Lcom/vungle/sdk/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->b:Lcom/vungle/sdk/o;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->b:Lcom/vungle/sdk/o;

    invoke-virtual {v3}, Lcom/vungle/sdk/o;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/vungle/sdk/VungleCache$c;->b:Lcom/vungle/sdk/o;

    invoke-virtual {v4}, Lcom/vungle/sdk/o;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->c:Lcom/vungle/sdk/o;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->c:Lcom/vungle/sdk/o;

    invoke-virtual {v3}, Lcom/vungle/sdk/o;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/vungle/sdk/VungleCache$c;->c:Lcom/vungle/sdk/o;

    invoke-virtual {v4}, Lcom/vungle/sdk/o;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pre"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/vungle/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Cache"

    const-string v5, "Unzip of pre-roll failed."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->a:Lcom/vungle/sdk/o;

    invoke-virtual {v2}, Lcom/vungle/sdk/o;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->d:Lcom/vungle/sdk/VungleCache$a;

    invoke-direct {v2}, Lcom/vungle/sdk/VungleCache$a;->d()V

    move v2, v7

    :goto_2
    move v4, v7

    :goto_3
    if-eqz v3, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/vungle/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Cache"

    const-string v4, "Unzip of post-roll failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->c:Lcom/vungle/sdk/o;

    invoke-virtual {v3}, Lcom/vungle/sdk/o;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->d:Lcom/vungle/sdk/VungleCache$a;

    invoke-direct {v3}, Lcom/vungle/sdk/VungleCache$a;->d()V

    :goto_4
    move v3, v7

    :goto_5
    iget-object v4, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {v4}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/VungleCache;)Ljava/lang/Boolean;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/VungleCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_4

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v1}, Lcom/vungle/sdk/VungleCache$c;->a()V

    .line 491
    :cond_1
    :goto_6
    monitor-exit v0

    return-void

    :cond_2
    move v2, v8

    .line 489
    goto :goto_2

    :cond_3
    move v2, v8

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    .line 489
    :cond_4
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {v4}, Lcom/vungle/sdk/VungleCache;->b(Lcom/vungle/sdk/VungleCache;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v4

    iput-wide v2, v4, Lcom/vungle/sdk/x;->c:J

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;)Lcom/vungle/sdk/VungleCache$b;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New campaign ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") successfully added."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    iput-object v2, v3, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    iget-object v3, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {v3}, Lcom/vungle/sdk/VungleCache;->c(Lcom/vungle/sdk/VungleCache;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {v2}, Lcom/vungle/sdk/VungleCache;->d(Lcom/vungle/sdk/VungleCache;)V

    iget-object v2, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    iget-object v1, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    iget-object v1, v1, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    invoke-static {v1}, Lcom/vungle/sdk/VungleCache;->a(Lcom/vungle/sdk/VungleCache$b;)V

    goto :goto_6

    :cond_5
    iget-object v1, v1, Lcom/vungle/sdk/VungleCache$c;->f:Lcom/vungle/sdk/VungleCache;

    invoke-static {}, Lcom/vungle/sdk/VungleCache;->e()V

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/vungle/sdk/VungleCache$a;->a:Lcom/vungle/sdk/VungleCache$c;

    invoke-virtual {v1}, Lcom/vungle/sdk/VungleCache$c;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :cond_7
    move v3, v4

    goto :goto_5

    :cond_8
    move v2, v7

    move v4, v8

    goto/16 :goto_3

    :cond_9
    move-object v3, v5

    goto/16 :goto_1

    :cond_a
    move-object v2, v5

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$a;->a()V

    .line 503
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache$a;->c:Ljava/lang/Integer;

    monitor-enter v0

    .line 508
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/vungle/sdk/VungleCache$a;->d:Z

    .line 509
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$a;->a()V

    .line 510
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
