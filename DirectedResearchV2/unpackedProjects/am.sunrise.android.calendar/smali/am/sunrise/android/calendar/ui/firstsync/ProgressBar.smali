.class public Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Canvas;

.field private h:Landroid/graphics/Xfermode;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Landroid/animation/AnimatorSet;

.field private l:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a()V

    .line 63
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    .line 140
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 143
    const v1, 0x7f020160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->d:Landroid/graphics/drawable/Drawable;

    .line 144
    const v1, 0x7f02015f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->e:Landroid/graphics/Bitmap;

    .line 146
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->b:I

    .line 147
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->c:I

    .line 149
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->d:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->b:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->c:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->b:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->c:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->f:Landroid/graphics/Bitmap;

    .line 152
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->f:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->g:Landroid/graphics/Canvas;

    .line 153
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->h:Landroid/graphics/Xfermode;

    .line 154
    const v1, 0x7f020161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    .line 156
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->k:Landroid/animation/AnimatorSet;

    .line 157
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;

    invoke-direct {v0, p0, p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;-><init>(Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;Landroid/view/View;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->l:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;

    .line 159
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->setProgress(I)V

    .line 162
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->b:I

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iget v2, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->c:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    invoke-static {p0}, Landroid/support/v4/view/ak;->b(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a(I)V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->j:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->g:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->g:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->h:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->g:Landroid/graphics/Canvas;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 127
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 132
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->b:I

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->c:I

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->setMeasuredDimension(II)V

    .line 134
    return-void
.end method

.method public setProgress(I)V
    .locals 6

    .prologue
    .line 88
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->j:I

    if-eq v0, p1, :cond_0

    .line 89
    iput p1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->j:I

    .line 91
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->j:I

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->k:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->l:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;

    const-string v2, "value"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->l:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->getValue()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->j:I

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->k:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
