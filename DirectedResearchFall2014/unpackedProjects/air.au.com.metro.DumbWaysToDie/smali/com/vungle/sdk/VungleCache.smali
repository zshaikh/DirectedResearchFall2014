.class public Lcom/vungle/sdk/VungleCache;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/VungleCache$c;,
        Lcom/vungle/sdk/VungleCache$a;,
        Lcom/vungle/sdk/VungleCache$b;,
        Lcom/vungle/sdk/VungleCache$d;
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/sdk/VungleCache$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vungle/sdk/VungleCache$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/sdk/VungleCache$d;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/high16 v1, -0x8000

    const/4 v10, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    .line 40
    iput-wide v1, p0, Lcom/vungle/sdk/VungleCache;->c:J

    .line 44
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    .line 47
    iput-object v10, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    .line 48
    iput-wide v1, p0, Lcom/vungle/sdk/VungleCache;->f:J

    .line 392
    invoke-static {}, Lcom/vungle/sdk/VungleCache;->b()Ljava/lang/String;

    move-result-object v0

    .line 393
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/vungle/sdk/VungleCache$d;

    invoke-direct {v0}, Lcom/vungle/sdk/VungleCache$d;-><init>()V

    throw v0

    .line 397
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    const-string v0, "Cache"

    const-string v1, "Failed to create cache directory structure."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 409
    if-eqz v1, :cond_6

    .line 410
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 411
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 414
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vungle/sdk/VungleCache;->d(Ljava/lang/String;)Lcom/vungle/sdk/VungleCache$b;

    move-result-object v4

    .line 415
    if-eqz v4, :cond_2

    .line 416
    iget-object v5, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 419
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "last_request"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 426
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 430
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_3

    .line 440
    :catch_0
    move-exception v6

    :goto_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 442
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    .line 443
    const-wide/high16 v5, -0x8000

    iput-wide v5, p0, Lcom/vungle/sdk/VungleCache;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 455
    if-eqz v4, :cond_2

    .line 456
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 460
    :catch_1
    move-exception v4

    goto :goto_2

    .line 433
    :cond_4
    :try_start_4
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/vungle/sdk/VungleCache;->f:J

    .line 434
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lastRequest = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 455
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 460
    :catch_2
    move-exception v4

    goto :goto_2

    .line 448
    :catch_3
    move-exception v4

    move-object v4, v10

    :goto_5
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 450
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    .line 451
    const-wide/high16 v5, -0x8000

    iput-wide v5, p0, Lcom/vungle/sdk/VungleCache;->f:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 455
    if-eqz v4, :cond_2

    .line 456
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 460
    :catch_4
    move-exception v4

    goto :goto_2

    .line 454
    :catchall_0
    move-exception v0

    move-object v1, v10

    .line 455
    :goto_6
    if-eqz v1, :cond_5

    .line 456
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 460
    :cond_5
    :goto_7
    throw v0

    .line 471
    :cond_6
    invoke-direct {p0}, Lcom/vungle/sdk/VungleCache;->f()V

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto :goto_7

    .line 454
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_6

    .line 448
    :catch_6
    move-exception v6

    goto :goto_5

    .line 440
    :catch_7
    move-exception v4

    move-object v4, v10

    goto :goto_4
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;)Lcom/vungle/sdk/VungleCache$b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vungle/sdk/VungleCache;->d(Ljava/lang/String;)Lcom/vungle/sdk/VungleCache$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleCache;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/sdk/VungleCache$b;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/vungle/sdk/VungleCache;->c(Lcom/vungle/sdk/VungleCache$b;)V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 55
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 82
    .line 83
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 87
    invoke-static {v3}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 95
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/vungle/sdk/VungleCache;)J
    .locals 2
    .parameter

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/vungle/sdk/VungleCache;->c:J

    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "Cache"

    const-string v1, "Cache being initialized before context is set."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".VungleCacheDir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/vungle/sdk/VungleCache$b;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    .line 176
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 254
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".mp4"

    aput-object v2, v1, v5

    const-string v2, ".avi"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, ".3gp"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ".webm"

    aput-object v3, v1, v2

    .line 256
    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 257
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v6

    .line 261
    :goto_1
    return v0

    .line 256
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    .line 261
    goto :goto_1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".htm"

    aput-object v2, v1, v8

    const/4 v2, 0x1

    const-string v3, ".html"

    aput-object v3, v1, v2

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v9

    .line 293
    :goto_0
    return-object v0

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 283
    array-length v2, v0

    move v3, v8

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 284
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 285
    array-length v5, v1

    move v6, v8

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    .line 286
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v4

    .line 287
    goto :goto_0

    .line 285
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 283
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v9

    .line 293
    goto :goto_0
.end method

.method static synthetic c(Lcom/vungle/sdk/VungleCache;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static c(Lcom/vungle/sdk/VungleCache$b;)V
    .locals 3
    .parameter

    .prologue
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- Directory:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- PreRoll:    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- PostRoll:   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- Video:      "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- Expiration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/vungle/sdk/VungleCache$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vungle/sdk/n;->j:Z

    .line 804
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    .line 805
    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/vungle/sdk/VungleCache$b;
    .locals 22
    .parameter

    .prologue
    .line 307
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 308
    const-wide/high16 v7, -0x8000

    .line 311
    new-instance v11, Ljava/io/File;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 315
    invoke-static {v11}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    .line 316
    const/4 v3, 0x0

    .line 384
    :goto_0
    return-object v3

    .line 320
    :cond_0
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 321
    array-length v9, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v5, v5, v9

    .line 324
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 325
    if-eqz v9, :cond_d

    .line 326
    array-length v10, v9

    const/4 v12, 0x0

    move/from16 v17, v12

    move-object v12, v3

    move/from16 v3, v17

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-wide/from16 v20, v7

    move-wide/from16 v6, v20

    move-object/from16 v8, v19

    :goto_1
    if-ge v3, v10, :cond_7

    aget-object v13, v9, v3

    .line 327
    const-string v14, "pre"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 329
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "pre"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vungle/sdk/VungleCache;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 326
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    :cond_2
    const-string v14, "post"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "post"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vungle/sdk/VungleCache;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 335
    :cond_3
    const-string v14, "expire"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 337
    const/4 v14, 0x0

    .line 339
    :try_start_0
    new-instance v15, Ljava/util/Scanner;

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v15 .. v16}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    invoke-virtual {v15}, Ljava/util/Scanner;->hasNextLong()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 346
    invoke-virtual {v15}, Ljava/util/Scanner;->nextLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    .line 354
    :cond_4
    invoke-virtual {v15}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 349
    :catch_0
    move-exception v13

    .line 351
    :goto_3
    :try_start_2
    const-string v15, "Cache"

    const-string v16, "Failed to read expiration value, due to missing value. :/"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    if-eqz v14, :cond_1

    .line 355
    invoke-virtual {v14}, Ljava/util/Scanner;->close()V

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v3

    move-object v4, v14

    :goto_4
    if-eqz v4, :cond_5

    .line 355
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    :cond_5
    throw v3

    .line 358
    :cond_6
    invoke-static {v13}, Lcom/vungle/sdk/VungleCache;->b(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v4, v13

    .line 360
    goto :goto_2

    :cond_7
    move-wide v9, v6

    move-object v6, v4

    move-object v7, v12

    .line 367
    :goto_5
    if-eqz v5, :cond_b

    const-wide/high16 v3, -0x8000

    cmp-long v3, v9, v3

    if-eqz v3, :cond_b

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    if-nez v6, :cond_c

    :cond_8
    if-nez v7, :cond_9

    if-eqz v8, :cond_9

    if-nez v6, :cond_c

    :cond_9
    if-eqz v7, :cond_a

    if-nez v8, :cond_a

    if-eqz v6, :cond_c

    :cond_a
    if-nez v7, :cond_b

    if-eqz v8, :cond_b

    if-eqz v6, :cond_c

    .line 374
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PRE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|POST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|VID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed cache directory detected. Removing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {v11}, Lcom/vungle/sdk/VungleCache;->a(Ljava/io/File;)Z

    .line 379
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 384
    :cond_c
    new-instance v3, Lcom/vungle/sdk/VungleCache$b;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/vungle/sdk/VungleCache$b;-><init>(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 354
    :catchall_1
    move-exception v3

    move-object v4, v15

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v4, v14

    goto :goto_4

    .line 349
    :catch_1
    move-exception v13

    move-object v14, v15

    goto/16 :goto_3

    :cond_d
    move-wide v9, v7

    move-object v8, v4

    move-object v7, v3

    goto :goto_5
.end method

.method static synthetic d(Lcom/vungle/sdk/VungleCache;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/sdk/VungleCache;->f()V

    return-void
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lcom/vungle/sdk/VungleCache;->g()V

    return-void
.end method

.method private f()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v1, v0, v2

    .line 189
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 190
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache$b;

    .line 194
    iget-object v4, p0, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    iget-object v4, v4, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    :cond_1
    iget-wide v4, v0, Lcom/vungle/sdk/VungleCache$b;->b:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing expired campaign: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->b(Lcom/vungle/sdk/VungleCache$b;)V

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xa

    sub-int v3, v0, v3

    .line 208
    if-gtz v3, :cond_4

    .line 242
    :cond_3
    return-void

    :cond_4
    move v4, v12

    .line 212
    :goto_1
    if-ge v4, v3, :cond_3

    .line 214
    const-wide v5, 0x7fffffffffffffffL

    .line 215
    const/4 v0, -0x1

    move-wide v7, v5

    move v6, v0

    move v5, v12

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    .line 219
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache$b;

    iget-wide v9, v0, Lcom/vungle/sdk/VungleCache$b;->b:J

    sub-long v9, v1, v9

    .line 222
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    iget-object v11, v0, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache$b;

    iget-object v0, v0, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    :cond_5
    cmp-long v0, v9, v7

    if-gez v0, :cond_7

    move v0, v5

    move-wide v6, v9

    .line 218
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-wide v13, v6

    move-wide v7, v13

    move v6, v0

    goto :goto_2

    .line 231
    :cond_6
    if-ltz v6, :cond_3

    .line 237
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache$b;

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Removing extra campaign: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->b(Lcom/vungle/sdk/VungleCache$b;)V

    .line 240
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_7
    move v0, v6

    move-wide v13, v7

    move-wide v6, v13

    goto :goto_3
.end method

.method private static g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    const-string v0, "RequestAd"

    const-string v1, "Failed to acquire advert."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    sput-boolean v2, Lcom/vungle/sdk/n;->j:Z

    .line 810
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    .line 811
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/sdk/z;)V
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "Error writing expiration file"

    const-string v9, "Cache"

    .line 684
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/vungle/sdk/n;->j:Z

    .line 685
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->k:Ljava/lang/Boolean;

    .line 687
    iget-object v1, p1, Lcom/vungle/sdk/z;->h:Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 692
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache$b;

    .line 695
    iget-object v3, v0, Lcom/vungle/sdk/VungleCache$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 698
    invoke-virtual {v0}, Lcom/vungle/sdk/VungleCache$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 704
    iget-object v3, p1, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    .line 705
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    :cond_1
    move v3, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    :cond_2
    move v1, v6

    :goto_1
    if-eq v3, v1, :cond_1a

    move v1, v5

    .line 719
    :goto_2
    invoke-virtual {v0}, Lcom/vungle/sdk/VungleCache$b;->c()Ljava/lang/String;

    move-result-object v3

    .line 720
    iget-object v4, p1, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    .line 722
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    :cond_3
    move v3, v6

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    :cond_4
    move v4, v6

    :goto_4
    if-eq v3, v4, :cond_5

    move v1, v5

    .line 729
    :cond_5
    invoke-virtual {v0}, Lcom/vungle/sdk/VungleCache$b;->d()Ljava/lang/String;

    move-result-object v3

    .line 730
    iget-object v4, p1, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    .line 731
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f

    :cond_6
    move v3, v6

    :goto_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    :cond_7
    move v4, v6

    :goto_6
    if-eq v3, v4, :cond_8

    move v1, v5

    .line 739
    :cond_8
    if-nez v1, :cond_11

    .line 740
    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->b(Lcom/vungle/sdk/VungleCache$b;)V

    .line 742
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 788
    :cond_9
    iget-object v0, p1, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/sdk/z;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/vungle/sdk/z;->g:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/vungle/sdk/VungleCache;->c:J

    iget-object v5, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :try_start_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/vungle/sdk/VungleCache;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 794
    :cond_a
    :goto_7
    return-void

    :cond_b
    move v3, v5

    .line 705
    goto/16 :goto_0

    :cond_c
    move v1, v5

    goto :goto_1

    :cond_d
    move v3, v5

    .line 722
    goto :goto_3

    :cond_e
    move v4, v5

    goto :goto_4

    :cond_f
    move v3, v5

    .line 731
    goto :goto_5

    :cond_10
    move v4, v5

    goto :goto_6

    .line 748
    :cond_11
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleCache$b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "expire"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 755
    :try_start_5
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 758
    :try_start_6
    iget-wide v3, p1, Lcom/vungle/sdk/z;->o:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 769
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 777
    :cond_12
    :goto_8
    :try_start_8
    iput-object v0, p0, Lcom/vungle/sdk/VungleCache;->a:Lcom/vungle/sdk/VungleCache$b;

    .line 778
    invoke-static {v0}, Lcom/vungle/sdk/VungleCache;->c(Lcom/vungle/sdk/VungleCache$b;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_7

    .line 790
    :catch_0
    move-exception v0

    .line 791
    const-string v1, "Cache"

    invoke-static {v9, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 792
    invoke-static {}, Lcom/vungle/sdk/VungleCache;->g()V

    goto :goto_7

    .line 762
    :catch_1
    move-exception v1

    move-object v2, v8

    .line 765
    :goto_9
    :try_start_9
    const-string v3, "Cache"

    const-string v4, "Error writing expiration file"

    invoke-static {v3, v4, v1}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 769
    if-eqz v2, :cond_12

    .line 770
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_8

    .line 774
    :catch_2
    move-exception v1

    goto :goto_8

    .line 768
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 769
    :goto_a
    if-eqz v1, :cond_13

    .line 770
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 774
    :cond_13
    :goto_b
    :try_start_c
    throw v0

    .line 788
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_14
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    const-string v7, "expire"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_15
    :try_start_d
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :try_start_e
    iget-wide v7, p1, Lcom/vungle/sdk/z;->o:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :goto_c
    :try_start_10
    new-instance v2, Lcom/vungle/sdk/VungleCache$a;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Lcom/vungle/sdk/VungleCache$a;-><init>(Lcom/vungle/sdk/VungleCache;B)V

    new-instance v6, Lcom/vungle/sdk/VungleCache$c;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v2}, Lcom/vungle/sdk/VungleCache$c;-><init>(Lcom/vungle/sdk/VungleCache;Ljava/lang/String;Lcom/vungle/sdk/VungleCache$a;)V

    iput-object v6, v2, Lcom/vungle/sdk/VungleCache$a;->a:Lcom/vungle/sdk/VungleCache$c;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_17

    new-instance v7, Lcom/vungle/sdk/o;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/vungle/sdk/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lcom/vungle/sdk/o;->a(Lcom/vungle/sdk/o$b;)V

    const-string v0, "pre_"

    invoke-virtual {v7, v0}, Lcom/vungle/sdk/o;->a(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/vungle/sdk/VungleCache$c;->a:Lcom/vungle/sdk/o;

    invoke-virtual {v7}, Lcom/vungle/sdk/o;->a()V

    :goto_d
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    new-instance v0, Lcom/vungle/sdk/o;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v3, v7, v4}, Lcom/vungle/sdk/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/o;->a(Lcom/vungle/sdk/o$b;)V

    iput-object v0, v6, Lcom/vungle/sdk/VungleCache$c;->b:Lcom/vungle/sdk/o;

    invoke-virtual {v0}, Lcom/vungle/sdk/o;->a()V

    :goto_e
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    new-instance v0, Lcom/vungle/sdk/o;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/vungle/sdk/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vungle/sdk/o;->a(Lcom/vungle/sdk/o$b;)V

    const-string v1, "post_"

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/o;->a(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/vungle/sdk/VungleCache$c;->c:Lcom/vungle/sdk/o;

    invoke-virtual {v0}, Lcom/vungle/sdk/o;->a()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v1, v8

    :goto_f
    :try_start_11
    const-string v2, "Cache"

    const-string v3, "Error writing expiration file"

    invoke-static {v2, v3, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache;->d:Ljava/lang/Boolean;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v1, :cond_a

    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v8

    :goto_10
    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :cond_16
    :goto_11
    :try_start_14
    throw v0

    :cond_17
    invoke-virtual {v2}, Lcom/vungle/sdk/VungleCache$a;->a()V

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, Lcom/vungle/sdk/VungleCache$a;->a()V

    goto :goto_e

    :cond_19
    invoke-virtual {v2}, Lcom/vungle/sdk/VungleCache$a;->a()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_7

    .line 774
    :catch_5
    move-exception v1

    goto/16 :goto_8

    :catch_6
    move-exception v1

    goto/16 :goto_b

    .line 788
    :catch_7
    move-exception v2

    goto/16 :goto_c

    :catch_8
    move-exception v1

    goto :goto_11

    :catchall_4
    move-exception v0

    move-object v1, v6

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    move-object v1, v6

    goto :goto_f

    .line 768
    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a

    .line 762
    :catch_a
    move-exception v1

    goto/16 :goto_9

    :cond_1a
    move v1, v6

    goto/16 :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 920
    monitor-enter p0

    const/4 v0, 0x0

    .line 924
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/vungle/sdk/VungleCache;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "last_request"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 943
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 949
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 938
    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 943
    if-eqz v0, :cond_0

    .line 944
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 948
    :catch_1
    move-exception v0

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 943
    :goto_2
    if-eqz v1, :cond_1

    .line 944
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 948
    :cond_1
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 920
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 948
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 942
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 938
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized c()V
    .locals 3

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/vungle/sdk/VungleCache;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_request"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    .line 958
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/vungle/sdk/VungleCache;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    monitor-exit p0

    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 962
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 965
    iget-object v2, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/vungle/sdk/VungleCache;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/vungle/sdk/VungleCache;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    :goto_0
    monitor-exit p0

    return-object v0

    .line 968
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/vungle/sdk/VungleCache;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    const/4 v0, 0x0

    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
