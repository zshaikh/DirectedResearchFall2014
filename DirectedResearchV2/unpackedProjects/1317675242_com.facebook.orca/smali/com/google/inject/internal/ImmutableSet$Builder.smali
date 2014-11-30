.class public Lcom/google/inject/internal/ImmutableSet$Builder;
.super Ljava/lang/Object;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    invoke-static {}, Lcom/google/inject/internal/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    .line 575
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/inject/internal/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 588
    const-string v0, "element cannot be null"

    invoke-static {p1, v0}, Lcom/google/inject/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    return-object p0
.end method

.method public build()Lcom/google/inject/internal/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
