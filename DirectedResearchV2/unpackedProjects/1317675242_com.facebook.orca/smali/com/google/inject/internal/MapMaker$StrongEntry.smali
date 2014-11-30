.class Lcom/google/inject/internal/MapMaker$StrongEntry;
.super Ljava/lang/Object;
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
        "Ljava/lang/Object;",
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

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
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
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    # invokes: Lcom/google/inject/internal/MapMaker;->computing()Lcom/google/inject/internal/MapMaker$ValueReference;
    invoke-static {}, Lcom/google/inject/internal/MapMaker;->access$600()Lcom/google/inject/internal/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;

    .line 833
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    .line 834
    iput-object p2, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->key:Ljava/lang/Object;

    .line 835
    iput p3, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->hash:I

    .line 836
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->hash:I

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
    .line 839
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->key:Ljava/lang/Object;

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
    .line 859
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
    .line 849
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;

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
    .line 853
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->valueReference:Lcom/google/inject/internal/MapMaker$ValueReference;

    .line 854
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrongEntry;->internals:Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 857
    return-void
.end method
