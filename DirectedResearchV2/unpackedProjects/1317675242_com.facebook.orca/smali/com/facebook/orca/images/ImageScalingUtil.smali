.class public Lcom/facebook/orca/images/ImageScalingUtil;
.super Ljava/lang/Object;
.source "ImageScalingUtil.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Lcom/facebook/orca/attachments/MediaAttachment;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v0

    .line 118
    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp-rotate_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->b()Lcom/google/common/io/InputSupplier;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/images/ImageScalingUtil$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/images/ImageScalingUtil$1;-><init>(Lcom/facebook/orca/images/ImageScalingUtil;Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/google/common/io/ByteStreams;->a(Lcom/google/common/io/InputSupplier;Lcom/google/common/io/OutputSupplier;)J

    .line 128
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v0, v1

    .line 135
    :goto_0
    return v0

    .line 131
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1

    .line 134
    :cond_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v0, "Orientation"

    invoke-virtual {v1, v0, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/images/ImageScalingUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/images/ImageScalingUtil;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/high16 v3, 0x3f800000

    const/high16 v2, -0x40800000

    .line 140
    if-ne p2, v6, :cond_0

    move-object v0, p1

    .line 166
    :goto_0
    return-object v0

    .line 144
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 146
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move v0, v6

    .line 159
    :goto_1
    if-ne v0, v4, :cond_5

    .line 160
    const/high16 v0, 0x43340000

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 166
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 149
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move v0, v4

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    .line 152
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 153
    const/4 v0, 0x6

    goto :goto_1

    .line 154
    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_7

    .line 155
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 156
    const/16 v0, 0x8

    goto :goto_1

    .line 161
    :cond_5
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 162
    const/high16 v0, 0x42b40000

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    .line 163
    :cond_6
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 164
    const/high16 v0, 0x43870000

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_2

    :cond_7
    move v0, p2

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v5, -0x40800000

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 39
    if-le v3, v4, :cond_0

    .line 40
    if-le v3, p2, :cond_2

    .line 41
    int-to-float v0, p2

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 50
    :goto_0
    cmpl-float v2, v0, v5

    if-eqz v2, :cond_1

    .line 51
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 52
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 53
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    :goto_1
    return-object v0

    .line 44
    :cond_0
    if-le v4, p2, :cond_2

    .line 45
    int-to-float v0, p2

    int-to-float v2, v4

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 55
    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/attachments/MediaAttachment;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 74
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v2, v1

    move v1, v0

    move v0, v3

    .line 77
    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-lt v3, p2, :cond_0

    div-int/lit8 v3, v1, 0x2

    if-ge v3, p2, :cond_1

    .line 85
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 87
    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaAttachment;->a()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 90
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 92
    :try_start_4
    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    .line 94
    if-nez v1, :cond_2

    move-object v0, v4

    .line 110
    :goto_1
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v0

    .line 107
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 110
    goto :goto_1

    .line 79
    :cond_1
    div-int/lit8 v2, v2, 0x2

    .line 80
    div-int/lit8 v1, v1, 0x2

    .line 81
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 92
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcom/google/common/io/Closeables;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    :cond_2
    :try_start_5
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/ImageScalingUtil;->a(Lcom/facebook/orca/attachments/MediaAttachment;)I

    move-result v0

    .line 101
    invoke-direct {p0, v1, v0}, Lcom/facebook/orca/images/ImageScalingUtil;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_1

    .line 102
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
