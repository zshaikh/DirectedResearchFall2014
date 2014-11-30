.class public Lcom/dolphin/browser/gesture/ui/b;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field private static final a:I

.field private static b:F


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    sput v0, Lcom/dolphin/browser/gesture/ui/b;->a:I

    .line 15
    const/high16 v0, 0x3f000000

    sput v0, Lcom/dolphin/browser/gesture/ui/b;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->c:Z

    .line 17
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->d:Z

    .line 18
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->e:Z

    .line 19
    iput-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->f:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/b;->g:Landroid/graphics/drawable/Drawable;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/b;->h:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/b;->h:Landroid/graphics/Paint;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->c:Z

    if-eqz v0, :cond_0

    .line 32
    int-to-float v0, p3

    sget v2, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v4, v0, v2

    iget-object v5, p0, Lcom/dolphin/browser/gesture/ui/b;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->d:Z

    if-eqz v0, :cond_1

    .line 35
    int-to-float v0, p2

    sget v2, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v3, v0, v2

    iget-object v5, p0, Lcom/dolphin/browser/gesture/ui/b;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->e:Z

    if-eqz v0, :cond_2

    .line 38
    int-to-float v0, p3

    sget v2, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v2, v0, v2

    int-to-float v0, p2

    sget v3, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v3, v0, v3

    int-to-float v0, p3

    sget v4, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/dolphin/browser/gesture/ui/b;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/gesture/ui/b;->f:Z

    if-eqz v0, :cond_3

    .line 41
    int-to-float v0, p2

    sget v2, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v3, v0, v2

    int-to-float v0, p2

    sget v2, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v5, v0, v2

    int-to-float v0, p3

    sget v2, Lcom/dolphin/browser/gesture/ui/b;->b:F

    sub-float v6, v0, v2

    iget-object v7, p0, Lcom/dolphin/browser/gesture/ui/b;->h:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/b;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/dolphin/browser/gesture/ui/b;->g:Landroid/graphics/drawable/Drawable;

    sub-int v0, p2, v0

    sget v3, Lcom/dolphin/browser/gesture/ui/b;->a:I

    sub-int/2addr v0, v3

    sget v3, Lcom/dolphin/browser/gesture/ui/b;->a:I

    sget v4, Lcom/dolphin/browser/gesture/ui/b;->a:I

    sub-int v4, p2, v4

    sget v5, Lcom/dolphin/browser/gesture/ui/b;->a:I

    add-int/2addr v1, v5

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    :cond_4
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/ui/b;->c:Z

    .line 55
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/ui/b;->d:Z

    .line 60
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/ui/b;->e:Z

    .line 65
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/dolphin/browser/gesture/ui/b;->f:Z

    .line 70
    return-void
.end method
