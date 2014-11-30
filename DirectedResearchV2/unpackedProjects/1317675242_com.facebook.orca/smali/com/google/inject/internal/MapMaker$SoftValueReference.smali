.class Lcom/google/inject/internal/MapMaker$SoftValueReference;
.super Lcom/google/inject/internal/FinalizableSoftReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/inject/internal/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/FinalizableSoftReference",
        "<TV;>;",
        "Lcom/google/inject/internal/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1029
    sget-object v0, Lcom/google/inject/internal/MapMaker$QueueHolder;->queue:Lcom/google/inject/internal/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/inject/internal/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/google/inject/internal/FinalizableReferenceQueue;)V

    .line 1030
    iput-object p2, p0, Lcom/google/inject/internal/MapMaker$SoftValueReference;->entry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    .line 1031
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v0, Lcom/google/inject/internal/MapMaker$SoftValueReference;

    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/internal/MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$SoftValueReference;->entry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->valueReclaimed()V

    .line 1035
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
