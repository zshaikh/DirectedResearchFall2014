.class final Lcom/e/a/ar;
.super Lcom/e/a/u;
.source "SVGStateListDrawable.java"


# instance fields
.field private v:[[I


# direct methods
.method constructor <init>(Lcom/e/a/ar;Lcom/e/a/ap;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/e/a/u;-><init>(Lcom/e/a/u;Lcom/e/a/t;Landroid/content/res/Resources;)V

    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p1, Lcom/e/a/ar;->v:[[I

    iput-object v0, p0, Lcom/e/a/ar;->v:[[I

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/e/a/ar;->b()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/e/a/ar;->v:[[I

    goto :goto_0
.end method

.method static synthetic a(Lcom/e/a/ar;[I)I
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/e/a/ar;->a([I)I

    move-result v0

    return v0
.end method

.method private a([I)I
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/e/a/ar;->v:[[I

    .line 250
    invoke-virtual {p0}, Lcom/e/a/ar;->a()I

    move-result v2

    .line 251
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 252
    aget-object v3, v1, v0

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    :goto_1
    return v0

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/e/a/ar;)[[I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/e/a/ar;->v:[[I

    return-object v0
.end method

.method static synthetic a(Lcom/e/a/ar;[[I)[[I
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/e/a/ar;->v:[[I

    return-object p1
.end method


# virtual methods
.method a([ILandroid/graphics/drawable/Drawable;)I
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0, p2}, Lcom/e/a/ar;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/e/a/ar;->v:[[I

    aput-object p1, v1, v0

    .line 245
    return v0
.end method

.method public a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1, p2}, Lcom/e/a/u;->a(II)V

    .line 272
    new-array v0, p2, [[I

    .line 273
    iget-object v1, p0, Lcom/e/a/ar;->v:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iput-object v0, p0, Lcom/e/a/ar;->v:[[I

    .line 275
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    new-instance v0, Lcom/e/a/ap;

    invoke-direct {v0, p0, v1, v1}, Lcom/e/a/ap;-><init>(Lcom/e/a/ar;Landroid/content/res/Resources;Lcom/e/a/aq;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/e/a/ap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/e/a/ap;-><init>(Lcom/e/a/ar;Landroid/content/res/Resources;Lcom/e/a/aq;)V

    return-object v0
.end method
