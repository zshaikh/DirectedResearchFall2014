.class public Lcom/dolphin/browser/theme/data/d;
.super Lcom/dolphin/browser/theme/data/u;
.source "BuildInWallpaper.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/data/u;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/d;->r:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/t;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/theme/data/t;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/d;->r:Lcom/dolphin/browser/theme/data/t;

    .line 47
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/theme/R$string;->theme_default_wallpaper:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/d;->b:Ljava/lang/String;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/d;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/d;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    new-instance v6, Ljava/lang/ref/SoftReference;

    const-string v1, "wallpapers"

    const-string v2, "default_wallpaper"

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/d;->m()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/d;->n()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/theme/data/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/dolphin/browser/theme/data/d;->e:Ljava/lang/ref/SoftReference;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/d;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
