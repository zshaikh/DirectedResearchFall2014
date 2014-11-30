.class Lcom/google/inject/internal/MapMaker$WeakEntry;
.super Lcom/google/inject/internal/FinalizableWeakReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/inject/internal/MapMaker$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/FinalizableWeakReference",
        "<TK;>;",
        "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 946
    sget-object v0, Lcom/google/inject/internal/MapMaker$QueueHolder;->queue:Lcom/google/inject/internal/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/google/inject/internal/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/google/inject/internal/FinalizableReferenceQueue;)V

    .line 963
    # invokes: Lcom/google/inject/internal/MapMaker;->computing()Lcom/google/inject/internal/MapMaker$ValueReference;
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->access$600()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;

    .line 947
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    .line 948
    iput p3, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->hash:I

    .line 949
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    invoke-interface {v0, p0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    .line 957
    return-void
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/google/inject/internal/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 976
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/google/inject/internal/MapMaker$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;

    .line 971
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$WeakEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 974
    return-void
.end method
