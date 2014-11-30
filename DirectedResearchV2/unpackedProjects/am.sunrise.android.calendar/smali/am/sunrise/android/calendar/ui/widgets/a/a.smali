.class public Lam/sunrise/android/calendar/ui/widgets/a/a;
.super Landroid/view/animation/Animation;
.source "ResizeAnimation.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 26
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->a:Landroid/view/View;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->b:I

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->c:I

    .line 29
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    .line 30
    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    .line 31
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->b:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    .line 32
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->c:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    .line 33
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 37
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->b:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    if-ge v0, v1, :cond_2

    .line 38
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    int-to-float v0, v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    .line 43
    :cond_0
    :goto_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->c:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    if-ge v0, v1, :cond_3

    .line 44
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    int-to-float v0, v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    .line 49
    :cond_1
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 53
    return-void

    .line 39
    :cond_2
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->b:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    if-le v0, v1, :cond_0

    .line 40
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    int-to-float v0, v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->f:I

    goto :goto_0

    .line 45
    :cond_3
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->c:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    if-le v0, v1, :cond_1

    .line 46
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    int-to-float v0, v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->e:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/a/a;->g:I

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 58
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method
