.class Lcom/google/common/util/concurrent/AbstractService$Transition;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AbstractListenableFuture",
        "<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/AbstractService;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService;Lcom/google/common/util/concurrent/AbstractService$1;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/Service$State;
    .locals 3

    .prologue
    .line 256
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/common/util/concurrent/Service$State;

    move-object p0, v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/AbstractService;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService$Transition;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method
