.class public Lcom/google/ads/d/a;
.super Lcom/google/ads/AdRequest;
.source "ProGuard"


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Lcom/google/ads/d/b;

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 22
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 284
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "#%06x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/Map;
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 220
    const-class v0, Lcom/google/ads/c/a/a;

    invoke-virtual {p0, v0}, Lcom/google/ads/d/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c/a/a;

    .line 222
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/google/ads/c/a/a;

    invoke-direct {v0}, Lcom/google/ads/c/a/a;-><init>()V

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/ads/d/a;->a(Lcom/google/ads/c/j;)Lcom/google/ads/AdRequest;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/google/ads/d/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "q"

    iget-object v3, p0, Lcom/google/ads/d/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    iget v1, p0, Lcom/google/ads/d/a;->c:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bgcolor"

    iget v3, p0, Lcom/google/ads/d/a;->c:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    iget v1, p0, Lcom/google/ads/d/a;->d:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/google/ads/d/a;->e:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 237
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientfrom"

    iget v3, p0, Lcom/google/ads/d/a;->d:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "gradientto"

    iget v3, p0, Lcom/google/ads/d/a;->e:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_3
    iget v1, p0, Lcom/google/ads/d/a;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "hcolor"

    iget v3, p0, Lcom/google/ads/d/a;->f:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_4
    iget v1, p0, Lcom/google/ads/d/a;->g:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "dcolor"

    iget v3, p0, Lcom/google/ads/d/a;->g:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_5
    iget v1, p0, Lcom/google/ads/d/a;->h:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 251
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "acolor"

    iget v3, p0, Lcom/google/ads/d/a;->h:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/google/ads/d/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 255
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "font"

    iget-object v3, p0, Lcom/google/ads/d/a;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_7
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "headersize"

    iget v3, p0, Lcom/google/ads/d/a;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget v1, p0, Lcom/google/ads/d/a;->k:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_8

    .line 261
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bcolor"

    iget v3, p0, Lcom/google/ads/d/a;->k:I

    invoke-direct {p0, v3}, Lcom/google/ads/d/a;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_8
    iget-object v1, p0, Lcom/google/ads/d/a;->l:Lcom/google/ads/d/b;

    if-eqz v1, :cond_9

    .line 265
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "btype"

    iget-object v3, p0, Lcom/google/ads/d/a;->l:Lcom/google/ads/d/b;

    invoke-virtual {v3}, Lcom/google/ads/d/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_9
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bthick"

    iget v3, p0, Lcom/google/ads/d/a;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, p0, Lcom/google/ads/d/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 271
    invoke-virtual {v0}, Lcom/google/ads/c/a/a;->d()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel"

    iget-object v2, p0, Lcom/google/ads/d/a;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_a
    invoke-super {p0, p1}, Lcom/google/ads/AdRequest;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
