.class Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;
.super Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;->a:Ljava/lang/Object;

    .line 1663
    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 0
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
    .line 1672
    return-object p0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1677
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
    .line 1682
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 1686
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 1689
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongValueReference;->a:Ljava/lang/Object;

    return-object v0
.end method
