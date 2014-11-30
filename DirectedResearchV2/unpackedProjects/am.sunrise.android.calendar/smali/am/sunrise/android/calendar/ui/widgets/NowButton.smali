.class public Lam/sunrise/android/calendar/ui/widgets/NowButton;
.super Landroid/view/View;
.source "NowButton.java"


# instance fields
.field private a:F

.field private b:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:I

.field private e:I

.field private f:Lam/sunrise/android/calendar/ui/widgets/ae;

.field private g:Z

.field private h:Landroid/animation/ObjectAnimator;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->e()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->e()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->e()V

    .line 58
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NowButton;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 119
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->g:Z

    if-nez v0, :cond_0

    .line 120
    iput-boolean v5, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->g:Z

    .line 121
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 122
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    .line 123
    const/4 v2, 0x0

    const-string v3, "scaleX"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 124
    const-string v2, "scaleY"

    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 125
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 126
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 127
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 129
    :cond_0
    return-void

    .line 123
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x3f99999a
        0x3f8ccccd
    .end array-data

    .line 124
    :array_1
    .array-data 4
        0x3f800000
        0x3f99999a
        0x3f8ccccd
    .end array-data
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 148
    :goto_0
    if-ne v0, p1, :cond_2

    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/ae;->a()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    .line 164
    :cond_3
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/ae;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/widgets/ae;-><init>(Lam/sunrise/android/calendar/ui/widgets/NowButton;Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->f:Lam/sunrise/android/calendar/ui/widgets/ae;

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 132
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->g:Z

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v5, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->g:Z

    .line 134
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 135
    new-array v1, v4, [Landroid/animation/Animator;

    .line 136
    const-string v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 137
    const/4 v2, 0x1

    const-string v3, "scaleY"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 139
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 140
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 141
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 143
    :cond_0
    return-void

    .line 136
    :array_0
    .array-data 4
        0x3f8ccccd
        0x3f800000
    .end array-data

    .line 137
    :array_1
    .array-data 4
        0x3f8ccccd
        0x3f800000
    .end array-data
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->d()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->i:I

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    .line 184
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->i:I

    .line 185
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    .line 186
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/ac;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/ac;-><init>(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 185
    nop

    :array_0
    .array-data 4
        0x43480000
        0x0
    .end array-data
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->i:I

    if-ne v1, v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    .line 221
    :cond_2
    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->i:I

    .line 222
    const-string v0, "translationY"

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x43480000

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    .line 223
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x10a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/ad;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/widgets/ad;-><init>(Lam/sunrise/android/calendar/ui/widgets/NowButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    const v0, 0x7f02014e

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->setBackgroundResource(I)V

    .line 250
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    iput v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a:F

    .line 254
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b:I

    .line 258
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->e:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->d:I

    if-eq v0, p2, :cond_1

    .line 66
    :cond_0
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->e:I

    .line 67
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->d:I

    .line 68
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->invalidate()V

    .line 71
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a(Z)V

    .line 73
    :cond_1
    return-void

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->d:I

    int-to-double v1, v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->e:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 82
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a:F

    add-float/2addr v1, v2

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 83
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 85
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 94
    invoke-static {p1}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a()V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->b()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setInitialAngle(F)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a:F

    .line 62
    return-void
.end method
