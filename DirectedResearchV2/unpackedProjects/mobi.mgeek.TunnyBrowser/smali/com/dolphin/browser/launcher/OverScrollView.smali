.class public Lcom/dolphin/browser/launcher/OverScrollView;
.super Landroid/widget/ScrollView;
.source "OverScrollView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:Landroid/view/View;

.field private f:Z

.field private g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0xc8

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->a:I

    .line 21
    const/16 v0, 0x190

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->b:I

    .line 22
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->c:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->f:Z

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0xc8

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->a:I

    .line 21
    const/16 v0, 0x190

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->b:I

    .line 22
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->c:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->f:Z

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/16 v0, 0xc8

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->a:I

    .line 21
    const/16 v0, 0x190

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->b:I

    .line 22
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->c:F

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->f:Z

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    .line 46
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/OverScrollView;->getScrollY()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/dolphin/browser/launcher/OverScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 108
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 131
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 139
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 141
    iget v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->b:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 146
    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    .line 153
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/launcher/OverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->f:Z

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 63
    packed-switch v0, :pswitch_data_0

    .line 96
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    goto :goto_1

    .line 68
    :pswitch_1
    iput v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    .line 69
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/OverScrollView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/OverScrollView;->b()V

    goto :goto_1

    .line 74
    :pswitch_2
    iget v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 75
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    .line 76
    invoke-direct {p0}, Lcom/dolphin/browser/launcher/OverScrollView;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    :cond_2
    iget v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    sub-float v0, v1, v0

    iget v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->a:I

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/dolphin/browser/launcher/OverScrollView;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 74
    :cond_3
    iget v0, p0, Lcom/dolphin/browser/launcher/OverScrollView;->d:F

    goto :goto_2

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
