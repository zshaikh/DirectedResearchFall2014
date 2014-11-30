.class final enum Lcom/google/inject/internal/MapMaker$Strength$2;
.super Lcom/google/inject/internal/MapMaker$Strength;
.source "MapMaker.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/inject/internal/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/google/inject/internal/MapMaker$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 348
    check-cast p2, Lcom/google/inject/internal/MapMaker$SoftEntry;

    .line 349
    if-nez p3, :cond_0

    new-instance v0, Lcom/google/inject/internal/MapMaker$SoftEntry;

    iget-object v1, p2, Lcom/google/inject/internal/MapMaker$SoftEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    iget v2, p2, Lcom/google/inject/internal/MapMaker$SoftEntry;->hash:I

    invoke-direct {v0, v1, p1, v2}, Lcom/google/inject/internal/MapMaker$SoftEntry;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/MapMaker$LinkedSoftEntry;

    iget-object v1, p2, Lcom/google/inject/internal/MapMaker$SoftEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    iget v2, p2, Lcom/google/inject/internal/MapMaker$SoftEntry;->hash:I

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/google/inject/internal/MapMaker$LinkedSoftEntry;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 329
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 332
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method newEntry(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 341
    if-nez p4, :cond_0

    new-instance v0, Lcom/google/inject/internal/MapMaker$SoftEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/inject/internal/MapMaker$SoftEntry;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/MapMaker$LinkedSoftEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/inject/internal/MapMaker$LinkedSoftEntry;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method referenceValue(Lcom/google/inject/internal/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/google/inject/internal/MapMaker$SoftValueReference;

    invoke-direct {v0, p2, p1}, Lcom/google/inject/internal/MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    return-object v0
.end method
