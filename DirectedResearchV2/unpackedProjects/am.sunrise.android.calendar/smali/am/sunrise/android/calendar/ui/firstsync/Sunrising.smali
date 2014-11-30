.class public Lam/sunrise/android/calendar/ui/firstsync/Sunrising;
.super Landroid/view/View;
.source "Sunrising.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:Landroid/animation/AnimatorSet;

.field private e:Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;

.field private f:Lam/sunrise/android/calendar/ui/firstsync/l;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->c()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->c()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->c()V

    .line 59
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 116
    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 117
    iput v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->c:I

    .line 118
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 120
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->f:Lam/sunrise/android/calendar/ui/firstsync/l;

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->h:Z

    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->f:Lam/sunrise/android/calendar/ui/firstsync/l;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/firstsync/l;->g()V

    .line 124
    :cond_0
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/Sunrising;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a(I)V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    const v1, 0x7f020162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b:Landroid/graphics/drawable/Drawable;

    .line 158
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->d:Landroid/animation/AnimatorSet;

    .line 159
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;

    invoke-direct {v0, p0, p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;-><init>(Lam/sunrise/android/calendar/ui/firstsync/Sunrising;Landroid/view/View;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->e:Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;

    .line 160
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->h:Z

    return v0
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 96
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a(I)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->h:Z

    if-nez v0, :cond_0

    .line 102
    iput-boolean v6, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->g:Z

    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->d:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->e:Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;

    const-string v2, "value"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->e:Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising$ValueAnimator;->getValue()I

    move-result v5

    aput v5, v3, v4

    const/16 v4, 0x64

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->d:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->d:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 142
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 148
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    return-void
.end method

.method public setOnSunrisingListener(Lam/sunrise/android/calendar/ui/firstsync/l;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->f:Lam/sunrise/android/calendar/ui/firstsync/l;

    .line 64
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->f:Lam/sunrise/android/calendar/ui/firstsync/l;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->f:Lam/sunrise/android/calendar/ui/firstsync/l;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/firstsync/l;->g()V

    .line 67
    :cond_0
    return-void
.end method
