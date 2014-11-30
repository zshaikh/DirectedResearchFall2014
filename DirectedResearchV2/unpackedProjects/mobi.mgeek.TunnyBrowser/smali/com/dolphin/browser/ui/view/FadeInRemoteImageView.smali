.class public Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;
.super Lcom/dolphin/browser/ui/view/RemoteImageView;
.source "FadeInRemoteImageView.java"


# instance fields
.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Transformation;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/ui/view/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->f:Z

    .line 51
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->i:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/ui/view/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->f:Z

    .line 51
    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->i:Z

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->c()V

    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x2

    .line 58
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v3, :cond_0

    const/4 v0, 0x1

    .line 63
    :cond_0
    return v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/16 v0, 0x26

    .line 162
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->i:Z

    .line 177
    iput-object v1, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->g:Landroid/view/animation/Animation;

    .line 178
    iput-object v1, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->h:Landroid/view/animation/Transformation;

    .line 179
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->super_setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->onDetachedFromWindow()V

    .line 169
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->c()V

    .line 170
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/high16 v10, 0x3f000000

    .line 111
    const/4 v1, 0x0

    .line 112
    const/high16 v0, 0x3f800000

    .line 113
    iget-object v3, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-boolean v4, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->d:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->h:Landroid/view/animation/Transformation;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->g:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawingTime()J

    move-result-wide v4

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->h:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->h:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    move v1, v2

    .line 119
    :cond_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->b:Landroid/widget/ImageView$ScaleType;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->i:Z

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 122
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 124
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 125
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 129
    mul-int v8, v4, v7

    mul-int v9, v6, v5

    if-le v8, v9, :cond_5

    .line 130
    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 131
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    int-to-float v6, v6

    int-to-float v9, v4

    mul-float/2addr v9, v7

    sub-float/2addr v6, v9

    mul-float/2addr v6, v10

    add-float/2addr v6, v8

    add-float/2addr v6, v10

    float-to-int v6, v6

    .line 132
    int-to-float v8, v6

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v3, v6, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    :goto_0
    iput-boolean v2, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->i:Z

    .line 142
    :cond_1
    if-eqz v1, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->b()I

    move-result v2

    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 145
    int-to-float v4, v2

    int-to-float v5, v2

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 146
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 148
    :cond_2
    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 149
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 151
    :cond_3
    invoke-super {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    if-eqz v1, :cond_4

    .line 153
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->invalidate()V

    .line 156
    :cond_4
    return-void

    .line 135
    :cond_5
    int-to-float v6, v6

    int-to-float v8, v4

    div-float/2addr v6, v8

    .line 136
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    int-to-float v7, v7

    int-to-float v9, v5

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    const v9, 0x3e4ccccd

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    add-float/2addr v7, v10

    float-to-int v7, v7

    .line 137
    int-to-float v8, v7

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 138
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    int-to-float v4, v4

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v3, v8, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->f:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->super_setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 82
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->g:Landroid/view/animation/Animation;

    .line 83
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->g:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->h:Landroid/view/animation/Transformation;

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/dolphin/browser/ui/view/f;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/ui/view/f;-><init>(Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 105
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/FadeInRemoteImageView;->invalidate()V

    goto :goto_0
.end method
