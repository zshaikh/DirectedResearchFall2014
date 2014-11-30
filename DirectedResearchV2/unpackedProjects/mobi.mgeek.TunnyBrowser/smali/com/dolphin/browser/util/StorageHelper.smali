.class public Lcom/dolphin/browser/util/StorageHelper;
.super Ljava/lang/Object;
.source "StorageHelper.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field private static final a:Z

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    :try_start_0
    const-class v2, Landroid/os/Environment;

    .line 54
    const-string v3, "getPhoneStorageDirectory"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/dolphin/browser/util/StorageHelper;->c:Ljava/lang/reflect/Method;

    .line 55
    sget-object v3, Lcom/dolphin/browser/util/StorageHelper;->c:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    const-string v3, "getPhoneStorageState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/dolphin/browser/util/StorageHelper;->b:Ljava/lang/reflect/Method;

    .line 58
    sget-object v2, Lcom/dolphin/browser/util/StorageHelper;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    sput-boolean v0, Lcom/dolphin/browser/util/StorageHelper;->a:Z

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method static a(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 164
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 166
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 167
    mul-long v0, v1, v3

    return-wide v0
.end method

.method private static a(Ljava/lang/String;Lcom/dolphin/browser/util/cl;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {p0}, Lcom/dolphin/browser/util/StorageHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :cond_1
    sget-object v0, Lcom/dolphin/browser/util/cl;->a:Lcom/dolphin/browser/util/cl;

    if-ne p1, v0, :cond_3

    .line 295
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "asec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "(?i).*vold.*(vfat|ntfs|exfat|fat32|ext3|ext4).*r(o|w).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-static {p0}, Lcom/dolphin/browser/util/StorageHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_3
    sget-object v0, Lcom/dolphin/browser/util/cl;->b:Lcom/dolphin/browser/util/cl;

    if-ne p1, v0, :cond_2

    .line 304
    const-string v0, "vfat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/dev/block/vold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/mnt/secure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/mnt/asec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/mnt/obb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/dev/mapper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "tmpfs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    invoke-static {p0}, Lcom/dolphin/browser/util/StorageHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()[Ljava/io/File;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/dolphin/browser/util/cl;->b:Lcom/dolphin/browser/util/cl;

    invoke-static {v0}, Lcom/dolphin/browser/util/StorageHelper;->a(Lcom/dolphin/browser/util/cl;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dolphin/browser/util/cl;)[Ljava/io/File;
    .locals 6

    .prologue
    .line 216
    invoke-static {p0}, Lcom/dolphin/browser/util/StorageHelper;->b(Lcom/dolphin/browser/util/cl;)[Ljava/lang/String;

    move-result-object v2

    .line 217
    const/4 v0, 0x0

    .line 218
    if-eqz v2, :cond_0

    .line 219
    array-length v3, v2

    .line 220
    new-array v0, v3, [Ljava/io/File;

    .line 221
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 222
    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 320
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    const-string v2, "StorageHelper"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 328
    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/dolphin/browser/util/cl;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    .line 240
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/proc/mounts"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->c(Ljava/io/InputStream;)Ljava/io/InputStreamReader;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 244
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 245
    const-string v4, "StorageHelper"

    invoke-static {v4, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {v3, p0}, Lcom/dolphin/browser/util/StorageHelper;->a(Ljava/lang/String;Lcom/dolphin/browser/util/cl;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 248
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 262
    :goto_1
    :try_start_2
    const-string v3, "StorageHelper"

    invoke-static {v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 269
    :goto_2
    return-object v0

    .line 252
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    :try_start_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 254
    if-eqz v4, :cond_2

    .line 255
    const/4 v0, 0x0

    move v3, v0

    .line 256
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 266
    :cond_2
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 267
    goto :goto_2

    .line 263
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 264
    :goto_4
    :try_start_5
    const-string v3, "StorageHelper"

    invoke-static {v3, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 266
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 263
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    .line 261
    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method public static c()J
    .locals 4

    .prologue
    .line 333
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 335
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 337
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 338
    mul-long/2addr v0, v2

    .line 340
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static d()J
    .locals 4

    .prologue
    .line 344
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 348
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 349
    mul-long/2addr v0, v2

    .line 351
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/util/StorageHelper;->a:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/dolphin/browser/util/StorageHelper;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "StorageHelper"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_0
    const-string v0, "removed"

    goto :goto_0
.end method

.method private static g()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 119
    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/util/StorageHelper;->a:Z

    if-eqz v0, :cond_0

    .line 120
    sget-object v0, Lcom/dolphin/browser/util/StorageHelper;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const-string v2, "StorageHelper"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 72
    sget-boolean v0, Lcom/dolphin/browser/util/StorageHelper;->a:Z

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "removed"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->g()Ljava/io/File;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->j()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 89
    const-string v0, "removed"

    .line 90
    sget-boolean v0, Lcom/dolphin/browser/util/StorageHelper;->a:Z

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "removed"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->f()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 132
    if-nez v3, :cond_1

    .line 143
    :cond_0
    return-wide v1

    .line 135
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 136
    aget-object v4, v3, v0

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    invoke-static {v4}, Lcom/dolphin/browser/util/StorageHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 135
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1
.end method

.method private static h()Z
    .locals 2

    .prologue
    .line 173
    const-string v0, "mounted"

    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->e()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->a()[Ljava/io/File;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 183
    const-string v0, "mounted"

    goto :goto_0
.end method

.method public static isDirSizeLargerThan(Ljava/io/File;J)Z
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    const-wide/16 v2, 0x0

    .line 149
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_0

    move v0, v1

    .line 151
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 152
    aget-object v5, v4, v0

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 154
    cmp-long v5, v2, p1

    if-lez v5, :cond_2

    .line 159
    :cond_0
    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 151
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j()Ljava/io/File;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->a()[Ljava/io/File;

    move-result-object v4

    .line 196
    if-eqz v4, :cond_3

    .line 197
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dolphin/browser/util/StorageHelper;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 199
    const-wide/32 v8, 0x100000

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move-object v0, v1

    .line 200
    goto :goto_0

    .line 197
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 204
    :cond_3
    if-eqz v4, :cond_0

    array-length v1, v4

    if-lez v1, :cond_0

    .line 205
    aget-object v0, v4, v3

    goto :goto_0
.end method
