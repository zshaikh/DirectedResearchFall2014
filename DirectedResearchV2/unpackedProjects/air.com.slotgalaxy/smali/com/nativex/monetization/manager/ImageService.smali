.class public Lcom/nativex/monetization/manager/ImageService;
.super Ljava/lang/Object;
.source "ImageService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawableImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 55
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 56
    const-string v3, "image"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v0

    .line 65
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 61
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 62
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "Exception caught in ImageService in getDrawableImage():"

    invoke-static {v3, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNinePatchDrawableImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 74
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 75
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 77
    .local v1, "chunk":[B
    const/4 v2, 0x0

    .line 78
    .local v2, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const-string v6, "image"

    invoke-direct {v2, v0, v1, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .restart local v2    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    move-object v5, v2

    .line 87
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "chunk":[B
    .end local v2    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    return-object v5

    .line 81
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "chunk":[B
    .restart local v2    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nativex/monetization/manager/ImageService;->getDrawableImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 84
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "chunk":[B
    .end local v2    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 85
    .local v3, "e":Ljava/lang/Throwable;
    const-string v5, "Exception caught in ImageService in getNinePatchDrawable():"

    invoke-static {v5, v3}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public loadDrawableFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 122
    invoke-virtual {p0, p1, v1}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 126
    if-eqz v1, :cond_0

    .line 128
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 124
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "ImageService: Exception caught in loadDrawableFromAssets()"

    invoke-static {v2, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v1, :cond_1

    .line 128
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 133
    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 128
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 130
    :cond_2
    :goto_2
    throw v2

    .line 129
    :catch_1
    move-exception v3

    goto :goto_0

    .restart local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public loadDrawableFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 150
    if-eqz v2, :cond_0

    .line 152
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object v4, v5

    .line 157
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    return-object v4

    .line 145
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {p0, p1, v3}, Lcom/nativex/monetization/manager/ImageService;->loadDrawableFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 150
    if-eqz v3, :cond_2

    .line 152
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v2, v3

    .line 154
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 147
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 148
    .local v0, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    const-string v4, "ImageService: Exception caught in loadDrawableFromFile()"

    invoke-static {v4, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    if-eqz v2, :cond_3

    .line 152
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    move-object v4, v5

    .line 157
    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v2, :cond_4

    .line 152
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 154
    :cond_4
    :goto_6
    throw v4

    .line 153
    .restart local v1    # "file":Ljava/io/File;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v5

    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    goto :goto_6

    .line 150
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 147
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public loadDrawableFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    .line 94
    :try_start_0
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    move-object v1, v7

    .line 113
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 98
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 99
    .local v3, "chunk":[B
    const/4 v0, 0x0

    .line 100
    .local v0, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :try_start_1
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const-string v5, "image"

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    move-object v1, v0

    .line 103
    goto :goto_0

    .line 104
    .end local v0    # "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 105
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "Could not load a NinePatchDrawable loading BitmapDrawable"

    invoke-static {v1, v6}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 109
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "chunk":[B
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 110
    .restart local v6    # "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "Exception caught in ImageService in loadDrawableFromInputStream():"

    invoke-static {v1, v6}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v7

    .line 113
    goto :goto_0

    .line 111
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    throw v1
.end method
