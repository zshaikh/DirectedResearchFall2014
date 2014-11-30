.class public Lcom/dolphin/browser/util/dk;
.super Ljava/lang/Object;
.source "UninstallWatcher.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/dk;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/dolphin/browser/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/f",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 384
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.browser/com.android.browser.BrowserActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.browser/com.android.browser.BrowserActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/util/dk;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide v0, p0, Lcom/dolphin/browser/util/dk;->d:J

    .line 81
    iput-wide v0, p0, Lcom/dolphin/browser/util/dk;->e:J

    .line 93
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "install"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    .line 95
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/util/dk;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/dolphin/browser/util/dk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/dk;->a:Lcom/dolphin/browser/util/dk;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/dolphin/browser/util/dk;

    invoke-direct {v0}, Lcom/dolphin/browser/util/dk;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/dk;->a:Lcom/dolphin/browser/util/dk;

    .line 88
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/dk;->a:Lcom/dolphin/browser/util/dk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/dolphin/browser/util/dk;Lcom/dolphin/browser/util/f;)Lcom/dolphin/browser/util/f;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dolphin/browser/util/dk;->c:Lcom/dolphin/browser/util/f;

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 391
    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move v0, v1

    .line 393
    :goto_0
    sget-object v4, Lcom/dolphin/browser/util/dk;->f:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 395
    :try_start_0
    sget-object v4, Lcom/dolphin/browser/util/dk;->f:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 396
    sget-object v4, Lcom/dolphin/browser/util/dk;->f:[Ljava/lang/String;

    aget-object v0, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_1
    if-nez v0, :cond_0

    .line 403
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "http://www.google.com"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 404
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/high16 v4, 0x10000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 407
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 408
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_0
    return-object v0

    .line 398
    :catch_0
    move-exception v4

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/core/Configuration;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/dolphin/browser/core/Configuration;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v0, "Unknown"

    .line 243
    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/util/dk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/util/dk;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/dolphin/browser/util/dk;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 417
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 419
    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 420
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 421
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string v1, "UninstallWatcher"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-wide v2, p0, Lcom/dolphin/browser/util/dk;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/dolphin/browser/util/dk;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/dolphin/browser/util/dk;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 190
    const-string v0, "UninstallWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionCheckInFiveMinute set true:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, v6}, Lcom/dolphin/browser/util/dk;->a(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 471
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    const-string v1, "UninstallWatcher"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 458
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 459
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 460
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 429
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {p0}, Lcom/dolphin/browser/util/dk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 434
    if-nez v1, :cond_2

    .line 435
    const-string v0, "UninstallWatcher"

    const-string v1, "Can\'t find browser componet, return."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    :cond_2
    const-string v2, "watch_server"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 439
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 440
    const-string v3, "watch_server"

    invoke-static {p0, v3, v2}, Lcom/dolphin/browser/util/dk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 441
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f3

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/dk;->a(Ljava/lang/String;I)V

    .line 444
    :cond_3
    :try_start_0
    const-string v3, "UninstallWatcher"

    const-string v4, "Start watch server with url %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 445
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static {p0}, Lcom/dolphin/browser/util/dk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string v1, "UninstallWatcher"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    iget-wide v2, p0, Lcom/dolphin/browser/util/dk;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/dolphin/browser/util/dk;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/dolphin/browser/util/dk;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 209
    const-string v1, "UninstallWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionNumCalcInFiveMinute set pre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    return-void
.end method

.method static synthetic j()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/dolphin/browser/util/dk;->p()V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 24

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    .line 249
    const-string v3, "it"

    const-wide/16 v4, 0x0

    invoke-interface {v9, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 250
    const-string v3, "v"

    const/4 v6, 0x0

    invoke-interface {v9, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 251
    const-string v3, "ut"

    const-wide/16 v6, 0x0

    invoke-interface {v9, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/dolphin/browser/util/dk;->e:J

    .line 253
    const-string v3, "ini"

    const/4 v6, 0x1

    invoke-interface {v9, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 255
    const/4 v3, 0x0

    .line 256
    const-wide/16 v10, 0x0

    cmp-long v7, v10, v4

    if-nez v7, :cond_0

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 259
    const/4 v3, 0x1

    .line 261
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I

    move-result v7

    if-le v7, v8, :cond_9

    .line 262
    if-lez v8, :cond_8

    .line 263
    const/4 v7, 0x0

    .line 269
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v6

    .line 270
    const-string v10, "watch_server"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 271
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 272
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 274
    :cond_1
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 276
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 277
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/dolphin/browser/util/dk;->e:J

    .line 278
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolphin/browser/core/Configuration;->getVersionCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 279
    const/4 v3, 0x1

    move/from16 v23, v7

    move v7, v6

    move/from16 v6, v23

    .line 284
    :goto_1
    if-eqz v3, :cond_2

    .line 285
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 286
    const-string v8, "ini"

    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v8, "it"

    invoke-interface {v3, v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v8, "v"

    invoke-interface {v3, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 289
    const-string v8, "ut"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/dolphin/browser/util/dk;->e:J

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v8, "UninstallWatcher"

    const-string v10, "Update install config, it=%d, ut=%d, v=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/dolphin/browser/util/dk;->e:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v10, v11}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 294
    const-string v8, "lts"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v8, "iow"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v8, "iom"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    const-string v8, "iosd"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    const-string v8, "iogs"

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 303
    :cond_2
    const-string v3, "flt"

    const-wide/16 v10, 0x0

    invoke-interface {v9, v3, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 304
    const-string v3, "hlt"

    const-wide/16 v12, 0x0

    invoke-interface {v9, v3, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 305
    const-string v3, "lct"

    const-wide/16 v14, 0x0

    invoke-interface {v9, v3, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 307
    const-string v3, "lts"

    const/4 v8, 0x0

    invoke-interface {v9, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 308
    const-string v3, "iow"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v9, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 309
    const-string v3, "iom"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v9, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 310
    const-string v3, "iosd"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v9, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 311
    const-string v3, "iogs"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v9, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 313
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v3

    .line 314
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v19

    .line 315
    const-string v20, "http://survey.dolphin.com/int/uninstall"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/dk;->a(Lcom/dolphin/browser/core/Configuration;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v21, "pn"

    invoke-virtual/range {v19 .. v19}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v19

    const-string v20, "v"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v19, "s"

    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v19, "it"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "ut"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/dolphin/browser/util/dk;->e:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "m"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "os"

    const-string v7, "android"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "osv"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "cc"

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "no"

    invoke-static {}, Lcom/dolphin/browser/util/dk;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "lang"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "jk"

    invoke-static {}, Lcom/dolphin/browser/util/dk;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ft"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ht"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "ct"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "nt"

    invoke-static {}, Lcom/dolphin/browser/util/dk;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "res"

    invoke-static {}, Lcom/dolphin/browser/util/dk;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "ifi"

    if-eqz v6, :cond_3

    const-string v3, "1"

    :goto_2
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "lts"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "iow"

    if-eqz v16, :cond_4

    const-string v3, "1"

    :goto_3
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "iom"

    if-eqz v17, :cond_5

    const-string v3, "1"

    :goto_4
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "iospd"

    if-eqz v18, :cond_6

    const-string v3, "1"

    :goto_5
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "iogs"

    if-eqz v9, :cond_7

    const-string v3, "1"

    :goto_6
    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "debug"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    return-object v3

    .line 280
    :catch_0
    move-exception v6

    .line 281
    invoke-static {v6}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v6, v7

    move v7, v8

    goto/16 :goto_1

    .line 315
    :cond_3
    const-string v3, "0"

    goto :goto_2

    :cond_4
    const-string v3, "0"

    goto :goto_3

    :cond_5
    const-string v3, "0"

    goto :goto_4

    :cond_6
    const-string v3, "0"

    goto :goto_5

    :cond_7
    const-string v3, "0"

    goto :goto_6

    :cond_8
    move v7, v6

    goto/16 :goto_0

    :cond_9
    move v7, v8

    goto/16 :goto_1
.end method

.method private static l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->screenWidthPixel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/DisplayManager;->screenHeightPixel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 364
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unKnown"

    goto :goto_0
.end method

.method private static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-static {}, Lcom/dolphin/browser/core/WebViewFactory;->isUsingDolphinWebkit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "enable"

    .line 380
    :goto_0
    return-object v0

    .line 377
    :cond_0
    const-string v0, "disable"

    goto :goto_0

    .line 380
    :cond_1
    const-string v0, "uninstalled"

    goto :goto_0
.end method

.method private static p()V
    .locals 1

    .prologue
    .line 466
    const-string v0, ".*watch_server.*"

    invoke-static {v0}, Lcom/dolphin/browser/util/cc;->a(Ljava/lang/String;)V

    .line 467
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/dolphin/browser/util/dk;->d:J

    .line 136
    const-string v0, "UninstallWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchStartTimeNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->c:Lcom/dolphin/browser/util/f;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->b(Z)Z

    .line 102
    :cond_0
    new-instance v0, Lcom/dolphin/browser/util/dl;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/util/dl;-><init>(Lcom/dolphin/browser/util/dk;Z)V

    .line 130
    iput-object v0, p0, Lcom/dolphin/browser/util/dk;->c:Lcom/dolphin/browser/util/f;

    .line 131
    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 132
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 143
    const-string v3, "flt"

    iget-wide v4, p0, Lcom/dolphin/browser/util/dk;->d:J

    sub-long v4, v0, v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 145
    const-string v2, "UninstallWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFirstLaunchEndNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/dolphin/browser/util/dk;->d:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    const-string v1, "lct"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 174
    const-string v0, "UninstallWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeCrashNotify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    iget-object v2, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 153
    const-string v3, "hlt"

    iget-wide v4, p0, Lcom/dolphin/browser/util/dk;->d:J

    sub-long v4, v0, v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 155
    const-string v2, "UninstallWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHomePageLaunchEndNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/dolphin/browser/util/dk;->d:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    iget-object v2, p0, Lcom/dolphin/browser/util/dk;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 163
    const-string v3, "lct"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 165
    const-string v2, "UninstallWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCrashNotify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "lts"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/dk;->b(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 220
    const-string v0, "iow"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/dk;->a(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 224
    const-string v0, "iom"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/dk;->a(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 228
    const-string v0, "iosd"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/dk;->a(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 232
    const-string v0, "iogs"

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/dk;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method
