.class public Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;
.super Ljava/lang/Object;
.source "KeyedAsyncTaskExecutor.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/facebook/orca/common/async/KeyedAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "orca:KeyedAsyncTaskExecutor"

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    .line 25
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->g()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/facebook/orca/common/async/KeyedAsyncTask;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/async/KeyedAsyncTask;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/orca/common/async/KeyedAsyncTask;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;

    invoke-direct {v0, p0, p0, p1}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;-><init>(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already contains a task for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/debug/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;->c:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a(Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor$TaskQueue;->a()V

    .line 128
    return-void
.end method
