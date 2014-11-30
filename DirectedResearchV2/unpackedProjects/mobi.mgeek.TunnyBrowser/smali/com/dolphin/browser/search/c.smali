.class Lcom/dolphin/browser/search/c;
.super Landroid/database/AbstractCursor;
.source "MixedSuggestionsAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/search/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/launcher/cl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lcom/dolphin/browser/search/c;->a:Lcom/dolphin/browser/search/a;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/dolphin/browser/search/c;->b:Ljava/util/List;

    .line 245
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/dolphin/browser/search/a;->d()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/search/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/dolphin/browser/search/c;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 282
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/search/c;->b:Ljava/util/List;

    iget v1, p0, Lcom/dolphin/browser/search/c;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->r()I

    move-result v0

    return v0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    iget v0, p0, Lcom/dolphin/browser/search/c;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/dolphin/browser/search/c;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 260
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/dolphin/browser/search/c;->b:Ljava/util/List;

    iget v1, p0, Lcom/dolphin/browser/search/c;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->e()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/search/c;->b:Ljava/util/List;

    iget v1, p0, Lcom/dolphin/browser/search/c;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
