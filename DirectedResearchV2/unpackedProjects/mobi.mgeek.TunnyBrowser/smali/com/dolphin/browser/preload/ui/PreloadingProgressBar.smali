.class public Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;
.super Landroid/view/View;
.source "PreloadingProgressBar.java"


# static fields
.field private static final e:I


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a()V

    .line 38
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02023f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->c:Landroid/graphics/drawable/Drawable;

    .line 45
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02023e

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->d:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a:I

    .line 52
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->b:I

    .line 57
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 64
    iget v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 89
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 70
    sget v9, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->e:I

    .line 71
    add-int v0, v8, v9

    iget v1, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v9

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v10, v0, 0x2

    move v7, v4

    .line 77
    :goto_0
    iget v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a:I

    if-ge v7, v0, :cond_0

    .line 79
    add-int v0, v8, v9

    mul-int/2addr v0, v7

    add-int v3, v10, v0

    .line 80
    add-int v5, v3, v8

    .line 82
    iget v0, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->b:I

    if-ne v7, v0, :cond_2

    .line 83
    iget-object v2, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->d:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 77
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->c:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/preload/ui/PreloadingProgressBar;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_1
.end method
