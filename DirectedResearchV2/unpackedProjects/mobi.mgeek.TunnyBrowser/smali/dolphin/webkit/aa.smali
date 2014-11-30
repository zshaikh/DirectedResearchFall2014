.class public Ldolphin/webkit/aa;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-array v0, p1, [B

    iput-object v0, p0, Ldolphin/webkit/aa;->a:[B

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/aa;->b:I

    .line 138
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 144
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/webkit/aa;->b:I

    .line 145
    invoke-static {}, Ldolphin/webkit/z;->e()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-static {}, Ldolphin/webkit/z;->e()Ljava/util/LinkedList;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-static {}, Ldolphin/webkit/z;->f()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 149
    invoke-static {}, Ldolphin/webkit/z;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
