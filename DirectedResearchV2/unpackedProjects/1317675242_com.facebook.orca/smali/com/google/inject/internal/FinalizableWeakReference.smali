.class public abstract Lcom/google/inject/internal/FinalizableWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "FinalizableWeakReference.java"

# interfaces
.implements Lcom/google/inject/internal/FinalizableReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;",
        "Lcom/google/inject/internal/FinalizableReference;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/google/inject/internal/FinalizableReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/FinalizableReferenceQueue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p2, Lcom/google/inject/internal/FinalizableReferenceQueue;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 42
    invoke-virtual {p2}, Lcom/google/inject/internal/FinalizableReferenceQueue;->cleanUp()V

    .line 43
    return-void
.end method
