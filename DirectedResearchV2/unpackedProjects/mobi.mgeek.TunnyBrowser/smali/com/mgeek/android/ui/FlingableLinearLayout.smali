.class public Lcom/mgeek/android/ui/FlingableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FlingableLinearLayout.java"


# instance fields
.field protected a:Z

.field protected b:I

.field protected c:Lcom/mgeek/android/ui/aj;

.field protected d:Lcom/mgeek/android/ui/ak;

.field protected e:I

.field protected f:I

.field protected g:Z

.field private h:Lcom/mgeek/android/ui/v;

.field private i:Z

.field private j:Lcom/mgeek/android/ui/w;

.field private k:Landroid/widget/Scroller;

.field private l:Lcom/mgeek/android/ui/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/mgeek/android/ui/aj;

    invoke-direct {v0}, Lcom/mgeek/android/ui/aj;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    .line 52
    invoke-direct {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->b()V

    .line 53
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getScrollX()I

    .line 57
    neg-int v0, p1

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/FlingableLinearLayout;->scrollBy(II)V

    .line 59
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->invalidate()V

    .line 60
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->k:Landroid/widget/Scroller;

    .line 110
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 124
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 114
    iget v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->e:I

    .line 115
    sub-int v1, v0, v1

    .line 116
    invoke-direct {p0, v1}, Lcom/mgeek/android/ui/FlingableLinearLayout;->a(I)V

    .line 117
    iput v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->e:I

    .line 118
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->i:Z

    .line 129
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 131
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getScrollY()I

    move-result v1

    .line 132
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 133
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->postInvalidate()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->i:Z

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->i:Z

    .line 138
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->h:Lcom/mgeek/android/ui/v;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->h:Lcom/mgeek/android/ui/v;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getScrollY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mgeek/android/ui/v;->a(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 181
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 185
    if-nez v2, :cond_3

    .line 186
    iget-boolean v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->a:Z

    if-nez v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->a()V

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1, p1}, Lcom/mgeek/android/ui/aj;->b(Landroid/view/MotionEvent;)V

    .line 190
    sget-object v1, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    iput-object v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->d:Lcom/mgeek/android/ui/ak;

    goto :goto_0

    .line 192
    :cond_3
    const/4 v3, 0x2

    if-ne v3, v2, :cond_4

    .line 193
    sget-object v2, Lcom/mgeek/android/ui/ak;->a:Lcom/mgeek/android/ui/ak;

    iget-object v3, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->d:Lcom/mgeek/android/ui/ak;

    if-ne v2, v3, :cond_0

    .line 194
    iget-object v2, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v2, p1}, Lcom/mgeek/android/ui/aj;->a(Landroid/view/MotionEvent;)V

    .line 195
    iget-object v2, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v2}, Lcom/mgeek/android/ui/aj;->a()Lcom/mgeek/android/ui/ak;

    move-result-object v2

    iput-object v2, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->d:Lcom/mgeek/android/ui/ak;

    .line 196
    sget-object v2, Lcom/mgeek/android/ui/ak;->c:Lcom/mgeek/android/ui/ak;

    iget-object v3, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->d:Lcom/mgeek/android/ui/ak;

    if-ne v2, v3, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->e:I

    move v0, v1

    .line 198
    goto :goto_0

    .line 202
    :cond_4
    if-ne v1, v2, :cond_0

    .line 203
    iget-object v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/aj;->c()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 211
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getChildCount()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 213
    :goto_0
    if-ge v1, v3, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 216
    add-int/2addr v2, v4

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->f:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->b:I

    add-int/2addr v1, v2

    .line 220
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 221
    const/4 v0, 0x1

    .line 223
    :cond_1
    iput-boolean v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->g:Z

    .line 224
    iget-boolean v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->g:Z

    if-nez v0, :cond_2

    .line 225
    iget v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->b:I

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 227
    :cond_2
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    .line 232
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->j:Lcom/mgeek/android/ui/w;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->j:Lcom/mgeek/android/ui/w;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mgeek/android/ui/w;->a(IIII)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->l:Lcom/mgeek/android/ui/x;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->l:Lcom/mgeek/android/ui/x;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mgeek/android/ui/x;->a(IIII)V

    .line 238
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 241
    const/4 v1, 0x0

    .line 242
    sget-object v2, Lcom/mgeek/android/ui/ak;->c:Lcom/mgeek/android/ui/ak;

    iget-object v3, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->d:Lcom/mgeek/android/ui/ak;

    if-ne v2, v3, :cond_2

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 245
    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/mgeek/android/ui/FlingableLinearLayout;->a(Landroid/view/MotionEvent;)V

    .line 247
    iget-object v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1, p1}, Lcom/mgeek/android/ui/aj;->a(Landroid/view/MotionEvent;)V

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    if-ne v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->c:Lcom/mgeek/android/ui/aj;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/aj;->c()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->g:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/mgeek/android/ui/FlingableLinearLayout;->getWidth()I

    move-result v1

    .line 260
    sub-int/2addr v0, v1

    .line 261
    iget v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->f:I

    add-int/2addr v0, v1

    .line 262
    iget v1, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->b:I

    .line 263
    neg-int v1, v1

    .line 264
    if-ge p1, v1, :cond_2

    .line 265
    iget v0, p0, Lcom/mgeek/android/ui/FlingableLinearLayout;->b:I

    neg-int p1, v0

    .line 272
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 274
    :cond_1
    return-void

    .line 268
    :cond_2
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method
