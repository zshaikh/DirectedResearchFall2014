.class public Lcom/dolphin/browser/ui/view/RemoteImageView;
.super Landroid/widget/ImageView;
.source "RemoteImageView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;
.implements Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDKPublic;
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field protected a:Landroid/graphics/drawable/Drawable;

.field protected b:Landroid/widget/ImageView$ScaleType;

.field protected c:Landroid/widget/ImageView$ScaleType;

.field protected d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    const-class v0, Lcom/dolphin/browser/ui/view/RemoteImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/view/RemoteImageView;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->g:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 34
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->d:Z

    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->g:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 34
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->d:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->g:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 34
    iput-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->d:Z

    .line 38
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->super_setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->f:Ljava/lang/String;

    .line 186
    return-void

    .line 183
    :cond_2
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->b:Landroid/widget/ImageView$ScaleType;

    .line 53
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->g:Z

    if-eqz v0, :cond_1

    .line 232
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public applySavedScaleType()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->super_setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 159
    return-void
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/dolphin/browser/ui/view/RemoteImageView;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isNightModeEnabled()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->g:Z

    return v0
.end method

.method public isSpecialCenterCropEnabled()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->d:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f000000

    .line 197
    iget-boolean v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 201
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    .line 204
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getPaddingBottom()I

    move-result v5

    sub-int v5, v2, v5

    .line 209
    mul-int v2, v3, v5

    mul-int v6, v4, v1

    if-le v2, v6, :cond_1

    .line 210
    int-to-float v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 211
    int-to-float v1, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    mul-float/2addr v1, v7

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 217
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 218
    add-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v7

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 221
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    return-void

    .line 213
    :cond_1
    int-to-float v2, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 214
    int-to-float v3, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v3, v1

    const v3, 0x3e4ccccd

    mul-float/2addr v1, v3

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0
.end method

.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->f:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->b:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->super_setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->h:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->h:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    return-void
.end method

.method public setDefaultImage(I)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setDefaultImage(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void
.end method

.method public setDefaultImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a()V

    .line 135
    :cond_0
    return-void
.end method

.method public setDefaultScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->c:Landroid/widget/ImageView$ScaleType;

    .line 61
    return-void
.end method

.method public setEnableNightMode(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->g:Z

    .line 104
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->invalidate()V

    .line 105
    return-void
.end method

.method public setEnableSpecialCenterCrop(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->d:Z

    .line 113
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->invalidate()V

    .line 114
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setImageUrl(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V

    .line 57
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 68
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->e:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a()V

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->setImageResource(I)V

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    iput-object p2, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->h:Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 90
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->getInstance(Landroid/content/Context;)Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->loadImage(Ljava/lang/String;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)Z

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->b:Landroid/widget/ImageView$ScaleType;

    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/RemoteImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/RemoteImageView;->super_setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    :cond_1
    return-void
.end method

.method public super_setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    return-void
.end method

.method public updateTheme()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/view/RemoteImageView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 227
    return-void
.end method
