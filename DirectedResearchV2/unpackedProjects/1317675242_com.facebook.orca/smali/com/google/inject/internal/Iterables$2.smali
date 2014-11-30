.class final Lcom/google/inject/internal/Iterables$2;
.super Lcom/google/inject/internal/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterators:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/inject/internal/Iterables$2;->val$iterators:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/inject/internal/Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/inject/internal/Iterables$2;->val$iterators:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
