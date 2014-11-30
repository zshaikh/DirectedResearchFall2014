.class public final Lcom/google/common/collect/HashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "HashMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->a:I

    .line 92
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 95
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/HashMultimap;->a:I

    .line 96
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    iput p2, p0, Lcom/google/common/collect/HashMultimap;->a:I

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Lcom/google/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/HashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static j()Lcom/google/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/HashMultimap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/collect/HashMultimap;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c_()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->c_()I

    move-result v0

    return v0
.end method

.method d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lcom/google/common/collect/HashMultimap;->a:I

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->i()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
