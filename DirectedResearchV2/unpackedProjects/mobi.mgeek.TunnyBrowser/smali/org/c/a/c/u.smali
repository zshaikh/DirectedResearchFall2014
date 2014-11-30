.class public Lorg/c/a/c/u;
.super Lorg/c/a/c/b;
.source "PooledBuffers.java"


# instance fields
.field private final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/c/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/c/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/c/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:I

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/c/a/c/b;-><init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;)V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/u;->f:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/u;->g:Ljava/util/Queue;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/u;->h:Ljava/util/Queue;

    .line 42
    if-ne p1, p5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/c/a/c/u;->k:Z

    .line 43
    if-ne p3, p5, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/c/a/c/u;->l:Z

    .line 44
    iput p6, p0, Lorg/c/a/c/u;->j:I

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method


# virtual methods
.method public b(I)Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/c/a/c/u;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/c/a/c/u;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/c/a/c/u;->e()Lorg/c/a/c/f;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-boolean v0, p0, Lorg/c/a/c/u;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/c/a/c/u;->a()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/c/a/c/u;->f()Lorg/c/a/c/f;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/c/a/c/u;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/f;

    .line 81
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/c/a/c/f;->v()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 83
    iget-object v0, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 84
    iget-object v0, p0, Lorg/c/a/c/u;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/f;

    goto :goto_1

    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lorg/c/a/c/u;->a(I)Lorg/c/a/c/f;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public c(Lorg/c/a/c/f;)V
    .locals 2

    .prologue
    .line 97
    invoke-interface {p1}, Lorg/c/a/c/f;->e()V

    .line 98
    invoke-interface {p1}, Lorg/c/a/c/f;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/c/a/c/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/c/a/c/u;->j:I

    if-le v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0, p1}, Lorg/c/a/c/u;->a(Lorg/c/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lorg/c/a/c/u;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lorg/c/a/c/u;->b(Lorg/c/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lorg/c/a/c/u;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lorg/c/a/c/u;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public e()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/c/a/c/u;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/f;

    .line 51
    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/c/a/c/u;->c()Lorg/c/a/c/f;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public f()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/c/a/c/u;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/f;

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/c/a/c/u;->d()Lorg/c/a/c/f;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lorg/c/a/c/u;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, "%s [%d/%d@%d,%d/%d@%d,%d/%d@-]"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/c/a/c/u;->f:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/c/a/c/u;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/c/a/c/u;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/c/a/c/u;->g:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lorg/c/a/c/u;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lorg/c/a/c/u;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/c/a/c/u;->h:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lorg/c/a/c/u;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
