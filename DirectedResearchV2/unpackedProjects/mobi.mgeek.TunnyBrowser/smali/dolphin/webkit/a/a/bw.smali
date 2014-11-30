.class public Ldolphin/webkit/a/a/bw;
.super Ldolphin/webkit/a/a/bh;
.source "LazyDERSequence.java"


# instance fields
.field private a:[B

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ldolphin/webkit/a/a/bh;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/a/a/bw;->b:Z

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/a/a/bw;->c:I

    .line 17
    iput-object p1, p0, Ldolphin/webkit/a/a/bw;->a:[B

    .line 18
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 73
    const/16 v0, 0x30

    iget-object v1, p0, Ldolphin/webkit/a/a/bw;->a:[B

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 74
    return-void
.end method

.method public declared-synchronized e()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/a/a/bw;->b:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0}, Ldolphin/webkit/a/a/bh;->e()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ldolphin/webkit/a/a/bv;

    iget-object v1, p0, Ldolphin/webkit/a/a/bw;->a:[B

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/bv;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Ldolphin/webkit/a/a/bw;->c:I

    if-gez v0, :cond_0

    .line 56
    new-instance v0, Ldolphin/webkit/a/a/bv;

    iget-object v1, p0, Ldolphin/webkit/a/a/bw;->a:[B

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/bv;-><init>([B)V

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Ldolphin/webkit/a/a/bw;->c:I

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 62
    iget v1, p0, Ldolphin/webkit/a/a/bw;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldolphin/webkit/a/a/bw;->c:I

    goto :goto_0

    .line 66
    :cond_0
    iget v0, p0, Ldolphin/webkit/a/a/bw;->c:I

    return v0
.end method
