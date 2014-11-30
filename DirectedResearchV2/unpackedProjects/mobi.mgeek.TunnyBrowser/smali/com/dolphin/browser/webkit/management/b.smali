.class final Lcom/dolphin/browser/webkit/management/b;
.super Ljava/lang/Object;
.source "CacheHealthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 24
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/webkit/management/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v3, Lcom/dolphin/browser/webkit/management/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/dolphin/browser/webkit/management/c;-><init>(Lcom/dolphin/browser/webkit/management/b;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    array-length v1, v6

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 42
    const-string v1, "CacheHealthUtils"

    const-string v3, "Pruning webView cache..."

    invoke-static {v1, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    array-length v9, v6

    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    :goto_1
    if-ge v5, v9, :cond_7

    aget-object v2, v6, v5

    .line 44
    const-string v3, "CacheHealthUtils"

    const-string v4, "Pruning %s..."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v4, v10}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    new-instance v3, Lcom/dolphin/browser/webkit/management/d;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/dolphin/browser/webkit/management/d;-><init>(Lcom/dolphin/browser/webkit/management/b;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v10

    .line 52
    if-eqz v10, :cond_2

    array-length v2, v10

    if-nez v2, :cond_3

    .line 43
    :cond_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 55
    :cond_3
    array-length v11, v10

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v11, :cond_2

    aget-object v2, v10, v4

    .line 56
    const-string v3, "CacheHealthUtils"

    const-string v12, "Pruning %s..."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v3, v12, v13}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    new-instance v3, Lcom/dolphin/browser/webkit/management/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v8}, Lcom/dolphin/browser/webkit/management/e;-><init>(Lcom/dolphin/browser/webkit/management/b;J)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v12

    .line 64
    if-eqz v12, :cond_4

    array-length v2, v12

    if-nez v2, :cond_5

    .line 55
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 67
    :cond_5
    array-length v13, v12

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v13, :cond_4

    aget-object v3, v12, v2

    .line 68
    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 69
    const-string v14, "CacheHealthUtils"

    const-string v15, "Prune expired file %s."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    add-int/lit8 v3, v1, 0x1

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v7

    const-wide/32 v16, 0x493e0

    cmp-long v1, v14, v16

    if-lez v1, :cond_6

    .line 72
    const-string v1, "CacheHealthUtils"

    const-string v2, "Stop pruning after 5 min(s), %,d file(s) pruned."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "CacheHealthUtils"

    const-string v3, "Error while pruning cache."

    invoke-static {v2, v3, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 67
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_3

    .line 78
    :cond_7
    :try_start_1
    const-string v2, "CacheHealthUtils"

    const-string v3, "Cache prune completed, %,d file(s) pruned."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
