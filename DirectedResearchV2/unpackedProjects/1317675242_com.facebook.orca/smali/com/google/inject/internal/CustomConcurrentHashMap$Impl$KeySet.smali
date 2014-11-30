.class final Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->clear()V

    .line 1805
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1784
    new-instance v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeyIterator;

    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeyIterator;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeySet;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
