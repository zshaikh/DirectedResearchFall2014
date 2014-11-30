.class Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$KeySet;
.super Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;>;"
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 683
    # getter for: Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->access$500(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    # getter for: Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->keySetHashCode:I
    invoke-static {p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->access$600(Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ImmutableSet$TransformedImmutableSet;-><init>([Ljava/lang/Object;I)V

    .line 684
    iput-object p1, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$KeySet;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    .line 685
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$KeySet;->map:Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 678
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ImmutableMap$RegularImmutableMap$KeySet;->transform(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 688
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
