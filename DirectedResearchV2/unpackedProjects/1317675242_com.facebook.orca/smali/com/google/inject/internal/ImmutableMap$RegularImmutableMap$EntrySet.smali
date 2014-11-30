.class Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$EntrySet;
.super Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 657
    # getter for: Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->access$500(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 658
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$EntrySet;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    .line 659
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 662
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 663
    check-cast p1, Ljava/util/Map$Entry;

    .line 664
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$EntrySet;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 667
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 665
    goto :goto_0

    :cond_1
    move v0, v2

    .line 667
    goto :goto_0
.end method
