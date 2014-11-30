.class public Lcom/dolphin/browser/download/ui/HorizontalProgressBar;
.super Landroid/view/View;
.source "HorizontalProgressBar.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/graphics/drawable/GradientDrawable;

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x24

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->g:I

    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->g:I

    .line 38
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->g:I

    .line 43
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b()V

    .line 44
    return-void
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 84
    sget v0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a:I

    sub-int v6, p2, v0

    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->getHeight()I

    move-result v7

    .line 86
    if-gez v6, :cond_0

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3, v3, p2, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 99
    int-to-float v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/high16 v3, 0x3f800000

    int-to-float v4, v7

    iget-object v5, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 103
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->d:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b:Landroid/graphics/drawable/GradientDrawable;

    sget v2, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a:I

    invoke-virtual {v0, v3, v3, v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 92
    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 94
    int-to-float v2, v6

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->d:I

    .line 49
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0058

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->e:I

    .line 50
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->f:I

    .line 51
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->d:I

    aput v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->e:I

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b:Landroid/graphics/drawable/GradientDrawable;

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->b()V

    .line 108
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 58
    if-gez p1, :cond_2

    .line 59
    const/4 p1, 0x0

    .line 63
    :cond_0
    :goto_0
    iget v0, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->g:I

    if-eq v0, p1, :cond_1

    .line 64
    iput p1, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->g:I

    .line 65
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->invalidate()V

    .line 67
    :cond_1
    return-void

    .line 60
    :cond_2
    if-le p1, v0, :cond_0

    move p1, v0

    .line 61
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->g:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/download/ui/HorizontalProgressBar;->a(Landroid/graphics/Canvas;I)V

    .line 81
    return-void
.end method
