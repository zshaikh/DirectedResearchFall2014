.class Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;
.super Lcom/google/common/base/FinalizableSoftReference;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/FinalizableSoftReference",
        "<TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1626
    sget-object v0, Lcom/google/common/collect/CustomConcurrentHashMap$QueueHolder;->a:Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/google/common/base/FinalizableReferenceQueue;)V

    .line 1627
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1628
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1642
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;->finalizeReferent()V

    .line 1633
    return-void
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftValueReference;->a:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    invoke-interface {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;->notifyValueReclaimed(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 1638
    return-void
.end method
