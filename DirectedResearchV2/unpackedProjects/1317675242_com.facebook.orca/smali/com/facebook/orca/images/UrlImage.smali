.class public Lcom/facebook/orca/images/UrlImage;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "UrlImage.java"


# static fields
.field public static final a:Lcom/facebook/orca/images/FetchImageParams;

.field private static b:Ljava/lang/String;

.field private static final c:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private d:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/images/FetchImageDeferrable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/ImageView$ScaleType;

.field private j:Landroid/widget/ImageView$ScaleType;

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lcom/facebook/orca/images/FetchImageParams;

.field private n:Z

.field private o:Lcom/facebook/orca/common/async/Deferred;

.field private p:Lcom/facebook/orca/images/UrlImage$AfterImageLoadedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "orca:UrlImage"

    sput-object v0, Lcom/facebook/orca/images/UrlImage;->b:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/orca/images/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/images/UrlImage;->c:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ImageView$ScaleType;

    .line 54
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ImageView$ScaleType;

    .line 54
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ImageView$ScaleType;

    .line 54
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->m:Lcom/facebook/orca/images/FetchImageParams;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->m:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0}, Lcom/facebook/orca/images/FetchImageParams;->a()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    new-instance v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    .line 214
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageDeferrable;

    .line 215
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    new-instance v1, Lcom/facebook/orca/images/UrlImage$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/UrlImage$1;-><init>(Lcom/facebook/orca/images/UrlImage;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    new-instance v1, Lcom/facebook/orca/images/UrlImage$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/images/UrlImage$2;-><init>(Lcom/facebook/orca/images/UrlImage;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 230
    iget-boolean v0, p0, Lcom/facebook/orca/images/UrlImage;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ProgressBar;

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->m:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    .line 235
    :goto_1
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 90
    invoke-virtual {p0}, Lcom/facebook/orca/images/UrlImage;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 91
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->e:Landroid/view/LayoutInflater;

    .line 92
    const-class v0, Lcom/facebook/orca/images/FetchImageDeferrable;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->d:Lcom/google/inject/Provider;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f03004e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ProgressBar;

    .line 100
    sget-object v0, Lcom/facebook/orca/R$styleable;->m:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    new-instance v2, Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/facebook/orca/images/UrlImage;->m:Lcom/facebook/orca/images/FetchImageParams;

    .line 106
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 107
    if-ltz v1, :cond_1

    .line 108
    sget-object v2, Lcom/facebook/orca/images/UrlImage;->c:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ImageView$ScaleType;

    .line 111
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 113
    if-ltz v1, :cond_2

    .line 114
    sget-object v2, Lcom/facebook/orca/images/UrlImage;->c:[Landroid/widget/ImageView$ScaleType;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 117
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/images/UrlImage;->n:Z

    .line 118
    const/4 v1, 0x1

    const v2, 0x7f020071

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/images/UrlImage;->k:I

    .line 120
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    iget v2, p0, Lcom/facebook/orca/images/UrlImage;->k:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/images/UrlImage;->bringChildToFront(Landroid/view/View;)V

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    .line 239
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/UrlImage$AfterImageLoadedListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/UrlImage$AfterImageLoadedListener;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/orca/images/UrlImage$AfterImageLoadedListener;->a(Lcom/facebook/orca/images/UrlImage;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    .line 244
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/facebook/orca/images/UrlImage;->h:Landroid/widget/ProgressBar;

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/facebook/orca/images/UrlImage;->bringChildToFront(Landroid/view/View;)V

    .line 256
    return-void

    :cond_0
    move v1, v3

    .line 252
    goto :goto_0

    :cond_1
    move v1, v3

    .line 253
    goto :goto_1

    :cond_2
    move v1, v3

    .line 254
    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/orca/images/UrlImage;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->c()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/images/UrlImage;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->o:Lcom/facebook/orca/common/async/Deferred;

    .line 248
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/facebook/orca/images/UrlImage;->a(Landroid/view/View;)V

    .line 249
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/facebook/orca/activity/CustomViewGroup;->onAttachedToWindow()V

    .line 133
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->a()V

    .line 134
    return-void
.end method

.method public setAfterImageLoadedListener(Lcom/facebook/orca/images/UrlImage$AfterImageLoadedListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->p:Lcom/facebook/orca/images/UrlImage$AfterImageLoadedListener;

    .line 198
    return-void
.end method

.method public setImageParams(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 142
    return-void
.end method

.method public setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-direct {v0, p1, p2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 146
    return-void
.end method

.method public setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V
    .locals 1
    .param p1    # Lcom/facebook/orca/images/FetchImageParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->m:Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {p1, v0}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->m:Lcom/facebook/orca/images/FetchImageParams;

    .line 151
    invoke-direct {p0}, Lcom/facebook/orca/images/UrlImage;->a()V

    .line 153
    :cond_0
    return-void
.end method

.method public setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/images/UrlImage;->k:I

    .line 180
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->l:Landroid/graphics/drawable/Drawable;

    .line 181
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    return-void
.end method

.method public setPlaceHolderResourceId(I)V
    .locals 1

    .prologue
    .line 169
    iput p1, p0, Lcom/facebook/orca/images/UrlImage;->k:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/images/UrlImage;->l:Landroid/graphics/drawable/Drawable;

    .line 171
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    return-void
.end method

.method public setPlaceHolderScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->j:Landroid/widget/ImageView$ScaleType;

    .line 190
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/orca/images/UrlImage;->i:Landroid/widget/ImageView$ScaleType;

    .line 161
    iget-object v0, p0, Lcom/facebook/orca/images/UrlImage;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 162
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 0

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/facebook/orca/images/UrlImage;->n:Z

    .line 206
    return-void
.end method
