.class public Lcom/dolphin/browser/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Lcom/dolphin/browser/downloads/l;

.field private c:Lcom/dolphin/browser/downloads/f;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/downloads/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/dolphin/browser/downloads/m;

.field private f:Z

.field private g:Landroid/media/MediaScannerConnection;

.field private h:Z

.field private i:Landroid/database/CharArrayBuffer;

.field private j:Landroid/database/CharArrayBuffer;

.field private volatile k:Z

.field private l:Landroid/app/PendingIntent;

.field private m:Ljava/util/concurrent/ExecutorService;

.field private n:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 151
    new-instance v0, Lcom/dolphin/browser/downloads/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/downloads/j;-><init>(Lcom/dolphin/browser/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->n:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 250
    new-instance v0, Lcom/dolphin/browser/downloads/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/downloads/k;-><init>(Lcom/dolphin/browser/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->a:Landroid/content/BroadcastReceiver;

    .line 321
    return-void
.end method

.method private a(IJ)J
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    .line 933
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/e;

    .line 934
    iget v3, v0, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v3}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    const-wide/16 v0, -0x1

    .line 947
    :goto_0
    return-wide v0

    .line 937
    :cond_0
    iget v3, v0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v4, 0xc1

    if-eq v3, v4, :cond_1

    move-wide v0, v1

    .line 938
    goto :goto_0

    .line 940
    :cond_1
    iget v3, v0, Lcom/dolphin/browser/downloads/e;->j:I

    if-nez v3, :cond_2

    move-wide v0, v1

    .line 941
    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/e;->a()J

    move-result-wide v3

    .line 944
    cmp-long v0, v3, p2

    if-gtz v0, :cond_3

    move-wide v0, v1

    .line 945
    goto :goto_0

    .line 947
    :cond_3
    sub-long v0, v3, p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;IJ)J
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/downloads/DownloadService;->a(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/downloads/DownloadService;->l:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/downloads/DownloadService;->i:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Lcom/dolphin/browser/downloads/m;)Lcom/dolphin/browser/downloads/m;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/downloads/DownloadService;->e:Lcom/dolphin/browser/downloads/m;

    return-object p1
.end method

.method private a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 881
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 882
    if-nez p1, :cond_1

    .line 883
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 904
    :cond_0
    :goto_0
    return-object p1

    .line 885
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->j:Landroid/database/CharArrayBuffer;

    if-nez v1, :cond_2

    .line 886
    new-instance v1, Landroid/database/CharArrayBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->j:Landroid/database/CharArrayBuffer;

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->j:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 889
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->j:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 890
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 891
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 893
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->i:Landroid/database/CharArrayBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->i:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v0, v1, :cond_5

    .line 894
    :cond_4
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->i:Landroid/database/CharArrayBuffer;

    .line 896
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->i:Landroid/database/CharArrayBuffer;

    iget-object v2, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 897
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->j:Landroid/database/CharArrayBuffer;

    iget-object v3, v0, Landroid/database/CharArrayBuffer;->data:[C

    .line 898
    invoke-virtual {p1, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 899
    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_0

    .line 900
    aget-char v4, v2, v0

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_6

    .line 901
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 899
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static a()Ljava/util/concurrent/ExecutorService;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/o;->d()I

    move-result v1

    .line 114
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 120
    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/e;

    .line 912
    iget v1, v0, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 913
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->i:I

    .line 920
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->c:Lcom/dolphin/browser/downloads/f;

    iget-object v1, v1, Lcom/dolphin/browser/downloads/f;->b:Landroid/app/NotificationManager;

    iget v0, v0, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 922
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 923
    return-void

    .line 914
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 916
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    const-string v1, "delete file failed"

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->e(Landroid/content/ContentResolver;)I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/dolphin/browser/downloads/o;->f()Lcom/dolphin/browser/downloads/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/downloads/o;->a(Landroid/content/Context;)V

    .line 221
    :cond_0
    return-void
.end method

.method private a(Landroid/database/Cursor;IZZJ)V
    .locals 31

    .prologue
    .line 661
    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 662
    const-string v2, "numfailed"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 663
    const-string v2, "method"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 665
    new-instance v2, Lcom/dolphin/browser/downloads/e;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "no_integrity"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    const-string v6, "hint"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mimetype"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "destination"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "visibility"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "control"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const v14, 0xfffffff

    and-int/2addr v14, v15

    shr-int/lit8 v15, v15, 0x1c

    const-string v16, "lastmod"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-string v18, "notificationpackage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "notificationclass"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "notificationextras"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "cookiedata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "useragent"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v23, "referer"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string v24, "total_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v25, "current_bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v26, "etag"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "scanned"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 v27, 0x1

    :goto_1
    const-string v28, "support_byte_range"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v28, 0x1

    :goto_2
    const-string v29, "is_private_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    const/16 v29, 0x1

    :goto_3
    const-string v30, "download_dir"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v2 .. v30}, Lcom/dolphin/browser/downloads/e;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZZLjava/lang/String;)V

    .line 696
    sget-boolean v3, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v3, :cond_0

    .line 697
    const-string v3, "DownloadManager"

    const-string v4, "Service adding new entry"

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID      : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v4, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI     : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v2, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, "yes"

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO_INTEG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/dolphin/browser/downloads/e;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HINT    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FILENAME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIMETYPE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DESTINAT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VISIBILI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONTROL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FAILED_C: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RETRY_AF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REDIRECT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->l:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LAST_MOD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/dolphin/browser/downloads/e;->m:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PACKAGE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLASS   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v4, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COOKIES : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v2, Lcom/dolphin/browser/downloads/e;->q:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v3, "yes"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AGENT   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v4, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REFERER : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v2, Lcom/dolphin/browser/downloads/e;->s:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v3, "yes"

    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOTAL   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CURRENT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ETAG    : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/dolphin/browser/downloads/e;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCANNED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/dolphin/browser/downloads/e;->w:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BYTE_RAN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/dolphin/browser/downloads/e;->x:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIVATE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/dolphin/browser/downloads/e;->y:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 766
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/downloads/e;->a(ZZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 767
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/dolphin/browser/downloads/e;->a(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 768
    sget-boolean v3, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v3, :cond_1

    .line 769
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service spawning thread to handle new download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1
    iget-boolean v3, v2, Lcom/dolphin/browser/downloads/e;->B:Z

    if-eqz v3, :cond_9

    .line 773
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Multiple threads on same download on insert"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 665
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 699
    :cond_6
    const-string v3, "no"

    goto/16 :goto_4

    .line 714
    :cond_7
    const-string v3, "no"

    goto/16 :goto_5

    .line 716
    :cond_8
    const-string v3, "no"

    goto/16 :goto_6

    .line 775
    :cond_9
    iget v3, v2, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_a

    .line 776
    const/16 v3, 0xc0

    iput v3, v2, Lcom/dolphin/browser/downloads/e;->i:I

    .line 777
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 778
    const-string v4, "status"

    iget v5, v2, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget v6, v2, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    :cond_a
    new-instance v3, Lcom/dolphin/browser/downloads/p;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lcom/dolphin/browser/downloads/p;-><init>(Landroid/content/Context;Lcom/dolphin/browser/downloads/e;)V

    .line 784
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/downloads/DownloadService;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 797
    :cond_b
    :goto_7
    return-void

    .line 788
    :cond_c
    iget v3, v2, Lcom/dolphin/browser/downloads/e;->i:I

    if-eqz v3, :cond_d

    iget v3, v2, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v4, 0xbe

    if-eq v3, v4, :cond_d

    iget v3, v2, Lcom/dolphin/browser/downloads/e;->i:I

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_b

    .line 790
    :cond_d
    const/16 v3, 0xc1

    iput v3, v2, Lcom/dolphin/browser/downloads/e;->i:I

    .line 791
    sget-object v3, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget v2, v2, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 792
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 793
    const-string v4, "status"

    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadService;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/browser/downloads/DownloadService;->a(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method private a(Landroid/database/Cursor;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 980
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/e;

    .line 981
    monitor-enter p0

    .line 982
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 984
    :try_start_1
    sget-boolean v2, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v2, :cond_0

    .line 985
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scanning file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/downloads/DownloadService;->g:Landroid/media/MediaScannerConnection;

    iget-object v3, v0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    if-eqz p1, :cond_1

    .line 989
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 990
    const-string v2, "scanned"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    :cond_1
    :try_start_2
    monitor-exit p0

    move v0, v1

    .line 1007
    :goto_0
    return v0

    .line 999
    :catch_0
    move-exception v0

    .line 1006
    :cond_2
    monitor-exit p0

    .line 1007
    const/4 v0, 0x0

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;I)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadService;->c(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;I)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/downloads/DownloadService;->a(Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/downloads/DownloadService;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolphin/browser/downloads/DownloadService;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/dolphin/browser/downloads/DownloadService;->j:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic b(Lcom/dolphin/browser/downloads/DownloadService;)Lcom/dolphin/browser/downloads/m;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->e:Lcom/dolphin/browser/downloads/m;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 212
    invoke-static {p0}, Lcom/dolphin/browser/util/bt;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->p:Ljava/lang/String;

    .line 213
    invoke-static {p0}, Lcom/dolphin/browser/util/bt;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->o:Z

    .line 214
    return-void
.end method

.method private b(Landroid/database/Cursor;IZZJ)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 804
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/e;

    .line 805
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 806
    const-string v1, "numfailed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 807
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->a:I

    .line 808
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    const-string v6, "uri"

    invoke-direct {p0, v1, p1, v6}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->b:Ljava/lang/String;

    .line 809
    const-string v1, "no_integrity"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/dolphin/browser/downloads/e;->c:Z

    .line 811
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->d:Ljava/lang/String;

    const-string v6, "hint"

    invoke-direct {p0, v1, p1, v6}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->d:Ljava/lang/String;

    .line 812
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    const-string v6, "_data"

    invoke-direct {p0, v1, p1, v6}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->e:Ljava/lang/String;

    .line 813
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    const-string v6, "mimetype"

    invoke-direct {p0, v1, p1, v6}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    .line 814
    const-string v1, "destination"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/downloads/e;->a(I)V

    .line 816
    const-string v1, "visibility"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 818
    iget v6, v0, Lcom/dolphin/browser/downloads/e;->g:I

    if-ne v6, v2, :cond_0

    if-eq v1, v2, :cond_0

    iget v6, v0, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v6}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 821
    iget-object v6, p0, Lcom/dolphin/browser/downloads/DownloadService;->c:Lcom/dolphin/browser/downloads/f;

    iget-object v6, v6, Lcom/dolphin/browser/downloads/f;->b:Landroid/app/NotificationManager;

    iget v7, v0, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 823
    :cond_0
    iput v1, v0, Lcom/dolphin/browser/downloads/e;->g:I

    .line 824
    monitor-enter v0

    .line 825
    :try_start_0
    const-string v1, "control"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->h:I

    .line 826
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 828
    iget v4, v0, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v4}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 829
    iget-object v4, p0, Lcom/dolphin/browser/downloads/DownloadService;->c:Lcom/dolphin/browser/downloads/f;

    iget-object v4, v4, Lcom/dolphin/browser/downloads/f;->b:Landroid/app/NotificationManager;

    iget v6, v0, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v4, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 831
    :cond_1
    iput v1, v0, Lcom/dolphin/browser/downloads/e;->i:I

    .line 832
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->j:I

    .line 833
    const-string v1, "method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 835
    const v4, 0xfffffff

    and-int/2addr v4, v1

    iput v4, v0, Lcom/dolphin/browser/downloads/e;->k:I

    .line 836
    shr-int/lit8 v1, v1, 0x1c

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->l:I

    .line 837
    const-string v1, "lastmod"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/dolphin/browser/downloads/e;->m:J

    .line 839
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->n:Ljava/lang/String;

    const-string v4, "notificationpackage"

    invoke-direct {p0, v1, p1, v4}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->n:Ljava/lang/String;

    .line 841
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->o:Ljava/lang/String;

    const-string v4, "notificationclass"

    invoke-direct {p0, v1, p1, v4}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->o:Ljava/lang/String;

    .line 842
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->q:Ljava/lang/String;

    const-string v4, "cookiedata"

    invoke-direct {p0, v1, p1, v4}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->q:Ljava/lang/String;

    .line 843
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->r:Ljava/lang/String;

    const-string v4, "useragent"

    invoke-direct {p0, v1, p1, v4}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->r:Ljava/lang/String;

    .line 844
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->s:Ljava/lang/String;

    const-string v4, "referer"

    invoke-direct {p0, v1, p1, v4}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->s:Ljava/lang/String;

    .line 845
    const-string v1, "total_bytes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->t:I

    .line 847
    const-string v1, "current_bytes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->u:I

    .line 849
    iget-object v1, v0, Lcom/dolphin/browser/downloads/e;->v:Ljava/lang/String;

    const-string v4, "etag"

    invoke-direct {p0, v1, p1, v4}, Lcom/dolphin/browser/downloads/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/downloads/e;->v:Ljava/lang/String;

    .line 850
    const-string v1, "scanned"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/dolphin/browser/downloads/e;->w:Z

    .line 851
    const-string v1, "support_byte_range"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/dolphin/browser/downloads/e;->x:Z

    .line 852
    const-string v1, "is_private_mode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v3, v2

    :cond_2
    iput-boolean v3, v0, Lcom/dolphin/browser/downloads/e;->y:Z

    .line 854
    invoke-virtual {v0, p3, p4}, Lcom/dolphin/browser/downloads/e;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 855
    invoke-virtual {v0, p5, p6}, Lcom/dolphin/browser/downloads/e;->b(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 856
    sget-boolean v1, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v1, :cond_3

    .line 857
    const-string v1, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service spawning thread to handle updated download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/dolphin/browser/downloads/e;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_3
    iget-boolean v1, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    if-eqz v1, :cond_7

    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple threads on same download on update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v1, v3

    .line 809
    goto/16 :goto_0

    .line 826
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    move v1, v3

    .line 850
    goto :goto_1

    :cond_6
    move v1, v3

    .line 851
    goto :goto_2

    .line 863
    :cond_7
    const/16 v1, 0xc0

    iput v1, v0, Lcom/dolphin/browser/downloads/e;->i:I

    .line 864
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 865
    const-string v3, "status"

    iget v4, v0, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 866
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    iget v5, v0, Lcom/dolphin/browser/downloads/e;->a:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 869
    new-instance v1, Lcom/dolphin/browser/downloads/p;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/downloads/p;-><init>(Landroid/content/Context;Lcom/dolphin/browser/downloads/e;)V

    .line 870
    iput-boolean v2, v0, Lcom/dolphin/browser/downloads/e;->B:Z

    .line 871
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 874
    :cond_8
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/downloads/DownloadService;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadService;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/dolphin/browser/downloads/DownloadService;->b(Landroid/database/Cursor;IZZJ)V

    return-void
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/e;

    .line 955
    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/e;->b()Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 226
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 230
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 228
    goto :goto_0

    :cond_1
    move v0, v2

    .line 230
    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/downloads/DownloadService;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/dolphin/browser/downloads/DownloadService;->f:Z

    return p1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    .line 313
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->f:Z

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->e:Lcom/dolphin/browser/downloads/m;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/dolphin/browser/downloads/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/downloads/m;-><init>(Lcom/dolphin/browser/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->e:Lcom/dolphin/browser/downloads/m;

    .line 316
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->e:Lcom/dolphin/browser/downloads/m;

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/m;->start()V

    .line 318
    :cond_0
    monitor-exit p0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 235
    invoke-static {p1}, Lcom/dolphin/browser/util/bt;->a(Landroid/content/Context;)Z

    move-result v0

    .line 236
    invoke-static {p1}, Lcom/dolphin/browser/util/bt;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/dolphin/browser/downloads/DownloadService;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/dolphin/browser/downloads/DownloadService;->o:Z

    if-eq v0, v2, :cond_1

    .line 240
    :cond_0
    iput-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->p:Ljava/lang/String;

    .line 241
    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->o:Z

    .line 242
    invoke-static {p1}, Lcom/dolphin/browser/downloads/DownloadService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadService;->a(Landroid/content/Context;)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->c(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method private c(I)Z
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/downloads/e;

    .line 963
    iget-boolean v1, v0, Lcom/dolphin/browser/downloads/e;->w:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/e;->c()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/dolphin/browser/downloads/e;->i:I

    invoke-static {v1}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "application/vnd.oma.drm.message"

    iget-object v0, v0, Lcom/dolphin/browser/downloads/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/downloads/DownloadService;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/dolphin/browser/downloads/DownloadService;I)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/dolphin/browser/downloads/DownloadService;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/downloads/DownloadService;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->l:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 560
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 561
    if-nez v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 567
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 568
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lost+found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 567
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    :cond_3
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recovery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 574
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 579
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 582
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 588
    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 589
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 590
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    sget-boolean v3, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v3, :cond_8

    .line 592
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting spurious file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 595
    const-string v0, "delete file failed"

    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 599
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_9

    .line 601
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 604
    :cond_9
    :goto_5
    throw v0

    .line 599
    :cond_a
    if-eqz v1, :cond_0

    .line 601
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 602
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_5

    .line 599
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4
.end method

.method static synthetic e(Lcom/dolphin/browser/downloads/DownloadService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 616
    .line 618
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 621
    if-nez v1, :cond_1

    .line 625
    :try_start_1
    const-string v0, "DownloadManager"

    const-string v2, "null cursor in trimDatabase"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 643
    if-eqz v1, :cond_0

    .line 645
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    .line 630
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 631
    :goto_1
    if-lez v0, :cond_2

    .line 632
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 635
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 643
    :cond_2
    if-eqz v1, :cond_0

    .line 645
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    goto :goto_0

    .line 638
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 643
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_4

    .line 645
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 648
    :cond_4
    :goto_3
    throw v0

    .line 646
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 643
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->g:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/downloads/DownloadService;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/dolphin/browser/downloads/DownloadService;)Lcom/dolphin/browser/downloads/f;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->c:Lcom/dolphin/browser/downloads/f;

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/downloads/DownloadService;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/dolphin/browser/downloads/DownloadService;)Landroid/media/MediaScannerConnection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->g:Landroid/media/MediaScannerConnection;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 186
    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->d:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lcom/dolphin/browser/downloads/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/downloads/l;-><init>(Lcom/dolphin/browser/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->b:Lcom/dolphin/browser/downloads/l;

    .line 191
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/downloads/DownloadService;->b:Lcom/dolphin/browser/downloads/l;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->h:Z

    .line 194
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->n:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->g:Landroid/media/MediaScannerConnection;

    .line 196
    new-instance v0, Lcom/dolphin/browser/downloads/f;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/downloads/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->c:Lcom/dolphin/browser/downloads/f;

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->c:Lcom/dolphin/browser/downloads/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/downloads/f;->a()V

    .line 198
    invoke-static {}, Lcom/dolphin/browser/downloads/DownloadService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->m:Ljava/util/concurrent/ExecutorService;

    .line 199
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->e()V

    .line 200
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->d()V

    .line 201
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->c()V

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/downloads/DownloadService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->b()V

    .line 206
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->b:Lcom/dolphin/browser/downloads/l;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/downloads/DownloadService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->m:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 294
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 296
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->k:Z

    if-eqz v0, :cond_2

    .line 297
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service onDestroy, mKillProcessRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dolphin/browser/downloads/DownloadService;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 301
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 302
    iget-object v1, p0, Lcom/dolphin/browser/downloads/DownloadService;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 304
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 306
    :cond_2
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 271
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->b:Z

    if-eqz v0, :cond_0

    .line 272
    const-string v0, "DownloadManager"

    const-string v1, "Service onStart"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    if-eqz p1, :cond_1

    .line 275
    const-string v0, "android.intent.action.KILL_DOWNLOAD_PROCESS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->k:Z

    .line 277
    :cond_1
    sget-boolean v0, Lcom/dolphin/browser/downloads/a;->a:Z

    if-eqz v0, :cond_2

    .line 278
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service stopSelf, mKillProcessRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/dolphin/browser/downloads/DownloadService;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/downloads/DownloadService;->k:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/dolphin/browser/downloads/DownloadService;->stopSelf()V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_3
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/DownloadService;->c()V

    goto :goto_0
.end method
