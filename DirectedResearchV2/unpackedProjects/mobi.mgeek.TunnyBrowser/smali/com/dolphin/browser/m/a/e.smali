.class public Lcom/dolphin/browser/m/a/e;
.super Landroid/widget/LinearLayout;
.source "PopupItem.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Paint;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->a:Z

    .line 16
    iput-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->b:Z

    .line 17
    iput-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->c:Z

    .line 18
    iput-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->d:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/dolphin/browser/m/a/e;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/m/a/e;->f:I

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/a/e;->setGravity(I)V

    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/m/a/e;->a()V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/dolphin/browser/m/a/e;->c:Z

    .line 61
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/dolphin/browser/m/a/e;->d:Z

    .line 65
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/dolphin/browser/m/a/e;->a:Z

    .line 69
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/dolphin/browser/m/a/e;->b:Z

    .line 73
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f000000

    const/4 v1, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/e;->getHeight()I

    move-result v8

    .line 40
    invoke-virtual {p0}, Lcom/dolphin/browser/m/a/e;->getWidth()I

    move-result v9

    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dolphin/browser/m/a/e;->f:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->c:Z

    if-eqz v0, :cond_1

    .line 46
    int-to-float v0, v8

    sub-float v4, v0, v10

    iget-object v5, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->d:Z

    if-eqz v0, :cond_2

    .line 49
    int-to-float v0, v9

    sub-float v3, v0, v10

    int-to-float v0, v9

    sub-float v5, v0, v10

    int-to-float v0, v8

    sub-float v6, v0, v10

    iget-object v7, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->a:Z

    if-eqz v0, :cond_3

    .line 52
    int-to-float v0, v9

    sub-float v3, v0, v10

    iget-object v5, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    :cond_3
    iget-boolean v0, p0, Lcom/dolphin/browser/m/a/e;->b:Z

    if-eqz v0, :cond_4

    .line 55
    int-to-float v0, v8

    sub-float v2, v0, v10

    int-to-float v0, v9

    sub-float v3, v0, v10

    int-to-float v0, v8

    sub-float v4, v0, v10

    iget-object v5, p0, Lcom/dolphin/browser/m/a/e;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    :cond_4
    return-void
.end method
