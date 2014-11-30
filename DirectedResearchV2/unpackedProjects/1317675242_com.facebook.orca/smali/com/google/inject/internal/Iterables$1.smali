.class final Lcom/google/inject/internal/Iterables$1;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Lcom/google/inject/internal/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/Function",
        "<",
        "Ljava/lang/Iterable",
        "<+TT;>;",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/Iterables$1;->apply(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
