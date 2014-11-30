.class public Lorg/c/a/c/v;
.super Ljava/lang/Object;
.source "SimpleBuffers.java"

# interfaces
.implements Lorg/c/a/c/l;


# instance fields
.field final a:Lorg/c/a/c/f;

.field final b:Lorg/c/a/c/f;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Lorg/c/a/c/f;Lorg/c/a/c/f;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    .line 41
    iput-object p2, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    .line 42
    return-void
.end method


# virtual methods
.method public b(I)Lorg/c/a/c/f;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->v()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/c/a/c/v;->e()Lorg/c/a/c/f;

    move-result-object v0

    monitor-exit p0

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->v()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lorg/c/a/c/v;->f()Lorg/c/a/c/f;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c(Lorg/c/a/c/f;)V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-interface {p1}, Lorg/c/a/c/f;->e()V

    .line 109
    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/v;->c:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    if-ne p1, v0, :cond_1

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/c/v;->d:Z

    .line 113
    :cond_1
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/c/a/c/v;->c:Z

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/v;->c:Z

    .line 75
    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    monitor-exit p0

    .line 86
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->v()I

    move-result v0

    iget-object v1, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->v()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/c/a/c/v;->d:Z

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/v;->d:Z

    .line 81
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    monitor-exit p0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 84
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Lorg/c/a/c/o;

    iget-object v1, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->v()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    monitor-exit p0

    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Lorg/c/a/c/o;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public f()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/c/a/c/v;->d:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/v;->d:Z

    .line 52
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    monitor-exit p0

    .line 63
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->v()I

    move-result v0

    iget-object v1, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->v()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/c/a/c/v;->c:Z

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/c/v;->c:Z

    .line 58
    iget-object v0, p0, Lorg/c/a/c/v;->a:Lorg/c/a/c/f;

    monitor-exit p0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lorg/c/a/c/o;

    iget-object v1, p0, Lorg/c/a/c/v;->b:Lorg/c/a/c/f;

    invoke-interface {v1}, Lorg/c/a/c/f;->v()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    monitor-exit p0

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lorg/c/a/c/o;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
