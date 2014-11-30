.class final Lcom/google/inject/WeakKeySet;
.super Ljava/lang/Object;
.source "WeakKeySet.java"


# instance fields
.field private backingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/inject/internal/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/WeakKeySet;->backingSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/inject/WeakKeySet;->backingSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 43
    instance-of v0, p1, Lcom/google/inject/Key;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/WeakKeySet;->backingSet:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
