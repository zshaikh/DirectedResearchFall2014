.class public Lcom/redbox/android/http/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final MAX_CONNECTIONS:I = 0x5

.field private static instance:Lcom/redbox/android/http/ConnectionManager;


# instance fields
.field private active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbox/android/http/AsyncHttpConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbox/android/http/AsyncHttpConnectionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    .line 9
    return-void
.end method

.method public static getInstance()Lcom/redbox/android/http/ConnectionManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/redbox/android/http/ConnectionManager;->instance:Lcom/redbox/android/http/ConnectionManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/redbox/android/http/ConnectionManager;

    invoke-direct {v0}, Lcom/redbox/android/http/ConnectionManager;-><init>()V

    sput-object v0, Lcom/redbox/android/http/ConnectionManager;->instance:Lcom/redbox/android/http/ConnectionManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/redbox/android/http/ConnectionManager;->instance:Lcom/redbox/android/http/ConnectionManager;

    return-object v0
.end method

.method private startNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    const-string v2, "Start next HttpConnection"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const-string v2, "QUEUE NOT EMPTY"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 38
    .local v0, "next":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 42
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 44
    .end local v0    # "next":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method public didComplete(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    invoke-direct {p0}, Lcom/redbox/android/http/ConnectionManager;->startNext()V

    .line 49
    return-void
.end method

.method public push(Lcom/redbox/android/http/AsyncHttpConnectionHandler;)V
    .locals 2
    .param p1, "runnable"    # Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .prologue
    .line 25
    const-string v0, "Adding to HTTP QUEUE"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/redbox/android/http/ConnectionManager;->startNext()V

    .line 31
    :cond_1
    return-void
.end method

.method public shutDown()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 55
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 60
    return-void

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/redbox/android/http/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 57
    .local v0, "handler":Lcom/redbox/android/http/AsyncHttpConnectionHandler;
    invoke-virtual {v0}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->abortConnection()V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
