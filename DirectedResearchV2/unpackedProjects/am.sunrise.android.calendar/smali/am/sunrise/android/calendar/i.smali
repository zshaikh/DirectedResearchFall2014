.class Lam/sunrise/android/calendar/i;
.super Ljava/lang/Object;
.source "SunriseApplication.java"

# interfaces
.implements Lcom/b/a/t;


# static fields
.field static volatile a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/i;->c:Ljava/lang/ref/WeakReference;

    .line 205
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 206
    return-void
.end method

.method static a(Ljava/io/File;)J
    .locals 6

    .prologue
    const-wide/32 v2, 0x500000

    .line 335
    .line 338
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 341
    const-wide/16 v4, 0x32

    div-long/2addr v0, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    const-wide/32 v4, 0x3200000

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 342
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "picasso-cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 328
    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 304
    if-nez p0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    const-string v2, " "

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 308
    const-string v3, "CACHE"

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    .line 309
    goto :goto_0

    .line 311
    :cond_2
    array-length v3, v2

    if-eq v3, v0, :cond_0

    .line 315
    :try_start_0
    const-string v3, "CONDITIONAL_CACHE"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lam/sunrise/android/calendar/i;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 280
    :try_start_0
    sget-object v1, Lam/sunrise/android/calendar/i;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :try_start_1
    sget-object v0, Lam/sunrise/android/calendar/i;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 282
    invoke-static {p0}, Lam/sunrise/android/calendar/j;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lam/sunrise/android/calendar/i;->a:Ljava/lang/Object;

    .line 284
    :cond_0
    monitor-exit v1

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Z)Lcom/b/a/u;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 241
    iget-object v0, p0, Lam/sunrise/android/calendar/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/i;->b(Landroid/content/Context;)V

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_5

    .line 246
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/i;->a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 247
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 248
    if-eqz p2, :cond_1

    .line 249
    const-string v3, "Cache-Control"

    const-string v4, "only-if-cached;max-age=2147483647"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 253
    const/16 v4, 0x12c

    if-ge v3, v4, :cond_2

    .line 254
    const-string v0, "X-Android-Response-Source"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/i;->a(Ljava/lang/String;)Z

    move-result v1

    .line 255
    new-instance v0, Lcom/b/a/u;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/b/a/u;-><init>(Ljava/io/InputStream;Z)V

    .line 273
    :goto_1
    return-object v0

    .line 258
    :cond_2
    const/16 v4, 0x12d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_3

    .line 260
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 261
    goto :goto_1

    .line 264
    :cond_3
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 267
    goto :goto_1

    .line 269
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 270
    add-int/lit8 v0, v0, 0x1

    .line 271
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 273
    goto :goto_1
.end method

.method protected a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    .line 213
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 214
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 215
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 216
    invoke-static {}, Lam/sunrise/android/calendar/api/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lam/sunrise/android/calendar/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 218
    if-eqz v1, :cond_0

    .line 219
    check-cast v1, Lam/sunrise/android/calendar/SunriseApplication;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/SunriseApplication;->d()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const-string v2, "Authorization"

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_1

    .line 229
    const-string v2, "Accept-Language"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_"

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    return-object v0
.end method
