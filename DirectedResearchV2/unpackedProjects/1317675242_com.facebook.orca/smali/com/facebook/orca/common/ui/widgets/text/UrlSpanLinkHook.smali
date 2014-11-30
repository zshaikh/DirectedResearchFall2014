.class public Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;
.super Ljava/lang/Object;
.source "UrlSpanLinkHook.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/text/style/URLSpan;

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 35
    const v0, -0x333334

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;-><init>(Landroid/widget/TextView;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->d:Landroid/graphics/Rect;

    .line 39
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    return-void
.end method

.method private a()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 151
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 152
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 153
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 154
    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;)Landroid/text/style/URLSpan;
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 115
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a()Landroid/graphics/Rect;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 118
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 119
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 121
    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    .line 123
    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/URLSpan;

    .line 124
    array-length v0, p0

    if-lez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 93
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 102
    iget-object v3, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 103
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 104
    invoke-virtual {v1, v2, v0, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    move v0, v3

    .line 80
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b(Landroid/view/MotionEvent;)Landroid/text/style/URLSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 76
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-nez v0, :cond_5

    move v0, v3

    .line 77
    goto :goto_0

    .line 57
    :cond_2
    if-ne v0, v4, :cond_4

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->b(Landroid/view/MotionEvent;)Landroid/text/style/URLSpan;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 61
    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 62
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 65
    :cond_3
    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 69
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    if-eqz v0, :cond_1

    .line 71
    iput-object v2, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->c:Landroid/text/style/URLSpan;

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    :cond_5
    move v0, v4

    .line 80
    goto :goto_0
.end method
