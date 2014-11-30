.class public Lcom/dolphin/browser/sonar/ui/PointProgressView;
.super Landroid/view/View;
.source "PointProgressView.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x55000001
        0x55ffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    .line 53
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->e:Z

    .line 54
    iput v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    .line 68
    new-instance v0, Lcom/dolphin/browser/sonar/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sonar/ui/d;-><init>(Lcom/dolphin/browser/sonar/ui/PointProgressView;)V

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->g:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    .line 53
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->e:Z

    .line 54
    iput v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    .line 68
    new-instance v0, Lcom/dolphin/browser/sonar/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sonar/ui/d;-><init>(Lcom/dolphin/browser/sonar/ui/PointProgressView;)V

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->g:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    .line 53
    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->e:Z

    .line 54
    iput v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    .line 68
    new-instance v0, Lcom/dolphin/browser/sonar/ui/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sonar/ui/d;-><init>(Lcom/dolphin/browser/sonar/ui/PointProgressView;)V

    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->g:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/sonar/ui/PointProgressView;)I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/sonar/ui/PointProgressView;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/sonar/ui/PointProgressView;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/sonar/ui/PointProgressView;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    return v0
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a:[I

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/sonar/ui/PointProgressView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->g:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->e:Z

    .line 82
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->invalidate()V

    .line 83
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->b:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iput-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->b:Landroid/graphics/Paint;

    .line 64
    :cond_0
    iput p1, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->c:I

    .line 65
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->invalidate()V

    .line 66
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->e:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget-object v5, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->b:Landroid/graphics/Paint;

    .line 95
    if-nez v5, :cond_1

    .line 122
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->e:Z

    if-nez v0, :cond_2

    .line 99
    iget-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    if-nez v0, :cond_2

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->d:Z

    .line 101
    iget-object v0, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->getWidth()I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/dolphin/browser/sonar/ui/PointProgressView;->getHeight()I

    move-result v7

    .line 106
    int-to-float v1, v7

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget v8, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->c:I

    .line 108
    iget v9, p0, Lcom/dolphin/browser/sonar/ui/PointProgressView;->f:I

    .line 110
    sget-object v1, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a:[I

    array-length v10, v1

    .line 111
    div-int/lit8 v11, v7, 0x2

    .line 113
    sub-int/2addr v0, v7

    add-int/lit8 v1, v10, -0x1

    div-int v12, v0, v1

    .line 114
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v10, :cond_0

    .line 115
    add-int v0, v9, v6

    rem-int/2addr v0, v10

    .line 116
    sget-object v1, Lcom/dolphin/browser/sonar/ui/PointProgressView;->a:[I

    aget v1, v1, v6

    and-int/2addr v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    mul-int/2addr v0, v12

    .line 119
    int-to-float v1, v0

    int-to-float v2, v11

    add-int/2addr v0, v7

    int-to-float v3, v0

    int-to-float v4, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method
