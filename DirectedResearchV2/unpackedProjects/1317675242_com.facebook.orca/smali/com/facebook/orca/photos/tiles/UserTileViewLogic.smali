.class public Lcom/facebook/orca/photos/tiles/UserTileViewLogic;
.super Ljava/lang/Object;
.source "UserTileViewLogic.java"


# instance fields
.field private final a:Lcom/facebook/orca/cache/DataCache;

.field private final b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private final c:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private final d:Lcom/facebook/orca/config/OrcaHttpConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Lcom/facebook/orca/photos/tiles/DefaultTiles;Lcom/facebook/orca/config/OrcaHttpConfig;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a:Lcom/facebook/orca/cache/DataCache;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 39
    iput-object p3, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->c:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 40
    iput-object p4, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->d:Lcom/facebook/orca/config/OrcaHttpConfig;

    .line 41
    return-void
.end method

.method private a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    .line 92
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    .line 110
    new-instance v0, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;-><init>()V

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->j()Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;-><init>(Landroid/graphics/RectF;F)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionRectConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;-><init>()V

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->b(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->c(F)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;->CENTER:Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionGraphicOp$CropType;)Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/photos/sizing/CropRegionConstraintsBuilder;->e()Lcom/facebook/orca/photos/sizing/CropRegionConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(Lcom/facebook/orca/photos/sizing/CropRegionConstraints;)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->a(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    div-int/lit8 v1, p3, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->b(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->c(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->d(I)Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/photos/sizing/GraphicOpConstraintsBuilder;->h()Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/users/User;Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 62
    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/PicCropInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/users/PicCropInfo;->b()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v3

    invoke-direct {p0, v3, p4, p5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/users/PicCropInfo;II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/images/FetchImageParams;-><init>(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->c:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    add-int v1, p4, p5

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void

    .line 70
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->q()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {p0, p4, p5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0

    .line 75
    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "0"

    invoke-static {p3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->d:Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "picture"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "large"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->b:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-direct {p0, p4, p5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(II)Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;->a(Lcom/facebook/orca/photos/sizing/GraphicOpConstraints;)Lcom/facebook/orca/images/UrlImageProcessor;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Landroid/net/Uri;Lcom/facebook/orca/images/UrlImageProcessor;)V

    goto :goto_0

    .line 85
    :cond_2
    sget-object v0, Lcom/facebook/orca/images/UrlImage;->a:Lcom/facebook/orca/images/FetchImageParams;

    invoke-virtual {p1, v0}, Lcom/facebook/orca/images/UrlImage;->setImageParams(Lcom/facebook/orca/images/FetchImageParams;)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/users/User;I)V
    .locals 6

    .prologue
    .line 53
    invoke-virtual {p2}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/users/User;Ljava/lang/String;II)V

    .line 54
    return-void
.end method

.method a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;II)V

    .line 45
    return-void
.end method

.method a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 48
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/cache/DataCache;->b(Ljava/lang/String;)Lcom/facebook/orca/users/User;

    move-result-object v0

    move-object v2, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/users/User;Ljava/lang/String;II)V

    .line 50
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0
.end method
