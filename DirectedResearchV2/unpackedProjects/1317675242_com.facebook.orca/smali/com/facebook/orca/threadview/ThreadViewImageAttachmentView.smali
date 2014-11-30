.class public Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;
.super Landroid/view/ViewGroup;
.source "ThreadViewImageAttachmentView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

.field private b:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

.field private c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private d:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/facebook/orca/threads/Message;

.field private j:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/attachments/ImageAttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x0

    const v3, 0x3f19999a

    .line 199
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-static {p0, v5}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-static {p0, v5}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    :goto_0
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 97
    new-instance v0, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setShowProgressBar(Z)V

    .line 99
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setBackgroundResource(I)V

    .line 101
    invoke-virtual {v0, v3}, Lcom/facebook/orca/images/UrlImage;->setClickable(Z)V

    .line 102
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->addView(Landroid/view/View;I)V

    .line 103
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 108
    invoke-direct {p0, v2, v3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(IZ)V

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v1, v0

    .line 116
    :goto_1
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    if-ge v1, v0, :cond_1

    .line 117
    invoke-virtual {p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 118
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 120
    goto :goto_1

    .line 111
    :goto_2
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->k:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(IZ)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 121
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 6

    .prologue
    .line 124
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    move v2, v0

    .line 125
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-object v3, v0

    .line 127
    :goto_1
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/attachments/ImageAttachmentData;

    .line 129
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    invoke-direct {v4, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/facebook/orca/images/UrlImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/ImageAttachmentData;->a()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v4, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 134
    new-instance v2, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView$1;-><init>(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Lcom/facebook/orca/attachments/ImageAttachmentData;)V

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    move v2, v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-object v3, v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/16 v2, 0x50

    .line 73
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 74
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 75
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->d:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 77
    invoke-static {p1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    .line 78
    invoke-static {p1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    .line 79
    invoke-static {p1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    .line 80
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->h:I

    .line 81
    invoke-static {p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Landroid/content/Context;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    .line 82
    invoke-static {p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b(Landroid/content/Context;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->b:Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    .line 83
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/ImageAttachmentData;)V
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/photos/view/PhotoViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const-string v2, "imageData"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;Lcom/facebook/orca/attachments/ImageAttachmentData;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a(Lcom/facebook/orca/attachments/ImageAttachmentData;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6

    .prologue
    const/16 v5, 0x50

    const/4 v4, 0x0

    const v3, 0x3f19999a

    .line 213
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-static {p0, v5}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-static {p0, v5}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 172
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 173
    invoke-virtual {p0, v7}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 174
    iget v1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    sub-int v2, p4, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 175
    sub-int v2, p5, p3

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 189
    :cond_0
    return-void

    .line 179
    :cond_1
    sub-int v0, p4, p2

    move v2, v7

    move v3, v0

    move v4, v7

    .line 181
    :goto_0
    if-ge v2, v1, :cond_0

    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    if-le v3, v0, :cond_0

    .line 182
    invoke-virtual {p0, v2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 183
    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    add-int/2addr v5, v4

    sub-int v6, p5, p3

    invoke-virtual {v0, v4, v7, v5, v6}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 184
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->h:I

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    .line 185
    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->h:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 186
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    .line 187
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x40000000

    .line 144
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    .line 145
    const v1, 0x7fffffff

    .line 148
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 152
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 153
    invoke-virtual {p0, v4}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 154
    iget v3, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->f:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 155
    iget v4, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 156
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 166
    :cond_0
    invoke-static {v1, p1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setMeasuredDimension(II)V

    .line 167
    return-void

    :cond_1
    move v3, v4

    .line 158
    :goto_0
    if-ge v3, v2, :cond_0

    .line 159
    invoke-virtual {p0, v3}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 160
    iget v5, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->g:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 161
    iget v6, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->e:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 162
    invoke-virtual {p0, v4, v5, v6}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->measureChild(Landroid/view/View;II)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->i:Lcom/facebook/orca/threads/Message;

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->c:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->b(Lcom/facebook/orca/threads/Message;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->j:Lcom/google/common/collect/ImmutableList;

    .line 92
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->a()V

    .line 93
    return-void
.end method
