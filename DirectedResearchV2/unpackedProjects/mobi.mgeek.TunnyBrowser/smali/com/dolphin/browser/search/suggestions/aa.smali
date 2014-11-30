.class public Lcom/dolphin/browser/search/suggestions/aa;
.super Ljava/lang/Object;
.source "SuggestionCheckRepeat.java"


# direct methods
.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    if-nez p0, :cond_1

    .line 16
    const/4 p0, 0x0

    .line 28
    :cond_0
    return-object p0

    .line 18
    :cond_1
    sget-object v0, Lcom/dolphin/browser/search/x;->a:Lcom/dolphin/browser/search/x;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 20
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 21
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/w;

    iget-object v0, v0, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 27
    goto :goto_0

    .line 25
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method
