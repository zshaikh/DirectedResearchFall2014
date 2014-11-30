.class Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/collect/CustomConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile j:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .param p4    # Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->g()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->j:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 858
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    .line 859
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->f:Ljava/lang/Object;

    .line 860
    iput p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->h:I

    .line 861
    iput-object p4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 862
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 875
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->h:I

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
    .line 866
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->i:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->j:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    return-object v0
.end method

.method public notifyValueReclaimed(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->g:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V

    .line 939
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1

    .prologue
    .line 879
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 916
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->j:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 933
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$StrongEntry;->j:Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;

    .line 934
    invoke-interface {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ValueReference;->clear()V

    .line 935
    return-void
.end method
