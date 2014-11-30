.class public Lcom/dolphin/browser/theme/c/o;
.super Lcom/dolphin/browser/theme/c/j;
.source "WallpaperResources.java"


# instance fields
.field private b:Lcom/dolphin/browser/theme/data/u;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/c/g;Lcom/dolphin/browser/theme/data/u;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v0}, Lcom/dolphin/browser/theme/c/j;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/dolphin/browser/theme/c/o;->b:Lcom/dolphin/browser/theme/data/u;

    .line 30
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->o()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/o;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/o;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/o;->b:Lcom/dolphin/browser/theme/data/u;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/u;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 45
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/c/o;->c:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/j;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
