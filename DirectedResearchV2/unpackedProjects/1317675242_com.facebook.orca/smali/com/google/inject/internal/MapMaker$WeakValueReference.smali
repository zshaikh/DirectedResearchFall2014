.class Lcom/google/inject/internal/MapMaker$WeakValueReference;
.super Lcom/google/inject/internal/FinalizableWeakReference;
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
        "Lcom/google/inject/internal/FinalizableWeakReference",
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
    .line 1004
    sget-object v0, Lcom/google/inject/internal/MapMaker$QueueHolder;->queue:Lcom/google/inject/internal/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/inject/internal/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/inject/internal/FinalizableReferenceQueue;)V

    .line 1005
    iput-object p2, p0, Lcom/google/inject/internal/MapMaker$WeakValueReference;->entry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    .line 1006
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
    .line 1014
    new-instance v0, Lcom/google/inject/internal/MapMaker$WeakValueReference;

    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/inject/internal/MapMaker$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/google/inject/internal/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$WeakValueReference;->entry:Lcom/google/inject/internal/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/inject/internal/MapMaker$ReferenceEntry;->valueReclaimed()V

    .line 1010
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
    .line 1018
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
