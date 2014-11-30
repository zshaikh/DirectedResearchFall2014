.class public Lcom/dolphin/browser/downloads/v;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field public static final a:Ljava/util/Random;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/dolphin/browser/downloads/v;->a:Ljava/util/Random;

    .line 54
    const-string v0, "filename\\s*=\\s*\"?([^\";]*)\"?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/downloads/v;->b:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "\\p{C}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/downloads/v;->c:Ljava/util/regex/Pattern;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GBK"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Big5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ShiftJIS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/downloads/v;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/dolphin/browser/downloads/d;
    .locals 11

    .prologue
    .line 182
    invoke-static {p1, p2, p3, p4}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 187
    if-gez v3, :cond_0

    .line 188
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 201
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/downloads/o;->c()Ljava/io/File;

    move-result-object v3

    .line 208
    :goto_1
    if-nez v3, :cond_2

    .line 209
    new-instance v1, Lcom/dolphin/browser/downloads/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/downloads/d;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    .line 256
    :goto_2
    return-object v1

    .line 191
    :cond_0
    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 192
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 206
    :cond_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p8

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_3

    .line 213
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download aborted - can\'t create base directory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v1, Lcom/dolphin/browser/downloads/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/downloads/d;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_2

    .line 218
    :cond_3
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v7, v4

    const-wide/16 v9, 0x4

    sub-long/2addr v7, v9

    mul-long v4, v5, v7

    move/from16 v0, p7

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 234
    const-string v1, "DownloadManager"

    const-string v2, "download aborted - not enough free space"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v1, Lcom/dolphin/browser/downloads/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/downloads/d;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto :goto_2

    .line 222
    :cond_4
    const-string v1, "DownloadManager"

    const-string v2, "download aborted - no external storage"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Lcom/dolphin/browser/downloads/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/downloads/d;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_2

    .line 241
    :cond_5
    const-string v4, "recovery"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    sget-boolean v3, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v3, :cond_6

    .line 249
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_6
    move/from16 v0, p6

    invoke-static {v0, v2, v1, v4}, Lcom/dolphin/browser/downloads/v;->a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_7

    .line 254
    new-instance v1, Lcom/dolphin/browser/downloads/d;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/downloads/d;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_2

    .line 256
    :cond_7
    new-instance v1, Lcom/dolphin/browser/downloads/d;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1ec

    invoke-direct {v1, v2, v3, v4}, Lcom/dolphin/browser/downloads/d;-><init>(Ljava/lang/String;Ljava/io/FileOutputStream;I)V

    goto/16 :goto_2
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-object v0

    .line 419
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 432
    :goto_1
    const v0, 0x3b9aca00

    if-ge v3, v0, :cond_4

    .line 433
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_2
    const/16 v0, 0x9

    if-ge v1, v0, :cond_3

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_2

    .line 439
    const-string v0, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file with sequence number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_2
    sget-object v0, Lcom/dolphin/browser/downloads/v;->a:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 433
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 432
    :cond_3
    mul-int/lit8 v0, v3, 0xa

    move v3, v0

    move v1, v2

    goto :goto_1

    .line 444
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    if-eqz p0, :cond_1

    const-string v1, ".bin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 387
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_4

    .line 392
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_1

    .line 393
    const-string v1, "DownloadManager"

    const-string v2, "substituting extension from type"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 403
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_2

    .line 404
    const-string v0, "DownloadManager"

    const-string v1, "keeping extension"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_3
    return-object v0

    .line 396
    :cond_4
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_1

    .line 397
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 843
    invoke-static {p0, v0, p1, v0}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 849
    if-gez v2, :cond_0

    .line 850
    invoke-static {p2, v3}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 857
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :cond_0
    invoke-static {p2, v1, v2}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 264
    const/4 v1, 0x0

    .line 266
    invoke-static {p1}, Lcom/dolphin/browser/downloads/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 270
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "DownloadManager"

    const-string v2, "getting filename from hint"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 274
    if-lez v1, :cond_1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 284
    invoke-static {p2}, Lcom/dolphin/browser/downloads/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_3

    .line 286
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_2

    .line 287
    const-string v1, "DownloadManager"

    const-string v2, "getting filename from content-disposition"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 290
    if-lez v1, :cond_3

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_3
    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 298
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/dolphin/browser/downloads/v;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/downloads/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_4
    if-nez v0, :cond_5

    .line 304
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/downloads/v;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/downloads/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 310
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_6

    .line 311
    const-string v0, "DownloadManager"

    const-string v1, "using default filename"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_6
    const-string v0, "downloadfile"

    .line 324
    :cond_7
    :goto_1
    const-string v1, "[/\\\\:*?\"<>|]+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    return-object v0

    .line 314
    :cond_8
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_7

    .line 316
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_9

    .line 317
    const-string v1, "DownloadManager"

    const-string v2, "using default filename as main filename"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadfile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    if-eqz p0, :cond_1

    .line 343
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_5

    .line 345
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "DownloadManager"

    const-string v2, "adding extension from type"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 356
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 357
    const-string v1, "text/html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 358
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_2

    .line 359
    const-string v0, "DownloadManager"

    const-string v1, "adding default html extension"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_2
    const-string v0, ".html"

    .line 375
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 376
    const-string v0, ""

    .line 378
    :cond_4
    return-object v0

    .line 350
    :cond_5
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v1, :cond_1

    .line 351
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find extension for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_6
    if-eqz p1, :cond_3

    .line 363
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_7

    .line 364
    const-string v0, "DownloadManager"

    const-string v1, "adding default text extension"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_7
    const-string v0, ".txt"

    goto :goto_1

    .line 368
    :cond_8
    if-eqz p1, :cond_3

    .line 369
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_9

    .line 370
    const-string v0, "DownloadManager"

    const-string v1, "adding default binary extension"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_9
    const-string v0, ".bin"

    goto :goto_1
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 937
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 938
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 498
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 500
    if-nez v0, :cond_2

    .line 501
    const-string v0, "DownloadManager"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_1

    .line 516
    const-string v0, "DownloadManager"

    const-string v2, "network is not available"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    :goto_0
    return v1

    .line 503
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 504
    if-eqz v2, :cond_0

    move v0, v1

    .line 505
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 506
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 507
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_3

    .line 508
    const-string v0, "DownloadManager"

    const-string v1, "network is available"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 505
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final a(Landroid/content/Context;J)Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const-string v3, "( status = \'200\' AND destination = \'2\' )"

    const-string v5, "lastmod"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 460
    if-nez v2, :cond_0

    .line 491
    :goto_0
    return v6

    .line 465
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-wide v0, v7

    .line 466
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    cmp-long v3, v0, p1

    if-gez v3, :cond_3

    .line 467
    new-instance v3, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    sget-boolean v4, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v4, :cond_1

    .line 469
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "purging "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " bytes"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 474
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 475
    const-string v3, "delete file failed"

    invoke-static {v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    .line 477
    :cond_2
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v9, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-static {v9, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v4, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 483
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 485
    sget-boolean v2, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v2, :cond_4

    .line 486
    cmp-long v2, v0, v7

    if-lez v2, :cond_4

    .line 487
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purged files, freed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_4
    cmp-long v0, v0, v7

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v6, v0

    goto/16 :goto_0

    :cond_5
    move v0, v6

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 913
    if-nez p0, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v0

    .line 917
    :cond_1
    if-eqz p1, :cond_0

    .line 922
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v2

    move v1, v0

    .line 923
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 924
    aget-byte v3, v2, v1

    if-gez v3, :cond_2

    .line 925
    aget-byte v3, v2, v1

    add-int/lit16 v3, v3, 0x100

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 923
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 928
    :cond_3
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    const/4 v0, 0x1

    goto :goto_0

    .line 930
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 76
    const-string v1, "downloads.Helpers"

    const-string v3, "Encoding check [%s]: \'%s\' vs \'%s\'."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const-string v1, "downloads.Helpers"

    const-string v2, "Encoding check [%s]: unsupported."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 862
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    const-string p0, ""

    .line 888
    :cond_0
    :goto_0
    return-object p0

    .line 867
    :cond_1
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 868
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 870
    const-string v0, "GBK"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 873
    :cond_2
    const-string v0, "GBK"

    .line 874
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 875
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 876
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 879
    :cond_3
    const-string v0, "GB2312"

    .line 880
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 882
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object p0

    .line 100
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_4

    .line 101
    invoke-static {p0}, Lcom/dolphin/browser/downloads/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/dolphin/browser/downloads/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    const-string v0, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    if-nez p1, :cond_3

    .line 119
    :try_start_0
    const-string p1, "ISO-8859-1"

    .line 121
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 122
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 123
    const-string v2, "downloads.Helpers"

    const-string v3, "Fixing encoding: \'%s\' -> \'%s\' (%s)."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 124
    goto :goto_0

    .line 103
    :cond_4
    sget-object v0, Lcom/dolphin/browser/downloads/v;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-static {p0}, Lcom/dolphin/browser/downloads/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 892
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_3

    .line 894
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 896
    if-lez v1, :cond_0

    .line 897
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 899
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 900
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 901
    if-lez v1, :cond_2

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 908
    :cond_1
    :goto_0
    return-object v0

    .line 903
    :cond_2
    if-nez p1, :cond_1

    .line 908
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 525
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 527
    if-nez v0, :cond_1

    .line 528
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 530
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_4

    .line 532
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 534
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_2

    .line 536
    const-string v0, "DownloadManager"

    const-string v1, "network is roaming"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 540
    :cond_3
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 541
    const-string v0, "DownloadManager"

    const-string v1, "network is not roaming"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 545
    :cond_4
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "DownloadManager"

    const-string v1, "not using mobile network"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 957
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 959
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 960
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 961
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 965
    :cond_0
    :goto_0
    return-object v0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    sget-object v4, Lcom/dolphin/browser/downloads/v;->d:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 87
    invoke-static {p0, v0}, Lcom/dolphin/browser/downloads/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    :goto_1
    const-string v1, "downloads.Helpers"

    const-string v2, "Best encoding for \'%s\': %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-static {v1, v2, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    return-object v0

    .line 86
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 132
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 133
    const-string v1, "downloads.Helpers"

    const-string v2, "Found non-printable unicode characters in \'%s\', fix it with UTF-8 to \'%s\'."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 138
    :goto_0
    return-object p0

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 150
    .line 151
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/downloads/v;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 161
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v2, v0}, Lcom/dolphin/browser/downloads/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    const-string v0, "utf-8"

    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 172
    :cond_0
    :goto_1
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v4

    .line 164
    :try_start_2
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 172
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method
