.class public Lcom/nativex/monetization/theme/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# instance fields
.field private animations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private colors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private drawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/theme/Theme;->initialized:Z

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/theme/Theme;->colors:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nativex/monetization/theme/Theme;->animations:Landroid/util/SparseArray;

    .line 71
    return-void
.end method

.method private isThemeElementMraidType(Lcom/nativex/monetization/theme/ThemeElementTypes;)Z
    .locals 1
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 205
    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_LEFT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_RIGHT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_CENTER:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_DEFAULT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_LEFT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_RIGHT:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_TOP_CENTER:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nativex/monetization/theme/ThemeElementTypes;->MRAID_CLOSE_BUTTON_BOTTOM_CENTER:Lcom/nativex/monetization/theme/ThemeElementTypes;

    invoke-virtual {p1, v0}, Lcom/nativex/monetization/theme/ThemeElementTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nativex/monetization/theme/Theme;->animations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/theme/Theme;
    check-cast p0, Landroid/view/animation/Animation;

    return-object p0
.end method

.method public getColor(Lcom/nativex/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;
    .locals 2
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nativex/monetization/theme/Theme;->colors:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/nativex/monetization/theme/Theme;
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;

    .prologue
    .line 126
    iget-object v3, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 128
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 129
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/nativex/monetization/manager/MonetizationSharedDataManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 133
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 137
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/nativex/monetization/theme/Theme;->setDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V

    .line 140
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    return-object v2

    .line 135
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public declared-synchronized initialize()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nativex/monetization/theme/Theme;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/nativex/monetization/theme/Theme;->initialized:Z

    return v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 147
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/nativex/monetization/theme/Theme;->initialized:Z

    .line 148
    iget-object v2, p0, Lcom/nativex/monetization/theme/Theme;->colors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 151
    .local v1, "key":I
    iget-object v2, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "key":I
    :cond_0
    iget-object v2, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 147
    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/nativex/monetization/theme/Theme;->release()V

    .line 193
    return-void
.end method

.method public setAnimation(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nativex/monetization/theme/Theme;->animations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    return-void
.end method

.method public setColor(Lcom/nativex/monetization/theme/ThemeElementTypes;I)V
    .locals 3
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .param p2, "color"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nativex/monetization/theme/Theme;->colors:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method public setDrawable(Lcom/nativex/monetization/theme/ThemeElementTypes;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "type"    # Lcom/nativex/monetization/theme/ThemeElementTypes;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/nativex/monetization/theme/Theme;->isThemeElementMraidType(Lcom/nativex/monetization/theme/ThemeElementTypes;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Lcom/nativex/monetization/manager/ImageCacheManager;->getInstance()Lcom/nativex/monetization/interfaces/IImageCacheManager;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nativex/monetization/interfaces/IImageCacheManager;->add(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/nativex/monetization/theme/Theme;->drawables:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/nativex/monetization/theme/ThemeElementTypes;->getKey()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    return-void
.end method
