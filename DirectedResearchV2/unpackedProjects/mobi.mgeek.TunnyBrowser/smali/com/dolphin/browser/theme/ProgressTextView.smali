.class public Lcom/dolphin/browser/theme/ProgressTextView;
.super Landroid/widget/TextView;
.source "ProgressTextView.java"


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dolphin/browser/theme/data/n;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Paint;

.field private e:Lcom/dolphin/browser/theme/data/n;

.field private f:Ljava/lang/Runnable;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/ProgressTextView;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->c:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Lcom/dolphin/browser/theme/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/k;-><init>(Lcom/dolphin/browser/theme/ProgressTextView;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    .line 35
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->c:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Lcom/dolphin/browser/theme/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/k;-><init>(Lcom/dolphin/browser/theme/ProgressTextView;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ProgressTextView;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ProgressTextView;F)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->setMaxLines(I)V

    .line 47
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->d:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/ProgressTextView;)Lcom/dolphin/browser/theme/data/n;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->e:Lcom/dolphin/browser/theme/data/n;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/theme/ProgressTextView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/dolphin/browser/theme/ProgressTextView;->b:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    .line 128
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->invalidate()V

    .line 129
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->invalidate()V

    .line 93
    return-void
.end method

.method public a(Lcom/dolphin/browser/theme/data/n;)V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/dolphin/browser/theme/ProgressTextView;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/dolphin/browser/theme/ProgressTextView;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/data/n;F)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->a(Lcom/dolphin/browser/theme/data/n;F)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/n;F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/theme/ProgressTextView;->e:Lcom/dolphin/browser/theme/data/n;

    .line 58
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    .line 59
    iput v1, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    .line 61
    :cond_0
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 62
    iput v2, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    .line 64
    :cond_1
    iget v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_2
    iput p2, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    .line 68
    sget-object v0, Lcom/dolphin/browser/theme/ProgressTextView;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x42c80000

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->post(Ljava/lang/Runnable;)Z

    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->invalidate()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/dolphin/browser/theme/ProgressTextView;->g:Z

    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->invalidate()V

    .line 134
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->invalidate()V

    .line 139
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ProgressTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->getWidth()I

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/dolphin/browser/theme/ProgressTextView;->c:Landroid/graphics/Rect;

    .line 100
    iget-boolean v2, p0, Lcom/dolphin/browser/theme/ProgressTextView;->g:Z

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ProgressTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    return-void

    .line 103
    :cond_0
    int-to-float v0, v0

    iget v2, p0, Lcom/dolphin/browser/theme/ProgressTextView;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ProgressTextView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
