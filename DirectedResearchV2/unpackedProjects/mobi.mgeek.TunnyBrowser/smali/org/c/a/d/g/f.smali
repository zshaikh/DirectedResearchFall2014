.class public Lorg/c/a/d/g/f;
.super Ljava/lang/Object;
.source "Timeout.java"


# instance fields
.field c:Lorg/c/a/d/g/f;

.field d:Lorg/c/a/d/g/f;

.field e:Lorg/c/a/d/g/e;

.field f:J

.field g:J

.field h:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/c/a/d/g/f;->g:J

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/d/g/f;->h:Z

    .line 265
    iput-object p0, p0, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    iput-object p0, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    .line 266
    return-void
.end method

.method static synthetic a(Lorg/c/a/d/g/f;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/c/a/d/g/f;->d()V

    return-void
.end method

.method static synthetic a(Lorg/c/a/d/g/f;Lorg/c/a/d/g/f;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lorg/c/a/d/g/f;->b(Lorg/c/a/d/g/f;)V

    return-void
.end method

.method private b(Lorg/c/a/d/g/f;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    .line 300
    iget-object v1, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    iput-object p1, v1, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    .line 301
    iput-object p1, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    .line 302
    iget-object v1, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    iput-object v0, v1, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    .line 303
    iget-object v0, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    iput-object p0, v0, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    .line 304
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    iget-object v1, p0, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    iput-object v1, v0, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    .line 291
    iget-object v0, p0, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    iget-object v1, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    iput-object v1, v0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    .line 292
    iput-object p0, p0, Lorg/c/a/d/g/f;->d:Lorg/c/a/d/g/f;

    iput-object p0, p0, Lorg/c/a/d/g/f;->c:Lorg/c/a/d/g/f;

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/d/g/f;->h:Z

    .line 294
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lorg/c/a/d/g/f;->e:Lorg/c/a/d/g/e;

    .line 345
    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0}, Lorg/c/a/d/g/e;->a(Lorg/c/a/d/g/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-direct {p0}, Lorg/c/a/d/g/f;->d()V

    .line 350
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/c/a/d/g/f;->g:J

    .line 351
    monitor-exit v1

    .line 353
    :cond_0
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method
