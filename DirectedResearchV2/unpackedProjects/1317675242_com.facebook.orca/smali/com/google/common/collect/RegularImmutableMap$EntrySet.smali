.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient a:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->a(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 203
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->a:Lcom/google/common/collect/RegularImmutableMap;

    .line 204
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 207
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    .line 208
    check-cast p1, Ljava/util/Map$Entry;

    .line 209
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->a:Lcom/google/common/collect/RegularImmutableMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 210
    goto :goto_0

    :cond_1
    move v0, v2

    .line 212
    goto :goto_0
.end method
