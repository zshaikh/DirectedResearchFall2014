.class public Ldolphin/util/o;
.super Ljava/lang/Object;
.source "PriorityMessageQueue.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ldolphin/util/p;

.field private c:Ldolphin/util/p;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Ldolphin/util/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/util/o;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ldolphin/util/p;

    invoke-direct {v0, p0}, Ldolphin/util/p;-><init>(Ldolphin/util/o;)V

    iput-object v0, p0, Ldolphin/util/o;->b:Ldolphin/util/p;

    .line 26
    new-instance v0, Ldolphin/util/p;

    invoke-direct {v0, p0}, Ldolphin/util/p;-><init>(Ldolphin/util/o;)V

    iput-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/util/o;->d:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/util/o;->e:Ljava/lang/Object;

    .line 32
    return-void
.end method

.method private final a(Ldolphin/util/n;Ldolphin/util/n;)V
    .locals 5

    .prologue
    .line 394
    sget-boolean v0, Ldolphin/util/o;->a:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 400
    :cond_1
    iget-object v1, p0, Ldolphin/util/o;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget v2, p1, Ldolphin/util/n;->c:I

    .line 403
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v3, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 404
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v0, v0, Ldolphin/util/p;->b:Ldolphin/util/n;

    .line 405
    iget-object v4, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    invoke-virtual {v4}, Ldolphin/util/p;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iput-object p1, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 407
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iput-object p2, v0, Ldolphin/util/p;->b:Ldolphin/util/n;

    .line 431
    :goto_0
    monitor-exit v1

    .line 432
    return-void

    .line 408
    :cond_2
    iget v4, v3, Ldolphin/util/n;->c:I

    if-ge v2, v4, :cond_3

    .line 410
    iput-object v3, p2, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 411
    iput-object p2, v3, Ldolphin/util/n;->e:Ldolphin/util/n;

    .line 412
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iput-object p1, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 413
    :cond_3
    :try_start_1
    iget v4, v0, Ldolphin/util/n;->c:I

    if-lt v2, v4, :cond_4

    .line 415
    iput-object p1, v0, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 416
    iput-object v0, p1, Ldolphin/util/n;->e:Ldolphin/util/n;

    .line 417
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iput-object p2, v0, Ldolphin/util/p;->b:Ldolphin/util/n;

    goto :goto_0

    .line 420
    :cond_4
    :goto_1
    if-eq v0, v3, :cond_5

    iget v4, v0, Ldolphin/util/n;->c:I

    if-ge v2, v4, :cond_5

    .line 421
    iget-object v0, v0, Ldolphin/util/n;->e:Ldolphin/util/n;

    goto :goto_1

    .line 424
    :cond_5
    iget-object v2, v0, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 425
    sget-boolean v3, Ldolphin/util/o;->a:Z

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 426
    :cond_6
    iput-object p1, v0, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 427
    iput-object v0, p1, Ldolphin/util/n;->e:Ldolphin/util/n;

    .line 428
    iput-object v2, p2, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 429
    iput-object p2, v2, Ldolphin/util/n;->e:Ldolphin/util/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private b()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method private final b(J)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v4, p0, Ldolphin/util/o;->d:Ljava/lang/Object;

    monitor-enter v4

    .line 340
    :try_start_0
    iget-object v0, p0, Ldolphin/util/o;->b:Ldolphin/util/p;

    iget-object v3, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 341
    :goto_0
    if-eqz v3, :cond_0

    .line 345
    iget-wide v5, v3, Ldolphin/util/n;->d:J

    .line 346
    cmp-long v0, p1, v5

    if-gez v0, :cond_2

    .line 380
    :cond_0
    iget-object v0, p0, Ldolphin/util/o;->b:Ldolphin/util/p;

    iput-object v3, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 381
    if-nez v3, :cond_1

    .line 383
    iget-object v0, p0, Ldolphin/util/o;->b:Ldolphin/util/p;

    iput-object v3, v0, Ldolphin/util/p;->b:Ldolphin/util/n;

    .line 385
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-direct {p0}, Ldolphin/util/o;->b()V

    .line 391
    return-void

    :cond_2
    move-object v0, v1

    move-object v2, v3

    .line 354
    :goto_1
    if-eqz v2, :cond_3

    :try_start_1
    iget-wide v5, v2, Ldolphin/util/n;->d:J

    cmp-long v5, p1, v5

    if-ltz v5, :cond_3

    iget v5, v2, Ldolphin/util/n;->c:I

    iget v6, v3, Ldolphin/util/n;->c:I

    if-ne v5, v6, :cond_3

    .line 362
    iget-object v0, v2, Ldolphin/util/n;->f:Ldolphin/util/n;

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    .line 366
    :cond_3
    if-eqz v2, :cond_4

    .line 367
    const/4 v5, 0x0

    iput-object v5, v0, Ldolphin/util/n;->f:Ldolphin/util/n;

    .line 368
    const/4 v5, 0x0

    iput-object v5, v2, Ldolphin/util/n;->e:Ldolphin/util/n;

    .line 372
    :cond_4
    invoke-direct {p0, v3, v0}, Ldolphin/util/o;->a(Ldolphin/util/n;Ldolphin/util/n;)V

    move-object v3, v2

    .line 377
    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method final a()J
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Ldolphin/util/o;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_0
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    invoke-virtual {v0}, Ldolphin/util/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v0, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    iget-wide v0, v0, Ldolphin/util/n;->d:J

    monitor-exit v2

    .line 86
    :goto_0
    return-wide v0

    .line 79
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    iget-object v2, p0, Ldolphin/util/o;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_1
    iget-object v0, p0, Ldolphin/util/o;->b:Ldolphin/util/p;

    invoke-virtual {v0}, Ldolphin/util/p;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Ldolphin/util/o;->b:Ldolphin/util/p;

    iget-object v0, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    iget-wide v0, v0, Ldolphin/util/n;->d:J

    monitor-exit v2

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 79
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 84
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method final a(J)Ldolphin/util/n;
    .locals 4

    .prologue
    .line 119
    .line 127
    invoke-direct {p0, p1, p2}, Ldolphin/util/o;->b(J)V

    .line 131
    iget-object v1, p0, Ldolphin/util/o;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v0, v0, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v2, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v2, v2, Ldolphin/util/p;->a:Ldolphin/util/n;

    iget-object v3, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v3, v3, Ldolphin/util/p;->b:Ldolphin/util/n;

    if-ne v2, v3, :cond_1

    .line 138
    iget-object v2, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    const/4 v3, 0x0

    iput-object v3, v2, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 139
    iget-object v2, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    const/4 v3, 0x0

    iput-object v3, v2, Ldolphin/util/p;->b:Ldolphin/util/n;

    .line 149
    :cond_0
    :goto_0
    monitor-exit v1

    .line 158
    return-object v0

    .line 143
    :cond_1
    iget-object v2, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v3, v0, Ldolphin/util/n;->f:Ldolphin/util/n;

    iput-object v3, v2, Ldolphin/util/p;->a:Ldolphin/util/n;

    .line 144
    iget-object v2, p0, Ldolphin/util/o;->c:Ldolphin/util/p;

    iget-object v2, v2, Ldolphin/util/p;->a:Ldolphin/util/n;

    const/4 v3, 0x0

    iput-object v3, v2, Ldolphin/util/n;->e:Ldolphin/util/n;

    .line 145
    const/4 v2, 0x0

    iput-object v2, v0, Ldolphin/util/n;->f:Ldolphin/util/n;

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
