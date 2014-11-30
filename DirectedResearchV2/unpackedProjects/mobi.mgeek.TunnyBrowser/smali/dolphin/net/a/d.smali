.class Ldolphin/net/a/d;
.super Ljava/lang/Object;
.source "NetworkObservatory.java"


# instance fields
.field final synthetic a:Ldolphin/net/a/a;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:D


# direct methods
.method public constructor <init>(Ldolphin/net/a/a;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 30
    iput-object p1, p0, Ldolphin/net/a/d;->a:Ldolphin/net/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/net/a/d;->d:I

    .line 32
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Ldolphin/net/a/d;->e:D

    .line 33
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p1, Ldolphin/net/a/a;->a:Ljava/util/Comparator;

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    .line 34
    new-instance v0, Ljava/util/PriorityQueue;

    iget-object v1, p1, Ldolphin/net/a/a;->b:Ljava/util/Comparator;

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(D)V
    .locals 0

    .prologue
    .line 37
    iput-wide p1, p0, Ldolphin/net/a/d;->e:D

    return-void
.end method

.method public declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/net/a/d;->d:I

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    iget-object v1, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 46
    iget-object v1, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Ldolphin/net/a/d;->d:I

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 50
    iget v0, p0, Ldolphin/net/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a/d;->d:I

    .line 55
    :cond_0
    iget-object v0, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_0
    iget v0, p0, Ldolphin/net/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldolphin/net/a/d;->d:I

    .line 58
    iget v0, p0, Ldolphin/net/a/d;->d:I

    int-to-double v0, v0

    iget-wide v2, p0, Ldolphin/net/a/d;->e:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 59
    :goto_1
    iget-object v1, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lt v1, v0, :cond_4

    iget-object v1, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    iget-object v2, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_2
    :try_start_1
    iget-object v0, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_3
    iget-object v1, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    iget-object v2, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Ldolphin/net/a/d;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Ldolphin/net/a/d;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    :cond_5
    monitor-exit p0

    return-void
.end method
