.class public abstract Lcom/google/inject/internal/FailableCache;
.super Ljava/lang/Object;
.source "FailableCache.java"


# annotations
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
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/inject/internal/MapMaker;

    invoke-direct {v0}, Lcom/google/inject/internal/MapMaker;-><init>()V

    new-instance v1, Lcom/google/inject/internal/FailableCache$1;

    invoke-direct {v1, p0}, Lcom/google/inject/internal/FailableCache$1;-><init>(Lcom/google/inject/internal/FailableCache;)V

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/MapMaker;->makeComputingMap(Lcom/google/inject/internal/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/FailableCache;->delegate:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract create(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/inject/internal/Errors;",
            ")TV;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/inject/internal/Errors;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/inject/internal/FailableCache;->delegate:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 47
    instance-of v0, p0, Lcom/google/inject/internal/Errors;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/google/inject/internal/Errors;

    invoke-virtual {p2, p0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 49
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 53
    :cond_0
    return-object p0
.end method
