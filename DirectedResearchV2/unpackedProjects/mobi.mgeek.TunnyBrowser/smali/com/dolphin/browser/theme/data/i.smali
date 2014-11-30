.class public Lcom/dolphin/browser/theme/data/i;
.super Lcom/dolphin/browser/theme/data/d;
.source "DefaultWallpaper.java"


# instance fields
.field private m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/d;-><init>(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    new-instance v1, Lcom/dolphin/browser/theme/c/e;

    invoke-direct {v1, p1, p0}, Lcom/dolphin/browser/theme/c/e;-><init>(Lcom/dolphin/browser/theme/c/g;Lcom/dolphin/browser/theme/data/u;)V

    invoke-virtual {v0, v1, p2}, Lcom/dolphin/browser/theme/data/t;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/t;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/dolphin/browser/theme/data/t;)Lcom/dolphin/browser/theme/data/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/t;",
            ">;",
            "Lcom/dolphin/browser/theme/data/t;",
            ")",
            "Lcom/dolphin/browser/theme/data/a;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    .line 100
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 86
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    const-string v1, "themecolor_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :cond_2
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    const-string v1, "themecolor_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/t;

    .line 93
    instance-of v3, v0, Lcom/dolphin/browser/theme/data/t;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 94
    check-cast v0, Lcom/dolphin/browser/theme/data/t;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    goto :goto_0

    .line 98
    :cond_5
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/theme/data/t;)V
    .locals 3

    .prologue
    .line 65
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    if-eq v0, p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/theme/data/i;->r:Lcom/dolphin/browser/theme/data/t;

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/t;->b()I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/dolphin/browser/theme/data/i;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    const-string v2, "themecolor_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/theme/R$string;->theme_empty_wallpaper:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/i;->b:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ak;->t()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/i;->e:Ljava/lang/ref/SoftReference;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/i;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 49
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0}, Lcom/dolphin/browser/theme/data/d;->j_()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
