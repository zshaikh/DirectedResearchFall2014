.class Lcom/dolphin/browser/theme/bh;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperDrawer.java"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/dolphin/browser/theme/bh;->a:Landroid/view/View;

    .line 254
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/dolphin/browser/theme/bf;->a()Lcom/dolphin/browser/theme/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/bh;->a:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 260
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method
