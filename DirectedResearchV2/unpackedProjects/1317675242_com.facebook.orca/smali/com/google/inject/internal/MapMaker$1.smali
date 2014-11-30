.class final Lcom/google/inject/internal/MapMaker$1;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/inject/internal/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/MapMaker$ValueReference",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 734
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
