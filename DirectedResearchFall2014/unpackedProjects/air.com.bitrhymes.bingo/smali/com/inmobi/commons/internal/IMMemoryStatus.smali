.class public Lcom/inmobi/commons/internal/IMMemoryStatus;
.super Ljava/lang/Object;
.source "IMMemoryStatus.java"


# static fields
.field private static final a:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized externalMemoryAvailable()Z
    .locals 3

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/commons/internal/IMMemoryStatus;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 14
    const-string v2, "mounted"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized formatSize(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v6, 0x400

    .line 46
    const-class v0, Lcom/inmobi/commons/internal/IMMemoryStatus;

    monitor-enter v0

    .line 48
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 66
    :goto_0
    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    cmp-long v1, p0, v6

    if-ltz v1, :cond_3

    .line 53
    :try_start_0
    const-string v1, " KB"

    .line 54
    const-wide/16 v2, 0x400

    div-long v2, p0, v2

    .line 57
    :goto_1
    cmp-long v4, v2, v6

    if-ltz v4, :cond_1

    .line 58
    const-string v1, " MB"

    .line 59
    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 61
    :cond_1
    cmp-long v4, v2, v6

    if-ltz v4, :cond_2

    .line 62
    const-string v1, " GB"

    .line 63
    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 66
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    move-object v1, v3

    move-wide v2, p0

    goto :goto_1
.end method

.method public static declared-synchronized getTotalExternalMemorySize()J
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 31
    const-class v0, Lcom/inmobi/commons/internal/IMMemoryStatus;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/IMMemoryStatus;->externalMemoryAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 33
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 35
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v1, v1

    .line 36
    mul-long/2addr v1, v3

    .line 41
    :goto_0
    monitor-exit v0

    return-wide v1

    :cond_0
    move-wide v1, v5

    .line 38
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    move-wide v1, v5

    .line 41
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTotalInternalMemorySize()J
    .locals 5

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/commons/internal/IMMemoryStatus;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 20
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 22
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v1, v1

    .line 23
    mul-long/2addr v1, v3

    .line 25
    :goto_0
    monitor-exit v0

    return-wide v1

    .line 24
    :catch_0
    move-exception v1

    .line 25
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
