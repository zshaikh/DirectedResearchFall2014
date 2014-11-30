.class public Lcom/mgeek/android/util/d;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/mgeek/android/util/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/mgeek/android/util/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mgeek/android/util/d;->a:Ljava/lang/String;

    .line 20
    :cond_0
    sget-object v0, Lcom/mgeek/android/util/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 24
    const-string v0, "unknown"

    .line 28
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 29
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 32
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    const-string v1, ":\\s+"

    const/4 v2, 0x2

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
