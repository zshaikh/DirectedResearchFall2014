.class public Lcom/dolphin/browser/theme/data/p;
.super Lcom/dolphin/browser/theme/data/s;
.source "NightModeTheme.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/s;-><init>(I)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/theme/data/p;->q:I

    .line 31
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->d()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/theme/data/p;->r:I

    .line 32
    new-instance v0, Lcom/dolphin/browser/theme/data/t;

    const/4 v1, -0x1

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ak;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/theme/data/t;-><init>(II)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/p;->s:Lcom/dolphin/browser/theme/data/t;

    .line 33
    return-void
.end method

.method public static final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 75
    :goto_0
    return-object p0

    .line 70
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public static final b(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000

    .line 82
    if-nez p0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const v0, 0x3e99999a

    .line 91
    :goto_1
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 92
    invoke-virtual {v2, v0, v0, v0, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 93
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/p;->s:Lcom/dolphin/browser/theme/data/t;

    new-instance v1, Lcom/dolphin/browser/theme/c/h;

    invoke-direct {v1, p1, p2}, Lcom/dolphin/browser/theme/c/h;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/theme/data/t;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/p;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/theme/R$string;->theme_name_nightmode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/p;->b:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/p;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/p;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    new-instance v6, Ljava/lang/ref/SoftReference;

    const-string v1, "wallpapers"

    const-string v2, "default_nightmode_icon"

    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/theme/ak;->n()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->i()I

    move-result v4

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->j()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/theme/data/p;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/dolphin/browser/theme/data/p;->e:Ljava/lang/ref/SoftReference;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/p;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method
