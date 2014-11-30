.class public interface abstract Lcom/google/inject/internal/CustomConcurrentHashMap$ComputingStrategy;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/CustomConcurrentHashMap$Strategy",
        "<TK;TV;TE;>;"
    }
.end annotation


# virtual methods
.method public abstract compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/internal/Function;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;",
            "Lcom/google/inject/internal/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation
.end method
