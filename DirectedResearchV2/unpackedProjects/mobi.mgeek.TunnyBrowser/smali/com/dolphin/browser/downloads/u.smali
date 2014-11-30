.class public Lcom/dolphin/browser/downloads/u;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 6

    .prologue
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 36
    :cond_0
    return-wide v1

    .line 28
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 29
    aget-object v4, v3, v0

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 31
    invoke-static {v4}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 28
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p0}, Lcom/dolphin/browser/downloads/u;->a(Ljava/io/File;)J

    move-result-wide v0

    .line 18
    :goto_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method
