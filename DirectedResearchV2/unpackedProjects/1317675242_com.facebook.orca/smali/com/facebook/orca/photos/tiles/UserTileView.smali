.class public Lcom/facebook/orca/photos/tiles/UserTileView;
.super Landroid/widget/FrameLayout;
.source "UserTileView.java"


# instance fields
.field private a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

.field private b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

.field private c:Lcom/facebook/orca/images/UrlImage;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/orca/users/User;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/photos/tiles/UserTileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Lcom/facebook/orca/users/User;I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    iget-object v2, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;->a(Lcom/facebook/orca/images/UrlImage;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x32

    const/4 v2, -0x1

    .line 51
    invoke-static {p1}, Lcom/facebook/orca/app/OrcaInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 52
    const-class v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->a:Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    .line 53
    const-class v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    .line 55
    sget-object v0, Lcom/facebook/orca/R$styleable;->h:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    .line 57
    iget v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    if-ne v1, v2, :cond_0

    .line 58
    invoke-static {p1, v3}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    new-instance v0, Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/images/UrlImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    iget-object v1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->b:Lcom/facebook/orca/photos/tiles/DefaultTiles;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/photos/tiles/DefaultTiles;->b(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/images/UrlImage;->setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->c:Lcom/facebook/orca/images/UrlImage;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method


# virtual methods
.method public setTileSizePx(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->f:I

    .line 94
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 95
    return-void
.end method

.method public setUser(Lcom/facebook/orca/users/User;)V
    .locals 1
    .param p1    # Lcom/facebook/orca/users/User;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 85
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->d:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/photos/tiles/UserTileView;->e:Lcom/facebook/orca/users/User;

    .line 74
    invoke-direct {p0}, Lcom/facebook/orca/photos/tiles/UserTileView;->a()V

    .line 75
    return-void
.end method
