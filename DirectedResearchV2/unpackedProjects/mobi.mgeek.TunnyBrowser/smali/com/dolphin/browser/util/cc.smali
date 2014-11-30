.class public Lcom/dolphin/browser/util/cc;
.super Ljava/lang/Object;
.source "ProcessUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 34
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 36
    new-instance v3, Lcom/dolphin/browser/util/cd;

    invoke-direct {v3}, Lcom/dolphin/browser/util/cd;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    const-string v3, "Name:\\s+%s\\b[\\s\\S]*\\bUid:\\s+%d\\s+[\\s\\S]*"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 45
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 46
    aget-object v3, v1, v0

    .line 47
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 48
    invoke-static {v3, v2}, Lcom/dolphin/browser/util/cc;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Kill process "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 50
    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    new-instance v1, Ljava/io/File;

    const-string v2, "status"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
