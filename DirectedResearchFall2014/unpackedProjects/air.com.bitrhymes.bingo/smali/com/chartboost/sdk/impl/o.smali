.class public Lcom/chartboost/sdk/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/o$a;,
        Lcom/chartboost/sdk/impl/o$b;,
        Lcom/chartboost/sdk/impl/o$c;,
        Lcom/chartboost/sdk/impl/o$d;,
        Lcom/chartboost/sdk/impl/o$e;
    }
.end annotation


# static fields
.field private static a:Lcom/chartboost/sdk/impl/o;


# instance fields
.field private b:Lcom/chartboost/sdk/impl/o$d;

.field private c:Lcom/chartboost/sdk/Libraries/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/chartboost/sdk/impl/o$d;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/o$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    .line 60
    new-instance v0, Lcom/chartboost/sdk/Libraries/a;

    invoke-direct {v0}, Lcom/chartboost/sdk/Libraries/a;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/Libraries/a;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;
    .locals 1

    .prologue
    .line 249
    invoke-static {p0}, Lcom/chartboost/sdk/impl/o;->b(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/chartboost/sdk/impl/o;
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/chartboost/sdk/impl/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/chartboost/sdk/impl/o;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/o;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;

    .line 52
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;
    .locals 1

    .prologue
    .line 250
    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 252
    instance-of v0, p0, Lcom/chartboost/sdk/impl/o$c;

    if-eqz v0, :cond_0

    .line 253
    check-cast p0, Lcom/chartboost/sdk/impl/o$c;

    .line 254
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o$c;->a()Lcom/chartboost/sdk/impl/o$a;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/o$d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    move-object v0, v7

    .line 331
    :goto_0
    return-object v0

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 279
    if-nez v1, :cond_1

    move-object v0, v7

    .line 280
    goto :goto_0

    .line 283
    :cond_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 285
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 287
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 291
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_2
    long-to-int v0, v2

    .line 296
    new-array v2, v0, [B

    .line 297
    invoke-virtual {v1, v2, v6, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 298
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 300
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    array-length v1, v2

    invoke-static {v2, v6, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 304
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 306
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 307
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 308
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 309
    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 312
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_2
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_3

    move-object v1, v7

    .line 328
    :goto_3
    if-nez v1, :cond_4

    move-object v0, v7

    .line 329
    goto :goto_0

    .line 315
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    array-length v3, v2

    invoke-static {v2, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3

    .line 320
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 323
    goto :goto_0

    .line 316
    :catch_1
    move-exception v1

    .line 313
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 331
    :cond_4
    new-instance v2, Lcom/chartboost/sdk/Libraries/a$a;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v2, v1, v0}, Lcom/chartboost/sdk/Libraries/a$a;-><init>(Landroid/graphics/Bitmap;I)V

    move-object v0, v2

    goto :goto_0

    .line 288
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    if-eqz p5, :cond_4

    const-string v1, "paramNoMemoryCache"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 74
    :goto_0
    if-nez v1, :cond_0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    invoke-virtual {v2, p2}, Lcom/chartboost/sdk/Libraries/a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :cond_0
    if-nez v0, :cond_1

    .line 77
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    if-eqz v1, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/a$a;->a(Z)V

    .line 80
    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    invoke-virtual {v1, p2, v0}, Lcom/chartboost/sdk/Libraries/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :cond_1
    :goto_2
    if-eqz v0, :cond_6

    .line 90
    if-eqz p4, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    :cond_2
    if-eqz p3, :cond_3

    .line 93
    invoke-interface {p3, v0, p5}, Lcom/chartboost/sdk/impl/o$b;->a(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V

    .line 100
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v1, v3

    .line 72
    goto :goto_0

    .line 79
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 87
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 97
    :cond_6
    new-instance v0, Lcom/chartboost/sdk/impl/o$a;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/o$a;-><init>(Lcom/chartboost/sdk/impl/o;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/o$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/chartboost/sdk/impl/l;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 84
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$e;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/o$d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 337
    if-nez v0, :cond_0

    move v0, v4

    .line 359
    :goto_0
    return v0

    .line 340
    :cond_0
    const/4 v1, 0x0

    .line 342
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 345
    :goto_1
    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/o$e;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 353
    if-eqz v2, :cond_1

    .line 354
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 348
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :cond_2
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 349
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 353
    :goto_3
    if-eqz v0, :cond_3

    .line 354
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    move v0, v4

    .line 359
    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    .line 353
    :goto_5
    if-eqz v1, :cond_4

    .line 354
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 358
    :cond_4
    :goto_6
    throw v0

    .line 355
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 351
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 349
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o$d;->a()V

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a;->a()V

    .line 66
    return-void
.end method
