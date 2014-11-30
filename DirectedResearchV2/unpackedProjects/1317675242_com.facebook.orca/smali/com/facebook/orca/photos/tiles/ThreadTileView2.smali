.class public Lcom/facebook/orca/photos/tiles/ThreadTileView2;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadTileView2.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private c:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private f:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private g:Landroid/graphics/drawable/ColorDrawable;

.field private h:Lcom/facebook/orca/threads/ThreadSummary;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/images/UrlImage;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 189
    iput v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 191
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    if-nez v0, :cond_1

    .line 244
    :goto_1
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 199
    invoke-virtual {v0, v3}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 200
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 203
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->q()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->f:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->c:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-static {v3}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    .line 207
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iput v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    goto :goto_1

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v1

    .line 214
    if-ne v1, v4, :cond_4

    .line 215
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 216
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;I)V

    .line 217
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iput v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    goto :goto_1

    .line 220
    :cond_4
    if-ne v1, v5, :cond_5

    .line 221
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v2, v0, v1, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;I)V

    .line 224
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->c(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iput v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    goto/16 :goto_1

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/util/List;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v5, :cond_6

    .line 233
    sget-object v1, Lcom/facebook/orca/images/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 234
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iput v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    goto/16 :goto_1

    .line 239
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_7

    .line 240
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Lcom/facebook/orca/images/UrlImage;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xff

    const/16 v2, 0xcc

    const/4 v3, 0x4

    .line 79
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 80
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a:Lcom/facebook/orca/cache/DataCache;

    .line 81
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 82
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->c:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 83
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 84
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 85
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->f:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/R$styleable;->h:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    .line 89
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    if-ne v1, v5, :cond_0

    .line 90
    const/16 v1, 0x32

    invoke-static {p1, v1}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    .line 92
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->setBackgroundColor(I)V

    .line 96
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->g:Landroid/graphics/drawable/ColorDrawable;

    .line 97
    invoke-static {v3}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    .line 98
    invoke-static {v3}, Lcom/google/common/collect/Lists;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    move v0, v6

    .line 99
    :goto_0
    if-ge v0, v3, :cond_1

    .line 100
    new-instance v1, Lcom/facebook/orca/images/UrlImage;

    invoke-direct {v1, p1}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/images/UrlImage;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->addView(Landroid/view/View;)V

    .line 103
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/orca/images/UrlImage;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/images/UrlImage;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v3

    .line 248
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 249
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    sub-int/2addr v0, v3

    div-int/lit8 v5, v0, 0x2

    .line 251
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 252
    iget v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v0, v7, v7, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 254
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 255
    add-int v2, v4, v3

    iget v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v1, v2, v7, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 258
    add-int/2addr v4, v3

    add-int/2addr v3, v5

    iget v5, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    iget v6, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v4, p1, v3, v5, v0}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;II)V

    .line 263
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 266
    iget-object v4, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v0, v3, v5, v1}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;II)V

    .line 268
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {v0, v7}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 271
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 273
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 274
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v3}, Lcom/facebook/orca/cache/DataCache;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;II)V

    .line 276
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v0, v7}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 278
    iput v10, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 281
    iget-object v3, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->d:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;II)V

    .line 283
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {v0, v7}, Lcom/facebook/orca/images/UrlImage;->setVisibility(I)V

    .line 285
    iput v10, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    .line 335
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p0, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->b:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->d(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->e:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 367
    :goto_1
    return-object v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a(Lcom/facebook/orca/threads/ThreadSummary;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingLeft()I

    move-result v0

    .line 167
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 169
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingTop()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 172
    iget v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 174
    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/images/UrlImage;

    .line 175
    invoke-virtual {p0}, Lcom/facebook/orca/images/UrlImage;->getMeasuredWidth()I

    move-result v2

    .line 176
    invoke-virtual {p0}, Lcom/facebook/orca/images/UrlImage;->getMeasuredHeight()I

    move-result v3

    .line 177
    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 185
    :cond_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_2
    move v2, v4

    .line 179
    :goto_0
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    if-ge v2, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 181
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 182
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/facebook/orca/images/UrlImage;->layout(IIII)V

    .line 179
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v4, 0x40000000

    const/4 v3, 0x0

    .line 133
    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v6, v3, v0

    .line 138
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int v7, v3, v0

    .line 141
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/images/UrlImage;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 144
    invoke-virtual {v1}, Lcom/facebook/orca/images/UrlImage;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    invoke-virtual {v1}, Lcom/facebook/orca/images/UrlImage;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 159
    invoke-static {v0, p1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->resolveSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->setMeasuredDimension(II)V

    .line 162
    return-void

    .line 146
    :cond_0
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    .line 147
    :goto_1
    iget v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->l:I

    if-ge v2, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/UrlImage;

    .line 149
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/orca/images/UrlImage;->measure(II)V

    .line 147
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v6

    move v1, v7

    goto :goto_0
.end method

.method public setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->h:Lcom/facebook/orca/threads/ThreadSummary;

    .line 114
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->requestLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->invalidate()V

    .line 117
    return-void
.end method

.method public setTileSizePx(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->i:I

    .line 126
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->a()V

    .line 127
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->requestLayout()V

    .line 128
    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->invalidate()V

    .line 129
    return-void
.end method
