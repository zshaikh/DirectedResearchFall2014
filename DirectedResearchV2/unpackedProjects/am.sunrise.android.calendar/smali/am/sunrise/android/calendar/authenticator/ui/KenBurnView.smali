.class public Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;
.super Landroid/view/View;
.source "KenBurnView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private d:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

.field private e:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

.field private f:I

.field private g:Ljava/lang/Runnable;


# direct methods
.method static synthetic a(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->b:I

    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 133
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->f:I

    if-eq v0, v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->f:I

    .line 139
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->setBackgroundColor(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->d:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    iget v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->f:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->init(I)V

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->e:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

    iget-object v1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    iget v2, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->f:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->init(I)V

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 117
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->b()V

    .line 118
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 123
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c()V

    .line 124
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->e:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->draw(Landroid/graphics/Canvas;)V

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->d:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 94
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a:I

    .line 95
    invoke-virtual {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->b:I

    .line 96
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a()V

    .line 97
    return-void
.end method

.method public varargs setResourceIds([I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->f:I

    .line 80
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->d:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->reset()V

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->e:Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView$Layer;->reset()V

    .line 83
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->c:[I

    array-length v0, v0

    if-lez v0, :cond_1

    .line 85
    invoke-direct {p0}, Lam/sunrise/android/calendar/authenticator/ui/KenBurnView;->a()V

    .line 88
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 89
    return-void
.end method
