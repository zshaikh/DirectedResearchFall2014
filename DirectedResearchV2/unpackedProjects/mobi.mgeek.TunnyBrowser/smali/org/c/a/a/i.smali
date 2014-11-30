.class public Lorg/c/a/a/i;
.super Lorg/c/a/a/t;
.source "CachedExchange.java"


# instance fields
.field private final a:Lorg/c/a/b/e;

.field private volatile g:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/c/a/a/t;-><init>()V

    .line 41
    if-eqz p1, :cond_0

    new-instance v0, Lorg/c/a/b/e;

    invoke-direct {v0}, Lorg/c/a/b/e;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/c/a/a/i;->a:Lorg/c/a/b/e;

    .line 42
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lorg/c/a/a/i;->g:I

    .line 62
    invoke-super {p0, p1, p2, p3}, Lorg/c/a/a/t;->a(Lorg/c/a/c/f;ILorg/c/a/c/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/i;->a:Lorg/c/a/b/e;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/c/a/a/i;->a:Lorg/c/a/b/e;

    invoke-interface {p2}, Lorg/c/a/c/f;->b()Lorg/c/a/c/f;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/c/a/b/e;->b(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/c/a/a/t;->a(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/c/a/a/i;->g()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response not received yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 48
    :cond_0
    :try_start_1
    iget v0, p0, Lorg/c/a/a/i;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method
