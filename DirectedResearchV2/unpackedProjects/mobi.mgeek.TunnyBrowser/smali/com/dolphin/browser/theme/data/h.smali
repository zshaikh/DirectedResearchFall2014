.class public Lcom/dolphin/browser/theme/data/h;
.super Lcom/dolphin/browser/theme/data/s;
.source "DefaultTheme.java"


# instance fields
.field private m:Lcom/dolphin/browser/theme/data/u;

.field private n:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/data/s;-><init>(I)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/theme/data/h;->q:I

    .line 32
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->d()I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/theme/data/h;->r:I

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/theme/data/u;->a(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;)Lcom/dolphin/browser/theme/c/g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;Lcom/dolphin/browser/theme/data/u;)Lcom/dolphin/browser/theme/data/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;",
            "Lcom/dolphin/browser/theme/data/u;",
            ")",
            "Lcom/dolphin/browser/theme/data/a;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    .line 109
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 95
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    const-string v1, "wallpaper_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    :cond_2
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    const-string v1, "wallpaper_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 102
    instance-of v3, v0, Lcom/dolphin/browser/theme/data/u;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 103
    check-cast v0, Lcom/dolphin/browser/theme/data/u;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    goto :goto_0

    .line 107
    :cond_5
    iput-object p2, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    goto :goto_1
.end method

.method public c(Lcom/dolphin/browser/theme/data/a;)V
    .locals 3

    .prologue
    .line 74
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/theme/data/u;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    if-eq v0, p1, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/dolphin/browser/theme/data/u;

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 82
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/a;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/theme/data/h;->n:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 86
    const-string v2, "wallpaper_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/theme/R$string;->theme_name_application:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/data/h;->b:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j_()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    new-instance v6, Ljava/lang/ref/SoftReference;

    const-string v1, "wallpapers"

    const-string v2, "default_normal_icon"

    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/theme/ak;->q()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/h;->m()I

    move-result v4

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/data/h;->n()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/theme/data/h;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/dolphin/browser/theme/data/h;->e:Ljava/lang/ref/SoftReference;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/theme/data/h;->m:Lcom/dolphin/browser/theme/data/u;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->k()I

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method
