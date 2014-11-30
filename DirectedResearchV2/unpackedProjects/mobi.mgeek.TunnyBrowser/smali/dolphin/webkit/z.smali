.class Ldolphin/webkit/z;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# static fields
.field private static final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ldolphin/webkit/aa;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ldolphin/webkit/aa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ldolphin/webkit/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ldolphin/webkit/z;->a:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ldolphin/webkit/z;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    .line 44
    return-void
.end method

.method private a(I)Ldolphin/webkit/aa;
    .locals 2

    .prologue
    const/16 v0, 0x2000

    .line 113
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 116
    :cond_0
    sget-object v1, Ldolphin/webkit/z;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0}, Ldolphin/webkit/z;->g()V

    .line 119
    sget-object v0, Ldolphin/webkit/z;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    sget-object v0, Ldolphin/webkit/z;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/aa;

    .line 123
    if-eqz v0, :cond_1

    .line 124
    monitor-exit v1

    .line 127
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ldolphin/webkit/aa;

    invoke-direct {v0, p1}, Ldolphin/webkit/aa;-><init>(I)V

    monitor-exit v1

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldolphin/webkit/z;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ldolphin/webkit/z;->b:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 103
    :goto_0
    sget-object v0, Ldolphin/webkit/z;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 104
    if-nez v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    sget-object v1, Ldolphin/webkit/z;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()Ldolphin/webkit/aa;
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([BII)V
    .locals 4

    .prologue
    .line 47
    monitor-enter p0

    :goto_0
    if-lez p3, :cond_2

    .line 49
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0, p3}, Ldolphin/webkit/z;->a(I)Ldolphin/webkit/aa;

    move-result-object v0

    .line 51
    iget-object v1, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    :cond_0
    :goto_1
    iget-object v1, v0, Ldolphin/webkit/aa;->a:[B

    array-length v1, v1

    iget v2, v0, Ldolphin/webkit/aa;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    iget-object v2, v0, Ldolphin/webkit/aa;->a:[B

    iget v3, v0, Ldolphin/webkit/aa;->b:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v2, v0, Ldolphin/webkit/aa;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Ldolphin/webkit/aa;->b:I

    .line 62
    sub-int/2addr p3, v1

    .line 63
    add-int/2addr p2, v1

    .line 64
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/aa;

    .line 54
    iget v1, v0, Ldolphin/webkit/aa;->b:I

    iget-object v2, v0, Ldolphin/webkit/aa;->a:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 55
    invoke-direct {p0, p3}, Ldolphin/webkit/z;->a(I)Ldolphin/webkit/aa;

    move-result-object v0

    .line 56
    iget-object v1, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v1, p0, Ldolphin/webkit/z;->c:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    .line 85
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/aa;

    .line 87
    iget v0, v0, Ldolphin/webkit/aa;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    move v1, v0

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    monitor-exit p0

    return v1

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/z;->a()Ldolphin/webkit/aa;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ldolphin/webkit/aa;->a()V

    .line 96
    invoke-virtual {p0}, Ldolphin/webkit/z;->a()Ldolphin/webkit/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
