.class Lcom/google/inject/internal/MapMaker$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/inject/internal/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput-object p1, p0, Lcom/google/inject/internal/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1054
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/inject/internal/MapMaker$ReferenceEntry;)Lcom/google/inject/internal/MapMaker$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/inject/internal/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1062
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/inject/internal/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/google/inject/internal/MapMaker$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
