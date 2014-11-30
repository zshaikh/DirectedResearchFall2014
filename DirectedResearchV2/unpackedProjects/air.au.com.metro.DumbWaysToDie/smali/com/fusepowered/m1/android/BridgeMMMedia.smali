.class Lcom/fusepowered/m1/android/BridgeMMMedia;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;,
        Lcom/fusepowered/m1/android/BridgeMMMedia$PickerActivity;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PICTURES:Ljava/lang/String; = "Pictures"

.field private static pickerActivityObject:Ljava/lang/Object;


# instance fields
.field mediaScanner:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    return-object v0
.end method

.method private static centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 331
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 333
    .local v1, "y":F
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-static {p0, v2, v3, p1, p2}, Lcom/fusepowered/m1/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 338
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isCameraAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 58
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 59
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 68
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v3

    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    move v3, v6

    .line 65
    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    move v3, v6

    .line 68
    goto :goto_0
.end method

.method private isPictureChooserAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 75
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    .line 83
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v3

    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    move v3, v5

    .line 81
    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    move v3, v5

    .line 83
    goto :goto_0
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 542
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 544
    .local v0, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 545
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 549
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 550
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 551
    .local v5, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    const/4 v1, 0x1

    .line 557
    .end local v0    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "outChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "dir":Ljava/io/File;
    :goto_0
    return v1

    .line 554
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 556
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "newW"    # I
    .param p2, "newH"    # I
    .param p3, "quality"    # I

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "contentMode"    # Ljava/lang/String;
    .param p2, "toW"    # I
    .param p3, "toH"    # I
    .param p4, "quality"    # I

    .prologue
    const/4 v7, 0x0

    .line 293
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 294
    .local v0, "horizontalRatio":F
    int-to-float v5, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 299
    .local v4, "verticalRatio":F
    const-string v5, "Center"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    invoke-static {p0, p2, p3}, Lcom/fusepowered/m1/android/BridgeMMMedia;->centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 319
    :goto_0
    return-object v5

    .line 303
    :cond_0
    const-string v5, "ScaleToAspectFit"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 306
    .local v3, "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 307
    .local v2, "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 308
    .local v1, "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/fusepowered/m1/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 310
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_1
    const-string v5, "ScaleToAspectFill"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 313
    .restart local v3    # "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 314
    .restart local v2    # "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 317
    .restart local v1    # "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/fusepowered/m1/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v7, v7, p2, p3}, Lcom/fusepowered/m1/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 319
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/fusepowered/m1/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method private static final scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "contentMode"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 345
    .local v2, "fis2":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 348
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 351
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 352
    const/4 v0, 0x0

    invoke-static {v1, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 354
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 355
    .local v0, "height":I
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 356
    .local v6, "width":I
    const/4 v3, 0x1

    .line 358
    .local v3, "inSampleSize":I
    if-gt v0, p2, :cond_0

    if-le v6, p1, :cond_1

    .line 360
    :cond_0
    if-le v6, v0, :cond_7

    .line 362
    int-to-float v0, v0

    int-to-float v3, p2

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .end local v0    # "height":I
    .end local v3    # "inSampleSize":I
    move-result v0

    .local v0, "inSampleSize":I
    move v3, v0

    .line 371
    .end local v0    # "inSampleSize":I
    .restart local v3    # "inSampleSize":I
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 373
    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .local v0, "fis2":Ljava/io/FileInputStream;
    const/4 p0, 0x0

    :try_start_2
    iput-boolean p0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 374
    .end local p0    # "file":Ljava/io/File;
    iput v3, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 375
    const/4 p0, 0x0

    invoke-static {v0, p0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object p0

    .line 384
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local p0, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 385
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 386
    :cond_2
    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v2, p0

    .end local p0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object p0, v1

    .line 394
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "inSampleSize":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    .local p0, "fis":Ljava/io/FileInputStream;
    :goto_1
    const/4 v0, 0x0

    .line 395
    .local v0, "contents":[B
    if-eqz v2, :cond_13

    .line 397
    const/4 p0, 0x1

    invoke-static {v2, p3, p1, p2, p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    .end local p0    # "fis":Ljava/io/FileInputStream;
    move-result-object v1

    .line 398
    .local v1, "finalBitmap":Landroid/graphics/Bitmap;
    const/4 p0, 0x0

    .line 402
    .local p0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .end local p1    # "w":I
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 403
    .end local p0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    const-string p0, ""

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 404
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x64

    invoke-virtual {v2, p0, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 407
    .end local p2    # "h":I
    :goto_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object p0

    .line 418
    .end local v0    # "contents":[B
    .local p0, "contents":[B
    if-eqz v2, :cond_4

    .line 419
    :try_start_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_4
    if-eqz v1, :cond_5

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    :cond_5
    if-eqz p1, :cond_6

    .line 423
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 431
    .end local v1    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_6
    :goto_3
    return-object p0

    .line 366
    .local v0, "height":I
    .local v1, "fis":Ljava/io/FileInputStream;
    .local v2, "fis2":Ljava/io/FileInputStream;
    .restart local v3    # "inSampleSize":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "width":I
    .local p0, "file":Ljava/io/File;
    .local p1, "w":I
    .restart local p2    # "h":I
    :cond_7
    int-to-float v0, v6

    int-to-float v3, p1

    div-float/2addr v0, v3

    :try_start_7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .end local v0    # "height":I
    .end local v3    # "inSampleSize":I
    move-result v0

    .local v0, "inSampleSize":I
    move v3, v0

    .end local v0    # "inSampleSize":I
    .restart local v3    # "inSampleSize":I
    goto :goto_0

    .line 389
    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local v0, "fis2":Ljava/io/FileInputStream;
    .local p0, "scaledBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    move-object v2, p0

    .end local p0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object p0, v1

    .line 392
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local p0, "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 377
    .end local v3    # "inSampleSize":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    .local v0, "fis":Ljava/io/FileInputStream;
    .local v2, "fis2":Ljava/io/FileInputStream;
    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local p0, "file":Ljava/io/File;
    :catch_1
    move-exception p0

    move-object p0, v0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local p0, "fis":Ljava/io/FileInputStream;
    move-object v0, v2

    .line 384
    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .local v0, "fis2":Ljava/io/FileInputStream;
    :goto_4
    if-eqz p0, :cond_8

    .line 385
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 386
    :cond_8
    if-eqz v0, :cond_9

    .line 387
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_9
    move-object v2, v5

    .line 391
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 389
    .end local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v1

    move-object v2, v5

    .line 392
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 382
    .local v0, "fis":Ljava/io/FileInputStream;
    .local v2, "fis2":Ljava/io/FileInputStream;
    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local p0, "file":Ljava/io/File;
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-object p1, v2

    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .local p1, "fis2":Ljava/io/FileInputStream;
    move-object p0, v0

    .line 384
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p2    # "h":I
    .local p0, "fis":Ljava/io/FileInputStream;
    :goto_5
    if-eqz p0, :cond_a

    .line 385
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 386
    :cond_a
    if-eqz p1, :cond_b

    .line 387
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 391
    .end local p0    # "fis":Ljava/io/FileInputStream;
    :cond_b
    :goto_6
    throw p2

    .line 406
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local v0, "contents":[B
    .local v1, "finalBitmap":Landroid/graphics/Bitmap;
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p2    # "h":I
    :cond_c
    :try_start_a
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x64

    invoke-virtual {v1, p0, p2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .line 409
    .end local p2    # "h":I
    :catch_3
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    .line 411
    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "baos":Ljava/io/ByteArrayOutputStream;
    .local p2, "e":Ljava/lang/Exception;
    :goto_7
    const/4 p1, 0x0

    .line 412
    .end local v0    # "contents":[B
    .local p1, "contents":[B
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 418
    if-eqz v2, :cond_d

    .line 419
    :try_start_c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_d
    if-eqz v1, :cond_e

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    :cond_e
    if-eqz p0, :cond_f

    .line 423
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_f
    move-object p0, p1

    .line 428
    .end local p1    # "contents":[B
    .local p0, "contents":[B
    goto :goto_3

    .line 425
    .end local p2    # "e":Ljava/lang/Exception;
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception p1

    .line 427
    .local p1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 425
    .local p0, "baos":Ljava/io/ByteArrayOutputStream;
    .local p1, "contents":[B
    .restart local p2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception p0

    .line 427
    .end local p2    # "e":Ljava/lang/Exception;
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    .line 429
    .end local p1    # "contents":[B
    .local p0, "contents":[B
    goto :goto_3

    .line 416
    .restart local v0    # "contents":[B
    .local p0, "baos":Ljava/io/ByteArrayOutputStream;
    .local p2, "h":I
    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 418
    .end local v0    # "contents":[B
    .end local p2    # "h":I
    .restart local p1    # "contents":[B
    :goto_8
    if-eqz v2, :cond_10

    .line 419
    :try_start_d
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 420
    :cond_10
    if-eqz v1, :cond_11

    .line 421
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    :cond_11
    if-eqz p0, :cond_12

    .line 423
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 428
    .end local p0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_12
    :goto_9
    throw p2

    .line 425
    .restart local p0    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception p0

    .line 427
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 416
    .end local p0    # "e":Ljava/lang/Exception;
    .restart local v0    # "contents":[B
    .local p1, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    .end local p1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local p0, "baos":Ljava/io/ByteArrayOutputStream;
    move-object p1, v0

    .end local v0    # "contents":[B
    .local p1, "contents":[B
    goto :goto_8

    .local p2, "e":Ljava/lang/Exception;
    :catchall_3
    move-exception p2

    goto :goto_8

    .line 409
    .end local p1    # "contents":[B
    .restart local v0    # "contents":[B
    .local p2, "h":I
    :catch_7
    move-exception p1

    move-object p2, p1

    goto :goto_7

    .line 389
    .end local v0    # "contents":[B
    .end local v1    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local p2    # "h":I
    .restart local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .local p0, "fis":Ljava/io/FileInputStream;
    .local p1, "fis2":Ljava/io/FileInputStream;
    :catch_8
    move-exception p0

    goto :goto_6

    .line 382
    .local v1, "fis":Ljava/io/FileInputStream;
    .local v2, "fis2":Ljava/io/FileInputStream;
    .local p0, "file":Ljava/io/File;
    .local p1, "w":I
    .restart local p2    # "h":I
    :catchall_4
    move-exception p0

    move-object p2, p0

    move-object p1, v2

    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .local p1, "fis2":Ljava/io/FileInputStream;
    move-object p0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local p0, "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local p0    # "fis":Ljava/io/FileInputStream;
    .local v0, "fis2":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "inSampleSize":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "width":I
    .local p1, "w":I
    :catchall_5
    move-exception p0

    move-object p2, p0

    move-object p1, v0

    .end local v0    # "fis2":Ljava/io/FileInputStream;
    .local p1, "fis2":Ljava/io/FileInputStream;
    move-object p0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 377
    .end local v3    # "inSampleSize":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "width":I
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis2":Ljava/io/FileInputStream;
    .local p0, "file":Ljava/io/File;
    .local p1, "w":I
    :catch_9
    move-exception p0

    move-object v0, v2

    .end local v2    # "fis2":Ljava/io/FileInputStream;
    .restart local v0    # "fis2":Ljava/io/FileInputStream;
    move-object p0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local p0, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local p0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "inSampleSize":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "width":I
    :catch_a
    move-exception p0

    move-object p0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "inSampleSize":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "width":I
    .local v0, "contents":[B
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_13
    move-object p0, v0

    .end local v0    # "contents":[B
    .local p0, "contents":[B
    goto/16 :goto_3
.end method

.method private scanMedia(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 566
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 568
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/fusepowered/m1/android/BridgeMMMedia$1;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/m1/android/BridgeMMMedia$1;-><init>(Lcom/fusepowered/m1/android/BridgeMMMedia;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    .line 584
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 587
    :cond_0
    return-void
.end method


# virtual methods
.method public availableSourceTypes(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "Photo Library"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    :cond_1
    new-instance v1, Lcom/fusepowered/m1/android/MMJSResponse;

    invoke-direct {v1}, Lcom/fusepowered/m1/android/MMJSResponse;-><init>()V

    .line 118
    .local v1, "response":Lcom/fusepowered/m1/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/fusepowered/m1/android/MMJSResponse;->result:I

    .line 119
    iput-object v0, v1, Lcom/fusepowered/m1/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 120
    return-object v1
.end method

.method public getDeviceVolume(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 694
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 696
    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK;->getMediaVolume(Landroid/content/Context;)I

    move-result v2

    .line 697
    .local v2, "volume":I
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 698
    .local v1, "response":Lcom/fusepowered/m1/android/MMJSResponse;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/fusepowered/m1/android/MMJSResponse;->response:Ljava/lang/Object;

    move-object v3, v1

    .line 701
    .end local v1    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    .end local v2    # "volume":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "no volume available"

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public declared-synchronized getPicture(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 443
    .local v4, "context":Landroid/content/Context;
    const-string v13, "sourceType"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 444
    .local v10, "type":Ljava/lang/String;
    const-string v13, "constrainHeight"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 445
    .local v8, "height":Ljava/lang/String;
    const-string v13, "constrainWidth"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 447
    .local v12, "width":Ljava/lang/String;
    const-string v13, "contentMode"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 448
    .local v2, "contentMode":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 449
    const-string v2, ""

    .line 450
    :cond_0
    if-eqz v8, :cond_1

    if-nez v12, :cond_2

    .line 451
    :cond_1
    const-string v13, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v13}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 497
    :goto_0
    monitor-exit p0

    return-object v13

    .line 454
    :cond_2
    :try_start_1
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    float-to-int v7, v13

    .line 455
    .local v7, "h":I
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    float-to-int v11, v13

    .line 456
    .local v11, "w":I
    mul-int v13, v7, v11

    const v14, 0x57e40

    if-le v13, v14, :cond_3

    .line 457
    const-string v13, "constrainHeight * constrainWidth > 360000"

    invoke-static {v13}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v13

    goto :goto_0

    .line 460
    :cond_3
    if-eqz v4, :cond_7

    if-eqz v10, :cond_7

    .line 462
    new-instance v6, Ljava/io/File;

    invoke-static {v4}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tmp_mm_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 463
    .local v6, "file":Ljava/io/File;
    const-string v13, "Camera"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v13

    if-nez v13, :cond_6

    :cond_4
    const-string v13, "Photo Library"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "PhotoLibrary"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->isPictureChooserAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v13

    if-eqz v13, :cond_7

    .line 467
    :cond_6
    :try_start_2
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    sput-object v13, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 468
    sget-object v13, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 470
    :try_start_3
    invoke-static {v4, v6, v10}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 471
    sget-object v14, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V

    .line 472
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    const/4 v13, 0x0

    :try_start_4
    sput-object v13, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 483
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_7

    .line 485
    invoke-static {v6, v11, v7, v2}, Lcom/fusepowered/m1/android/BridgeMMMedia;->scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v3

    .line 486
    .local v3, "contents":[B
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 487
    if-eqz v3, :cond_7

    .line 489
    new-instance v9, Lcom/fusepowered/m1/android/MMJSResponse;

    invoke-direct {v9}, Lcom/fusepowered/m1/android/MMJSResponse;-><init>()V

    .line 490
    .local v9, "response":Lcom/fusepowered/m1/android/MMJSResponse;
    const/4 v13, 0x1

    iput v13, v9, Lcom/fusepowered/m1/android/MMJSResponse;->result:I

    .line 491
    iput-object v3, v9, Lcom/fusepowered/m1/android/MMJSResponse;->dataResponse:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v13, v9

    .line 492
    goto/16 :goto_0

    .line 472
    .end local v3    # "contents":[B
    .end local v9    # "response":Lcom/fusepowered/m1/android/MMJSResponse;
    :catchall_0
    move-exception v14

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 474
    :catch_0
    move-exception v13

    move-object v5, v13

    .line 476
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 480
    const/4 v13, 0x0

    :try_start_8
    sput-object v13, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 442
    .end local v2    # "contentMode":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "h":I
    .end local v8    # "height":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "w":I
    .end local v12    # "width":Ljava/lang/String;
    :catchall_1
    move-exception v13

    monitor-exit p0

    throw v13

    .line 480
    .restart local v2    # "contentMode":Ljava/lang/String;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "h":I
    .restart local v8    # "height":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "w":I
    .restart local v12    # "width":Ljava/lang/String;
    :catchall_2
    move-exception v13

    const/4 v14, 0x0

    :try_start_9
    sput-object v14, Lcom/fusepowered/m1/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 497
    .end local v6    # "file":Ljava/io/File;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "true"

    .line 92
    const-string v1, "sourceType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 95
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "true"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 97
    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const-string v1, "true"

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "false"

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public playAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const-string v6, "repeat"

    .line 625
    iget-object v4, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 626
    .local v1, "context":Landroid/content/Context;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 627
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 629
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 630
    .local v0, "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-nez v0, :cond_0

    move-object v4, v5

    .line 649
    .end local v0    # "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    .end local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    :goto_0
    return-object v4

    .line 632
    .restart local v0    # "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    .restart local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    :cond_0
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    const-string v4, "Audio already playing."

    invoke-static {v4}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 635
    :cond_1
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 637
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "repeat"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 641
    .restart local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    :cond_2
    invoke-static {v1, v3}, Lcom/fusepowered/m1/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 642
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 644
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "repeat"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .end local v0    # "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    .end local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    :cond_3
    move-object v4, v5

    .line 649
    goto :goto_0
.end method

.method public playSound(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 659
    iget-object v4, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_0

    move-object v4, v5

    .line 673
    .end local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    :goto_0
    return-object v4

    .line 661
    .restart local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 662
    .local v1, "context":Landroid/content/Context;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 663
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 665
    invoke-static {v1, v3}, Lcom/fusepowered/m1/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 666
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    iget-object v4, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 669
    .local v0, "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {v0, v2}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->playSound(Ljava/io/File;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .end local v0    # "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    move-object v4, v5

    .line 673
    goto :goto_0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 597
    .local v0, "context":Landroid/content/Context;
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 598
    .local v2, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 600
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    invoke-static {v2}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 615
    :goto_0
    return-object v3

    .line 607
    :cond_0
    invoke-static {v0, v2}, Lcom/fusepowered/m1/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 608
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V

    .line 611
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 615
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fusepowered/m1/android/BridgeMMMedia;
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 682
    .local v0, "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;->stop()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v1

    .line 685
    .end local v0    # "audio":Lcom/fusepowered/m1/android/BridgeMMMedia$Audio;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized writeToPhotoLibrary(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "path"

    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/fusepowered/m1/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 510
    .local v0, "context":Landroid/content/Context;
    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 511
    .local v3, "path":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/fusepowered/m1/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pictures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 515
    const-string v6, "url"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v6, "path"

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v2, Lcom/fusepowered/m1/android/BridgeMMFileManager;

    invoke-direct {v2}, Lcom/fusepowered/m1/android/BridgeMMFileManager;-><init>()V

    .line 518
    .local v2, "fileManager":Lcom/fusepowered/m1/android/BridgeMMFileManager;
    invoke-virtual {v2, v0}, Lcom/fusepowered/m1/android/BridgeMMFileManager;->setContext(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v2, p1}, Lcom/fusepowered/m1/android/BridgeMMFileManager;->downloadFile(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v6

    if-nez v6, :cond_0

    .line 520
    const-string v6, "Failed to download"

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 531
    .end local v2    # "fileManager":Lcom/fusepowered/m1/android/BridgeMMFileManager;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 523
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/fusepowered/m1/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 524
    .local v5, "source":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v6

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0, v5, v1}, Lcom/fusepowered/m1/android/BridgeMMMedia;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-direct {p0, v6}, Lcom/fusepowered/m1/android/BridgeMMMedia;->scanMedia(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/fusepowered/m1/android/AdCache;->isExternalMounted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 529
    const-string v6, "Storage not mounted, cannot add image to photo library photo library"

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v6

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 531
    :cond_3
    const-string v6, "Image saved to photo library"

    invoke-static {v6}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 509
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dest":Ljava/io/File;
    .end local v3    # "path":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "source":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
