.class Lcom/google/common/collect/Synchronized$SynchronizedObject;
.super Ljava/lang/Object;
.source "Synchronized.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final c:Ljava/lang/Object;

.field final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->c:Ljava/lang/Object;

    .line 64
    if-nez p2, :cond_0

    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->d:Ljava/lang/Object;

    .line 65
    return-void

    :cond_0
    move-object v0, p2

    .line 64
    goto :goto_0
.end method


# virtual methods
.method m_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
