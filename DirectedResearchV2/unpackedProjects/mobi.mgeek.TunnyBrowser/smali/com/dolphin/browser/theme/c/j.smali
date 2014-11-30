.class public abstract Lcom/dolphin/browser/theme/c/j;
.super Landroid/content/res/Resources;
.source "ResourcesWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/theme/c/g;


# instance fields
.field protected a:Lcom/dolphin/browser/theme/c/g;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/c/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/dolphin/browser/theme/c/g;->c()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/dolphin/browser/theme/c/g;->c()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-interface {p1}, Lcom/dolphin/browser/theme/c/g;->c()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 26
    iput-object p1, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public c()Landroid/content/res/Resources;
    .locals 0

    .prologue
    .line 62
    return-object p0
.end method

.method public getColor(I)I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getDimension(I)F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/c/g;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/theme/c/j;->a:Lcom/dolphin/browser/theme/c/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/c/g;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
