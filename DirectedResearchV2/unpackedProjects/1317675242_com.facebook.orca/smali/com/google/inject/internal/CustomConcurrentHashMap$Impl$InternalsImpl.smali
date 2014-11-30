.class Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/inject/internal/CustomConcurrentHashMap$Internals;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/CustomConcurrentHashMap$Internals",
        "<TK;TV;TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeEntry(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 653
    if-nez p1, :cond_0

    .line 654
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 657
    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)Z"
        }
    .end annotation

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
