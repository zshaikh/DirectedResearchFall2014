.class public Lcom/dolphin/browser/util/aj;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dolphin/browser/util/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/util/aj;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    .prologue
    .line 138
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/util/aj;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    .line 142
    const/16 v0, 0x8

    if-gt v1, v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 144
    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 151
    :cond_1
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/dolphin/browser/util/aj;->a(Landroid/content/Context;)V

    .line 60
    sget v0, Lcom/dolphin/browser/util/aj;->c:I

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/aj;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    if-nez p0, :cond_0

    .line 213
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 210
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/util/aj;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 88
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 91
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v3, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    const/4 v2, -0x1

    invoke-static {v1, v2, p1}, Lcom/dolphin/browser/util/aj;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 100
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 101
    if-eqz p2, :cond_2

    .line 102
    invoke-static {v1, p1}, Lcom/dolphin/browser/util/aj;->a(Landroid/graphics/BitmapFactory$Options;I)V

    .line 104
    :cond_2
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    sget-object v2, Lcom/dolphin/browser/util/aj;->a:Ljava/lang/String;

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    sget v1, Lcom/dolphin/browser/util/aj;->c:I

    sget v2, Lcom/dolphin/browser/util/aj;->b:I

    div-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_0

    .line 109
    sget v1, Lcom/dolphin/browser/util/aj;->c:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    sput v1, Lcom/dolphin/browser/util/aj;->c:I

    goto :goto_0
.end method

.method public static a([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 132
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 134
    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/dolphin/browser/util/aj;->b:I

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/dolphin/browser/util/aj;->b:I

    .line 39
    sget v0, Lcom/dolphin/browser/util/aj;->b:I

    sput v0, Lcom/dolphin/browser/util/aj;->c:I

    .line 41
    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 121
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    mul-int/2addr v0, v1

    div-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_0

    .line 123
    invoke-static {}, Lcom/dolphin/browser/util/aj;->a()V

    .line 125
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 218
    if-eqz p0, :cond_0

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 220
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 221
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 222
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lcom/dolphin/browser/util/aj;->a:Ljava/lang/String;

    const-string v2, "Failed to save bitmap due to I/O error."

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    sget-object v1, Lcom/dolphin/browser/util/aj;->a:Ljava/lang/String;

    const-string v2, "Failed to save bitmap."

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 44
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 45
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_0

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "delete file failed"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v10, -0x1

    .line 156
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    .line 157
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    .line 159
    if-ne p2, v10, :cond_1

    move v0, v1

    .line 161
    :goto_0
    if-ne p1, v10, :cond_2

    const/16 v2, 0x80

    .line 165
    :goto_1
    if-ge v2, v0, :cond_3

    .line 176
    :cond_0
    :goto_2
    return v0

    .line 159
    :cond_1
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0

    .line 161
    :cond_2
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    .line 170
    :cond_3
    if-ne p2, v10, :cond_4

    if-ne p1, v10, :cond_4

    move v0, v1

    .line 172
    goto :goto_2

    .line 173
    :cond_4
    if-eq p1, v10, :cond_0

    move v0, v2

    .line 176
    goto :goto_2
.end method
