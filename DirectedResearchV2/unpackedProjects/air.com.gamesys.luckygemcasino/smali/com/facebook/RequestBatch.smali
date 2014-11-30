.class public Lcom/facebook/RequestBatch;
.super Ljava/util/AbstractList;
.source "RequestBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/RequestBatch$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/facebook/Request;",
        ">;"
    }
.end annotation


# static fields
.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private batchApplicationId:Ljava/lang/String;

.field private callbackHandler:Landroid/os/Handler;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/RequestBatch$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutInMilliseconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .locals 2
    .param p1, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 70
    iget-object v0, p1, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    .line 71
    iget v0, p1, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 54
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .locals 1
    .param p1, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    .line 61
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public final add(ILcom/facebook/Request;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "request"    # Lcom/facebook/Request;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p2, Lcom/facebook/Request;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/RequestBatch;->add(ILcom/facebook/Request;)V

    return-void
.end method

.method public final add(Lcom/facebook/Request;)Z
    .locals 1
    .param p1, "request"    # Lcom/facebook/Request;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/Request;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestBatch;->add(Lcom/facebook/Request;)Z

    move-result v0

    return v0
.end method

.method public addCallback(Lcom/facebook/RequestBatch$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/facebook/RequestBatch$Callback;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    return-void
.end method

.method public final executeAndWait()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->executeAndWaitImpl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeAndWaitImpl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->executeAsyncImpl()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method executeAsyncImpl()Lcom/facebook/RequestAsyncTask;
    .locals 1

    .prologue
    .line 229
    invoke-static {p0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Lcom/facebook/Request;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method final getBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/RequestBatch;->batchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method final getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method final getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/RequestBatch$Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    return-object v0
.end method

.method final getRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    return v0
.end method

.method public final remove(I)Lcom/facebook/Request;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/RequestBatch;->remove(I)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Lcom/facebook/RequestBatch$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/facebook/RequestBatch$Callback;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public final set(ILcom/facebook/Request;)Lcom/facebook/Request;
    .locals 1
    .param p1, "location"    # I
    .param p2, "request"    # Lcom/facebook/Request;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lcom/facebook/Request;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/RequestBatch;->set(ILcom/facebook/Request;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method final setBatchApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchApplicationId"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/facebook/RequestBatch;->batchApplicationId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method final setCallbackHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method public setTimeout(I)V
    .locals 2
    .param p1, "timeoutInMilliseconds"    # I

    .prologue
    .line 88
    if-gez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument timeoutInMilliseconds must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput p1, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    .line 92
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
