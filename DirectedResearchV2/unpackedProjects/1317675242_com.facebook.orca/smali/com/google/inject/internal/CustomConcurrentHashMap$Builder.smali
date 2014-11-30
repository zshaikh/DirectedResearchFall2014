.class final Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# instance fields
.field concurrencyLevel:I

.field initialCapacity:I

.field loadFactor:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/high16 v0, 0x3f400000

    iput v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->loadFactor:F

    .line 136
    iput v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->initialCapacity:I

    .line 137
    iput v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;->concurrencyLevel:I

    return-void
.end method


# virtual methods
.method public buildComputingMap(Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/inject/internal/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    if-nez p2, :cond_1

    .line 254
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "computer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingImpl;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/inject/internal/CustomConcurrentHashMap$Builder;Lcom/google/inject/internal/Function;)V

    return-object v0
.end method
