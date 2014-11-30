.class public Lcom/dolphin/browser/theme/c/e;
.super Lcom/dolphin/browser/theme/c/j;
.source "EmptyWallpaperResources.java"


# instance fields
.field private b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
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

    .line 34
    invoke-direct {p0, p1, v0, v0}, Lcom/dolphin/browser/theme/c/j;-><init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->o()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/e;->b:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/e;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->t()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 47
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/dolphin/browser/theme/c/e;->b:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/theme/c/j;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
