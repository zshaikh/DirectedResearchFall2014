.class public Lcom/dolphin/browser/search/t;
.super Lcom/dolphin/browser/util/f;
.source "SuggestionAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/search/w;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/k;


# direct methods
.method protected constructor <init>(Lcom/dolphin/browser/search/k;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/t;->a([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 209
    aget-object v1, p1, v0

    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const-string v3, "Search Engine Filter Task"

    invoke-static {v3}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v3

    .line 212
    new-instance v4, Lcom/dolphin/browser/search/u;

    iget-object v5, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    invoke-direct {v4, v5}, Lcom/dolphin/browser/search/u;-><init>(Lcom/dolphin/browser/search/k;)V

    .line 213
    invoke-virtual {v4, v1}, Lcom/dolphin/browser/search/u;->a(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v4}, Lcom/dolphin/browser/search/u;->c()I

    move-result v5

    .line 215
    :goto_0
    if-ge v0, v5, :cond_2

    .line 216
    invoke-virtual {v4}, Lcom/dolphin/browser/search/u;->a()Lcom/dolphin/browser/search/w;

    move-result-object v6

    .line 217
    if-eqz v6, :cond_1

    .line 218
    const/high16 v7, 0x3f800000

    iput v7, v6, Lcom/dolphin/browser/search/w;->e:F

    .line 220
    iget-object v7, v6, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 221
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    iget-object v7, v6, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    iget-object v7, v6, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/dolphin/browser/search/w;->b:Ljava/lang/String;

    .line 225
    iget-object v7, v6, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    .line 228
    :cond_1
    invoke-virtual {v4}, Lcom/dolphin/browser/search/u;->d()Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v4}, Lcom/dolphin/browser/search/u;->b()V

    .line 231
    invoke-virtual {v3}, Lcom/dolphin/browser/util/cw;->a()J

    .line 232
    return-object v2
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/t;->a(Ljava/util/List;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/dolphin/browser/search/t;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    iget-object v0, v0, Lcom/dolphin/browser/search/k;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    iget-object v1, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/k;->f()Lcom/dolphin/browser/search/z;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    iget-object v1, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    invoke-static {v1}, Lcom/dolphin/browser/search/k;->a(Lcom/dolphin/browser/search/k;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    iget-object v2, v2, Lcom/dolphin/browser/search/k;->d:Lcom/dolphin/browser/search/z;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/search/k;->a(Ljava/lang/CharSequence;Lcom/dolphin/browser/search/z;)V

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/search/t;->a:Lcom/dolphin/browser/search/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/k;->notifyDataSetChanged()V

    goto :goto_0
.end method
