.class public Ldolphin/webkit/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final ADBLOCK_DATA_FILE_SOURCE_REL_PATH:Ljava/lang/String; = "adblock"

.field private static final ADBLOCK_DATA_FILE_TARGET_REL_PATH:Ljava/lang/String; = "adblock"

.field private static final ANDROID_CONTENT:Ljava/lang/String; = "content:"

.field private static final BACKGROUND_DATA_FILE_SOURCE_REL_PATH:Ljava/lang/String; = "background"

.field private static final BACKGROUND_DATA_FILE_TARGET_REL_PATH:Ljava/lang/String; = "background"

.field private static final BUFFER_SIZE:I = 0x10000

.field private static final CONFIG_KEY_CLASSIFY_SVM:I = 0x4

.field private static final CONFIG_KEY_COMMON_TRANS:I = 0x3

.field private static final CONFIG_KEY_DETAIL_EXT:I = 0x1

.field private static final CONFIG_KEY_PREPROCESS:I = 0x2

.field private static final CONFIG_KEY_SLASSIFY_INI:I = 0x5

.field private static final CONFIG_KEY_WHITE_LIST:I = 0x0

.field private static final ENABLE_PRECONNECTION:Z = false

.field private static final LIB_CHROMIUMNET_NAME:Ljava/lang/String; = "dolphinchromium_net"

.field private static final LIB_NAME:Ljava/lang/String; = "dolphinwebcore"

.field private static final LOGTAG:Ljava/lang/String; = "dolphinwebkit"

.field private static final NFS_DATA_FILE_SOURCE_REL_PATH:Ljava/lang/String; = "nfs"

.field private static final NFS_DATA_FILE_TARGET_REL_PATH:Ljava/lang/String; = "../../app_appcache"

.field private static final PLO_DATA_FILE_SOURCE_REL_PATH:Ljava/lang/String; = "plo"

.field private static final PLO_DATA_FILE_TARGET_REL_PATH:Ljava/lang/String; = "plo"

.field private static final TRANSCODE_DATA_FILE_SOURCE_REL_PATH:Ljava/lang/String; = "transcode"

.field private static final TRANSCODE_DATA_FILE_TARGET_REL_PATH:Ljava/lang/String; = "transcode"

.field private static final USE_NATIVE_ZLIB:Z = true

.field private static final sAdBlockDataFiles:[Ljava/lang/String;

.field private static final sBackgroundLoaderDataFiles:[Ljava/lang/String;

.field private static sBitsPerPixel:I

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseDirectory:Ljava/lang/String;

.field private static sEnableDevTools:Ljava/lang/Boolean;

.field private static sICUDataDirectory:Ljava/lang/String;

.field private static sLibraryLoaded:Z

.field private static final sNfsDataFiles:[Ljava/lang/String;

.field private static final sPloDataFiles:[Ljava/lang/String;

.field private static sTranscodeDataDirectory:Ljava/lang/String;

.field private static final sTranscodeDataFiles:[Ljava/lang/String;

.field private static sTranscodeDataIsReady:Ldolphin/webkit/en;

.field private static sUseChromiumHttpStack:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "white_list.ini"

    aput-object v1, v0, v3

    const-string v1, "detail_extractor.ini"

    aput-object v1, v0, v4

    const-string v1, "autopage_extractor.ini"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "preprocess_transcoder.ini"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "common_transcoder.ini"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "list_page_classifier.svm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "list_page_classifier.ini"

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    .line 141
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "abp.txt"

    aput-object v1, v0, v3

    sput-object v0, Ldolphin/webkit/JniUtil;->sAdBlockDataFiles:[Ljava/lang/String;

    .line 145
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "backgroundlist"

    aput-object v1, v0, v3

    sput-object v0, Ldolphin/webkit/JniUtil;->sBackgroundLoaderDataFiles:[Ljava/lang/String;

    .line 149
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "v7"

    aput-object v1, v0, v3

    sput-object v0, Ldolphin/webkit/JniUtil;->sNfsDataFiles:[Ljava/lang/String;

    .line 153
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "r.plo"

    aput-object v1, v0, v3

    const-string v1, "p.plo"

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/webkit/JniUtil;->sPloDataFiles:[Ljava/lang/String;

    .line 198
    :try_start_0
    new-instance v0, Ldolphin/webkit/en;

    invoke-direct {v0}, Ldolphin/webkit/en;-><init>()V

    sput-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataIsReady:Ldolphin/webkit/en;

    .line 207
    const-string v0, "dolphinwebcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x1

    sput-boolean v0, Ldolphin/webkit/JniUtil;->sLibraryLoaded:Z

    .line 215
    invoke-static {}, Ldolphin/webkit/ThreadUtils;->a()V

    .line 218
    invoke-static {}, Ldolphin/util/Log;->getFilterLevel()I

    move-result v0

    invoke-static {v0}, Ldolphin/util/Log;->setFilterLevel(I)V

    .line 220
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->o()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :goto_0
    sput v3, Ldolphin/webkit/JniUtil;->sBitsPerPixel:I

    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "dolphinwebkit"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Ldolphin/webkit/JniUtil;->prepareTranscodeData()V

    return-void
.end method

.method private static canSatisfyMemoryAllocation(J)Z
    .locals 6
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 840
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 841
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 843
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 844
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 845
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v2, v4

    .line 846
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v0, :cond_0

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkInitialized()V
    .locals 2

    .prologue
    .line 247
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call DolphinWebkit::init() before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method private static cleanDeprecatedData(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 370
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    new-instance v2, Ldolphin/webkit/ek;

    invoke-direct {v2, p2}, Ldolphin/webkit/ek;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 381
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 382
    const-string v5, "dolphinwebkit"

    const-string v6, "[JniUtil:cleanDeprecatedData]Deleting deprecated data file %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 383
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method private static cleanExceptKeptData(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 389
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    new-instance v2, Ldolphin/webkit/el;

    invoke-direct {v2, p2}, Ldolphin/webkit/el;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 400
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 401
    const-string v5, "dolphinwebkit"

    const-string v6, "[JniUtil::cleanExceptKeptData]Deleting deprecated data file %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-void
.end method

.method private static declared-synchronized contentUrlSize(Ljava/lang/String;)J
    .locals 10
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v9, -0x1

    const-wide/16 v2, 0x0

    .line 740
    const-class v4, Ldolphin/webkit/JniUtil;

    monitor-enter v4

    :try_start_0
    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    const/16 v0, 0x3f

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 746
    if-eq v0, v9, :cond_0

    .line 747
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 749
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 750
    sget-object v1, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 751
    const/16 v0, 0x400

    new-array v6, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v0, v2

    .line 755
    :goto_0
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eq v7, v9, :cond_1

    .line 756
    int-to-long v7, v7

    add-long/2addr v0, v7

    goto :goto_0

    .line 759
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 767
    :goto_1
    monitor-exit v4

    return-wide v0

    .line 759
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 762
    :catch_0
    move-exception v0

    .line 763
    :try_start_5
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v0, v2

    .line 764
    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 767
    goto :goto_1

    .line 740
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method private static declared-synchronized contentUrlStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 780
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    const-string v2, "content:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    const/16 v2, 0x3f

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 788
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 789
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 791
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 792
    sget-object v3, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 798
    :cond_1
    :goto_0
    monitor-exit v1

    return-object v0

    .line 793
    :catch_0
    move-exception v2

    .line 794
    :try_start_2
    const-string v2, "dolphinwebkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 428
    .line 430
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 431
    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 433
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 434
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    const-string v2, "dolphinwebkit"

    const-string v3, "[JniUtil::copyFile]IOException:"

    invoke-static {v2, v3, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    :goto_1
    return v0

    .line 436
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 437
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static enableDevTools()Z
    .locals 1

    .prologue
    .line 822
    sget-object v0, Ldolphin/webkit/JniUtil;->sEnableDevTools:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 823
    invoke-static {}, Ldolphin/webkit/JniUtil;->nativeEnableDevTools()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/JniUtil;->sEnableDevTools:Ljava/lang/Boolean;

    .line 825
    :cond_0
    sget-object v0, Ldolphin/webkit/JniUtil;->sEnableDevTools:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static findTranscodeConfigKey(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 190
    sget-object v1, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_1
    return v0

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static getAdBlockSourceConfigFileRelPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "adblock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getAutofillQueryUrl()Ljava/lang/String;
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 831
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 834
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "web_autofill_query_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getBackgroundSourceConfigFileRelPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getCacheDirectory()Ljava/lang/String;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 336
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 338
    sget-object v0, Ldolphin/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 339
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 340
    if-nez v0, :cond_1

    .line 341
    const-string v0, ""

    sput-object v0, Ldolphin/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;

    .line 347
    :cond_0
    :goto_0
    sget-object v0, Ldolphin/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 343
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 302
    const-class v0, Ldolphin/webkit/JniUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDatabaseDirectory()Ljava/lang/String;
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 321
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 323
    sget-object v0, Ldolphin/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 324
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    .line 327
    :cond_0
    sget-object v0, Ldolphin/webkit/JniUtil;->sDatabaseDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getNativeLibPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    const-class v0, Ldolphin/webkit/JniUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getNativeLibPath()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getNfsSourceConfigFileRelPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nfs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getPackageName()Ljava/lang/String;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 682
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 684
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPloSourceConfigFileRelPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getResourcePath()Ljava/lang/String;
    .locals 4
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 356
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResourcesPath()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebKitResources.getResourcesPath - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/util/Log;->d(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit v1

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getResourceString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 689
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 691
    const-string v0, "flash_tomast_cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 692
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_cn:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 728
    :goto_0
    monitor-exit v1

    return-object v0

    .line 694
    :cond_0
    :try_start_1
    const-string v0, "flash_tomast_first_jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 695
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_first_jp:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 697
    :cond_1
    const-string v0, "flash_tomast_second_jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 698
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_second_jp:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 700
    :cond_2
    const-string v0, "flash_download_url_jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 701
    sget v0, Ldolphin/webkit/R$string;->flash_download_url_jp:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 703
    :cond_3
    const-string v0, "flash_download_url_en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 704
    sget v0, Ldolphin/webkit/R$string;->flash_download_url_en:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 706
    :cond_4
    const-string v0, "flash_tomast_first_en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 707
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_first_en:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 709
    :cond_5
    const-string v0, "flash_tomast_second_jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 710
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_first_jp:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 712
    :cond_6
    const-string v0, "flash_tomast_second_en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 713
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_second_en:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 715
    :cond_7
    const-string v0, "flash_tomast_kitkat_first_en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 716
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_kitkat_first_en:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_8
    const-string v0, "flash_tomast_kitkat_second_en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 719
    sget v0, Ldolphin/webkit/R$string;->flash_tomast_kitkat_second_en:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 721
    :cond_9
    const-string v0, "flash_download_url_cn_kitkat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    .line 722
    sget v0, Ldolphin/webkit/R$string;->flash_download_url_cn:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 724
    :cond_a
    const-string v0, "flash_download_url_cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 725
    sget v0, Ldolphin/webkit/R$string;->flash_download_url_cn:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 728
    :cond_b
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSourceConfigFileRelPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTargetConfigFileRoot()Ljava/io/File;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    sget-object v1, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTranscodeConfigFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    sget-object v1, Ldolphin/webkit/JniUtil;->sTranscodeDataDirectory:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized getTranscodeDataDir()Ljava/lang/String;
    .locals 7
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 503
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 505
    sget-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 506
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v0

    .line 507
    new-instance v2, Ljava/io/File;

    const-string v3, "transcode"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/io/File;

    sget-object v3, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 509
    const-string v3, "dolphinwebkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transcode: transcodeDataDir - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataDirectory:Ljava/lang/String;

    .line 520
    :cond_0
    :goto_0
    const-string v0, "dolphinwebkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transcode: getTranscodeDataDir() return - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ldolphin/webkit/JniUtil;->sTranscodeDataDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 514
    :cond_1
    :try_start_1
    const-string v2, "dolphinwebkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transcode: transcode data files does not exist when requested! file - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v0, ""

    sput-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataDirectory:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getTranscodeSourceConfigFileRelPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getClientLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "transcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized init()V
    .locals 2

    .prologue
    .line 253
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    monitor-exit v1

    return-void

    .line 257
    :cond_0
    :try_start_1
    invoke-static {}, Ldolphin/webkit/DolphinWebkit;->getWorkingContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/JniUtil;->initializeWithContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initializeWithContext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 279
    const-string v0, "dolphinwebkit"

    const-string v1, "JniUtil.initializeWithContext(Context context)"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    .line 287
    invoke-static {}, Ldolphin/webkit/JniUtil;->prepareTranscodeData()V

    .line 288
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTranscodeDataDir()Ljava/lang/String;

    move-result-object v0

    .line 289
    const-string v1, "dolphinwebkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transcode: data file path initialized - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Ldolphin/webkit/JniUtil;->prepareAdBlockData()V

    .line 295
    invoke-static {}, Ldolphin/webkit/JniUtil;->prepareNfsData()V

    .line 298
    invoke-static {}, Ldolphin/webkit/JniUtil;->preparePloData()V

    goto :goto_0
.end method

.method public static isLibraryLoaded()Z
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Ldolphin/webkit/JniUtil;->sLibraryLoaded:Z

    return v0
.end method

.method private static native nativeEnableDevTools()Z
.end method

.method private static native nativeReloadTranscodeConfig(I)V
.end method

.method private static native nativeSetAdBlockDataDirectory(Ljava/lang/String;)V
.end method

.method private static native nativeSetPloDataDirectory(Ljava/lang/String;)V
.end method

.method private static native nativeSetTranscodeDataDirectory(Ljava/lang/String;)V
.end method

.method private static native nativeUpdatePloData()V
.end method

.method private static preconnectConnection(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 876
    return-void
.end method

.method private static prefetchDNS(Ljava/lang/String;)V
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 853
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 854
    invoke-static {}, Ldolphin/net/b/c;->b()Ldolphin/net/b/c;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 856
    invoke-virtual {v0, p0}, Ldolphin/net/b/c;->b(Ljava/lang/String;)Z

    .line 858
    :cond_0
    return-void
.end method

.method private static prepareAdBlockData()V
    .locals 8

    .prologue
    .line 600
    const-string v0, "dolphinwebkit"

    const-string v1, "[JniUtil::prepareAdBlockData]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 605
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v0

    const-string v1, "adblock"

    sget-object v2, Ldolphin/webkit/JniUtil;->sAdBlockDataFiles:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldolphin/webkit/JniUtil;->cleanExceptKeptData(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V

    .line 608
    sget-object v1, Ldolphin/webkit/JniUtil;->sAdBlockDataFiles:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 609
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v4

    const-string v5, "adblock"

    invoke-static {}, Ldolphin/webkit/JniUtil;->getAdBlockSourceConfigFileRelPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v3, v7}, Ldolphin/webkit/JniUtil;->prepareDataFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 610
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JniUtil::prepareAdBlockData]Failed to prepare adblock data file - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_1
    return-void

    .line 608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 614
    :cond_1
    const-string v0, "dolphinwebkit"

    const-string v1, "[JniUtil::prepareAdBlockData]AdBlock data files are ready"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adblock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/JniUtil;->nativeSetAdBlockDataDirectory(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static prepareBackgroundLoaderData()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 621
    const-string v0, "dolphinwebkit"

    const-string v2, "[JniUtil::prepareBackgroundLoaderData]"

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 626
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v0

    const-string v2, "background"

    sget-object v3, Ldolphin/webkit/JniUtil;->sBackgroundLoaderDataFiles:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Ldolphin/webkit/JniUtil;->cleanExceptKeptData(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V

    .line 629
    sget-object v2, Ldolphin/webkit/JniUtil;->sBackgroundLoaderDataFiles:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 630
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v5

    const-string v6, "background"

    invoke-static {}, Ldolphin/webkit/JniUtil;->getBackgroundSourceConfigFileRelPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v4, v8}, Ldolphin/webkit/JniUtil;->prepareDataFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 631
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JniUtil::prepareBackgroundLoaderData]Failed to prepare Backgroundloader data file - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_1
    return-void

    .line 629
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_1
    const-string v0, "dolphinwebkit"

    const-string v2, "[JniUtil::prepareBackgroundLoaderData]Backgroundloader data files are ready"

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {}, Ldolphin/webkit/j;->a()Ldolphin/webkit/j;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "background"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ldolphin/webkit/JniUtil;->sBackgroundLoaderDataFiles:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/j;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static prepareDataFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 447
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    if-eqz p4, :cond_0

    .line 453
    const-string v1, "dolphinwebkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[JniUtil::prepareDataFile] Data file alredy exists - keep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return v0

    .line 456
    :cond_0
    const-string v3, "dolphinwebkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[JniUtil::prepareDataFile] Data file alredy exists - delete:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 462
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 465
    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".tmp"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    const/4 v2, 0x0

    .line 469
    const-string v6, "dolphinwebkit"

    const-string v7, "[JniUtil::prepareDataFile]Copying %s from asset to target dir..."

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v3, v8, v1

    invoke-static {v6, v7, v8}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 471
    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 472
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 475
    :cond_3
    const-string v7, "dolphinwebkit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[JniUtil::prepareDataFile]Create and copy data file in java - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 477
    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 478
    const-string v6, "dolphinwebkit"

    const-string v7, "[JniUtil::prepareDataFile]Asset %s: %,d bytes."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 479
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldolphin/webkit/JniUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_8

    move v3, v0

    .line 481
    :goto_1
    if-eqz v3, :cond_5

    .line 482
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 483
    const-string v5, "dolphinwebkit"

    const-string v6, "[JniUtil::prepareDataFile]Data file %s: %,d bytes."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    :goto_2
    if-nez v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 492
    :cond_4
    invoke-static {v2}, Ldolphin/webkit/JniUtil;->quiteClose(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 485
    :cond_5
    :try_start_2
    const-string v5, "dolphinwebkit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[JniUtil::prepareDataFile]Failed to copy data file - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 488
    :catch_0
    move-exception v0

    .line 489
    :goto_3
    :try_start_3
    const-string v5, "dolphinwebkit"

    const-string v6, "[JniUtil::prepareDataFile]IOException"

    invoke-static {v5, v6, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 491
    if-nez v3, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 492
    :cond_6
    invoke-static {v2}, Ldolphin/webkit/JniUtil;->quiteClose(Ljava/io/Closeable;)V

    move v0, v1

    .line 493
    goto/16 :goto_0

    .line 491
    :catchall_0
    move-exception v0

    :goto_4
    if-nez v1, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 492
    :cond_7
    invoke-static {v2}, Ldolphin/webkit/JniUtil;->quiteClose(Ljava/io/Closeable;)V

    throw v0

    .line 491
    :catchall_1
    move-exception v0

    move v1, v3

    goto :goto_4

    .line 488
    :catch_1
    move-exception v0

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_1
.end method

.method private static prepareNfsData()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 641
    const-string v0, "dolphinwebkit"

    const-string v2, "[JniUtil::prepareNfsData]"

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 646
    sget-object v2, Ldolphin/webkit/JniUtil;->sNfsDataFiles:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 647
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v5

    const-string v6, "../../app_appcache"

    invoke-static {}, Ldolphin/webkit/JniUtil;->getNfsSourceConfigFileRelPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4, v1}, Ldolphin/webkit/JniUtil;->prepareDataFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 648
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JniUtil::prepareNfsData]Failed to prepare nfs data file - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_1
    return-void

    .line 646
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_1
    const-string v0, "dolphinwebkit"

    const-string v1, "[JniUtil::prepareNfsData]Nfs data files are ready"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static preparePloData()V
    .locals 8

    .prologue
    .line 656
    const-string v0, "dolphinwebkit"

    const-string v1, "[JniUtil::preparePloData]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 661
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v0

    const-string v1, "plo"

    sget-object v2, Ldolphin/webkit/JniUtil;->sPloDataFiles:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ldolphin/webkit/JniUtil;->cleanExceptKeptData(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V

    .line 664
    sget-object v1, Ldolphin/webkit/JniUtil;->sPloDataFiles:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 665
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v4

    const-string v5, "plo"

    invoke-static {}, Ldolphin/webkit/JniUtil;->getPloSourceConfigFileRelPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v3, v7}, Ldolphin/webkit/JniUtil;->prepareDataFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JniUtil::preparePloData]Failed to prepare Plo data file - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :goto_1
    return-void

    .line 664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_1
    const-string v0, "dolphinwebkit"

    const-string v1, "[JniUtil::preparePloData]Plo data files are ready"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/plo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/JniUtil;->nativeSetPloDataDirectory(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static prepareTranscodeData()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 548
    const-string v0, "dolphinwebkit"

    const-string v2, "[JniUtil::prepareTranscodeData]"

    invoke-static {v0, v2}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/webkit/DolphinWebkit;->init(Landroid/content/Context;)V

    .line 553
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v0

    const-string v2, "transcode"

    sget-object v3, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    invoke-static {v0, v2, v3}, Ldolphin/webkit/JniUtil;->cleanExceptKeptData(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)V

    .line 556
    sget-object v2, Ldolphin/webkit/JniUtil;->sTranscodeDataFiles:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 557
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v5

    const-string v6, "transcode"

    invoke-static {}, Ldolphin/webkit/JniUtil;->getTranscodeSourceConfigFileRelPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4, v1}, Ldolphin/webkit/JniUtil;->prepareDataFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 558
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[JniUtil::prepareTranscodeData]Failed to prepare data file - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_1
    return-void

    .line 556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_1
    const-string v0, "dolphinwebkit"

    const-string v1, "[JniUtil::prepareTranscodeData]Transcode data files are ready"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-static {}, Ldolphin/webkit/JniUtil;->setTranscodeDataIsReady()V

    .line 567
    invoke-static {}, Ldolphin/webkit/JniUtil;->getTargetConfigFileRoot()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/JniUtil;->nativeSetTranscodeDataDirectory(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static prepareTranscodeDataAsync()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "dolphinwebkit"

    const-string v1, "Transcode: prepareTranscodeDataAsync"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v0, Ldolphin/webkit/em;

    invoke-direct {v0}, Ldolphin/webkit/em;-><init>()V

    .line 544
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 545
    return-void
.end method

.method private static quiteClose(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 307
    if-eqz p0, :cond_0

    .line 308
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static screenDepth()I
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 882
    sget v0, Ldolphin/webkit/JniUtil;->sBitsPerPixel:I

    if-nez v0, :cond_0

    .line 883
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 884
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    .line 885
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 886
    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 887
    iget v0, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    sput v0, Ldolphin/webkit/JniUtil;->sBitsPerPixel:I

    .line 889
    :cond_0
    sget v0, Ldolphin/webkit/JniUtil;->sBitsPerPixel:I

    return v0
.end method

.method private static screenSize()I
    .locals 3
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    const v2, 0xffff

    .line 896
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 897
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 898
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 900
    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    monitor-exit v1

    return-void

    .line 275
    :cond_0
    :try_start_1
    invoke-static {p0}, Ldolphin/webkit/JniUtil;->initializeWithContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setTranscodeDataIsReady()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "dolphinwebkit"

    const-string v1, "Transcode: setTranscodeDataIsReady.."

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataIsReady:Ldolphin/webkit/en;

    invoke-virtual {v0}, Ldolphin/webkit/en;->a()V

    .line 531
    return-void
.end method

.method private static updateConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 594
    const-string v0, "dolphinwebkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transcode: update config - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-static {p0}, Ldolphin/webkit/JniUtil;->getTranscodeConfigFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/JniUtil;->writeFile(Ljava/io/Reader;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized updatePloData()V
    .locals 2

    .prologue
    .line 261
    const-class v0, Ldolphin/webkit/JniUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->nativeUpdatePloData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit v0

    return-void

    .line 261
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized updateTranscodeConfig(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldolphin/webkit/TranscodeConfig;",
            ">;)V"
        }
    .end annotation

    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 576
    const-class v1, Ldolphin/webkit/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->checkInitialized()V

    .line 578
    sget-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataIsReady:Ldolphin/webkit/en;

    invoke-virtual {v0}, Ldolphin/webkit/en;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    const-string v0, "dolphinwebkit"

    const-string v2, "Transcode: Transcode data is not ready, ignore update request"

    invoke-static {v0, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :cond_0
    monitor-exit v1

    return-void

    .line 583
    :cond_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/webkit/TranscodeConfig;

    .line 584
    iget-object v3, v0, Ldolphin/webkit/TranscodeConfig;->key:Ljava/lang/String;

    invoke-static {v3}, Ldolphin/webkit/JniUtil;->findTranscodeConfigKey(Ljava/lang/String;)I

    move-result v3

    .line 585
    if-ltz v3, :cond_2

    .line 586
    iget-object v4, v0, Ldolphin/webkit/TranscodeConfig;->key:Ljava/lang/String;

    iget-object v0, v0, Ldolphin/webkit/TranscodeConfig;->value:Ljava/lang/String;

    invoke-static {v4, v0}, Ldolphin/webkit/JniUtil;->updateConfig(Ljava/lang/String;Ljava/lang/String;)Z

    .line 587
    const-string v0, "dolphinwebkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transcode: nativeReloadTranscodeConfig - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {v3}, Ldolphin/webkit/JniUtil;->nativeReloadTranscodeConfig(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static useChromiumHttpStack()Z
    .locals 2

    .prologue
    .line 810
    sget-object v0, Ldolphin/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Ldolphin/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    .line 814
    :cond_0
    sget-object v0, Ldolphin/webkit/JniUtil;->sUseChromiumHttpStack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static waitUntilTranscodeDataIsReady()V
    .locals 1

    .prologue
    .line 525
    sget-object v0, Ldolphin/webkit/JniUtil;->sTranscodeDataIsReady:Ldolphin/webkit/en;

    invoke-virtual {v0}, Ldolphin/webkit/en;->c()V

    .line 526
    return-void
.end method

.method private static writeFile(Ljava/io/Reader;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 408
    const/4 v3, 0x0

    .line 410
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    const/high16 v1, 0x10000

    :try_start_1
    new-array v1, v1, [C

    .line 413
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 414
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileWriter;->write([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    :goto_1
    :try_start_2
    const-string v3, "dolphinwebkit"

    const-string v4, "[JniUtil::writeFile]IOException:"

    invoke-static {v3, v4, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 421
    invoke-static {v2}, Ldolphin/webkit/JniUtil;->quiteClose(Ljava/io/Closeable;)V

    .line 424
    :goto_2
    return v0

    .line 416
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 421
    invoke-static {v2}, Ldolphin/webkit/JniUtil;->quiteClose(Ljava/io/Closeable;)V

    .line 424
    const/4 v0, 0x1

    goto :goto_2

    .line 421
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Ldolphin/webkit/JniUtil;->quiteClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 417
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method
