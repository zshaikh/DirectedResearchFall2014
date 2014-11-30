.class final Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;
.super Ljava/util/AbstractCollection;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->clear()V

    .line 1828
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1811
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$ValueIterator;

    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$ValueIterator;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
