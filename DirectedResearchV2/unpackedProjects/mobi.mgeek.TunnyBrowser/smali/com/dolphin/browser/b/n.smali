.class public Lcom/dolphin/browser/b/n;
.super Ljava/lang/Object;
.source "ImageTaskQueue.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/b/h;",
            "Lcom/dolphin/browser/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/dolphin/browser/b/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/b/n;->a:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/b/n;->b:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Lcom/dolphin/browser/b/j;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/b/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/b/j;
    .locals 3

    .prologue
    .line 53
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/b/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/j;

    .line 56
    iget-object v1, p0, Lcom/dolphin/browser/b/n;->a:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/dolphin/browser/b/j;->b:Lcom/dolphin/browser/b/h;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    monitor-exit p0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    monitor-exit p0

    .line 61
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/dolphin/browser/b/h;)V
    .locals 2

    .prologue
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/b/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/j;

    .line 22
    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/dolphin/browser/b/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/dolphin/browser/b/h;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dolphin/browser/b/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/j;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    iget-object v0, v0, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/dolphin/browser/b/h;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/b/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/b/j;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iput-object p2, v0, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    .line 41
    invoke-direct {p0, v0}, Lcom/dolphin/browser/b/n;->a(Lcom/dolphin/browser/b/j;)V

    .line 49
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/dolphin/browser/b/j;

    invoke-direct {v0}, Lcom/dolphin/browser/b/j;-><init>()V

    .line 44
    iput-object p2, v0, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    .line 45
    iput-object p1, v0, Lcom/dolphin/browser/b/j;->b:Lcom/dolphin/browser/b/h;

    .line 46
    iget-object v1, p0, Lcom/dolphin/browser/b/n;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/dolphin/browser/b/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/b/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
