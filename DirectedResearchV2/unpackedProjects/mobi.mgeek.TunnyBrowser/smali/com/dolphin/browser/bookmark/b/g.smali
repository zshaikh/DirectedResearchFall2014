.class final Lcom/dolphin/browser/bookmark/b/g;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CircleProgressDrawable.java"


# instance fields
.field a:Lcom/e/a/z;

.field b:I

.field c:Z

.field d:F

.field e:Z

.field f:F

.field g:I

.field h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/e/a/z;FF)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 220
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    .line 226
    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/b/g;->c:Z

    .line 227
    iput p2, p0, Lcom/dolphin/browser/bookmark/b/g;->d:F

    .line 228
    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/b/g;->e:Z

    .line 229
    iput p3, p0, Lcom/dolphin/browser/bookmark/b/g;->f:F

    .line 231
    const/16 v0, 0xc

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/g;->h:I

    .line 232
    const/16 v0, 0x96

    iput v0, p0, Lcom/dolphin/browser/bookmark/b/g;->g:I

    .line 234
    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/b/g;->j:Z

    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/b/g;->i:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 253
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/g;->j:Z

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-virtual {v0}, Lcom/e/a/z;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/g;->i:Z

    .line 255
    iput-boolean v1, p0, Lcom/dolphin/browser/bookmark/b/g;->j:Z

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/b/g;->i:Z

    return v0

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/dolphin/browser/bookmark/b/g;->b:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    new-instance v0, Lcom/dolphin/browser/bookmark/b/e;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    invoke-direct {v0, v1, v2, v2}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;Landroid/content/res/Resources;Lcom/dolphin/browser/bookmark/b/f;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 244
    new-instance v0, Lcom/dolphin/browser/bookmark/b/e;

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/b/g;->a:Lcom/e/a/z;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/dolphin/browser/bookmark/b/e;-><init>(Lcom/e/a/z;Landroid/content/res/Resources;Lcom/dolphin/browser/bookmark/b/f;)V

    return-object v0
.end method
