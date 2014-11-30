.class final Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeyIterator;
.super Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V
    .locals 0

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$KeyIterator;->this$0:Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/google/inject/internal/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1723
    invoke-super {p0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry()Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
