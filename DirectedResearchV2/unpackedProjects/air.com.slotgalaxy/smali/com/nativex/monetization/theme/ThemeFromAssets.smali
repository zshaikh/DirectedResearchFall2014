.class public Lcom/nativex/monetization/theme/ThemeFromAssets;
.super Lcom/nativex/monetization/theme/Theme;
.source "ThemeFromAssets.java"


# instance fields
.field private backgroundFilenames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageService:Lcom/nativex/monetization/manager/ImageService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nativex/monetization/theme/Theme;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->backgroundFilenames:Landroid/util/SparseArray;

    .line 35
    return-void
.end method


# virtual methods
.method public addFilename(Lcom/nativex/monetization/theme/ThemeElementTypes;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->backgroundFilenames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    return-void
.end method

.method public getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/nativex/monetization/theme/Theme;->getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 42
    iget-object v2, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->backgroundFilenames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    .local v1, "filename":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->imageService:Lcom/nativex/monetization/manager/ImageService;

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Lcom/nativex/monetization/manager/ImageService;

    invoke-direct {v2}, Lcom/nativex/monetization/manager/ImageService;-><init>()V

    iput-object v2, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->imageService:Lcom/nativex/monetization/manager/ImageService;

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->imageService:Lcom/nativex/monetization/manager/ImageService;

    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/nativex/monetization/theme/ThemeFromAssets;->setDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V

    .line 51
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/nativex/monetization/theme/Theme;->release()V

    .line 63
    iget-object v0, p0, Lcom/nativex/monetization/theme/ThemeFromAssets;->backgroundFilenames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 64
    return-void
.end method
