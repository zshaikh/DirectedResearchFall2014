.class public Lcom/facebook/orca/cache/SendMessageManager;
.super Ljava/lang/Object;
.source "SendMessageManager.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/PendingSendMessage$Factory;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/orca/cache/PendingSendMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/PendingSendMessage$Factory;)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/cache/SendMessageManager;->a:Lcom/facebook/orca/cache/PendingSendMessage$Factory;

    .line 25
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->b:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    const-wide/16 v1, 0x12c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/MapMaker;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->o()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/cache/PendingSendMessage;
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Send already in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->a:Lcom/facebook/orca/cache/PendingSendMessage$Factory;

    invoke-interface {v0, p1}, Lcom/facebook/orca/cache/PendingSendMessage$Factory;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/cache/PendingSendMessage;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/facebook/orca/cache/PendingSendMessage;->a()V

    .line 42
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/cache/PendingSendMessage;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/cache/PendingSendMessage;

    return-object p0
.end method

.method a(Lcom/facebook/orca/cache/PendingSendMessage;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/orca/cache/PendingSendMessage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
