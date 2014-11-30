.class Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->b:Ljava/lang/Object;

    .line 52
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->b:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v1

    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$ValueCreator;->createValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    iget-object v1, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    iget-object v0, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/pocketchange/android/util/SelfPopulatingConcurrentMap$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    .line 51
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
