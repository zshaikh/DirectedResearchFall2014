.class public Lcom/flurry/android/monolithic/sdk/impl/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->b:J

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->c:I

    .line 32
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".flurrydatasenderblock."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->b:J

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->c:I

    .line 32
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    .line 41
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".flurrydatasenderblock."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a([B)Z
    .locals 7

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x0

    .line 58
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 59
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v1, "setData(byte[]) running on the MAIN thread!"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing FlurryDataSenderBlockInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/iw;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 70
    if-nez v1, :cond_1

    .line 93
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    move v0, v4

    .line 95
    :goto_0
    return v0

    .line 74
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    array-length v0, p1

    .line 82
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    const/4 v1, 0x1

    .line 87
    :try_start_3
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->c:I

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->b:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    move v0, v1

    .line 94
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    move v2, v4

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 91
    :goto_1
    const/4 v3, 0x6

    :try_start_4
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 93
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 94
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 90
    :catch_1
    move-exception v0

    move-object v1, v2

    move v2, v4

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public b()[B
    .locals 7

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 100
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 101
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v1, "getData() running on the MAIN thread!"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading FlurryDataSenderBlockInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 114
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 131
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    .line 137
    :goto_0
    return-object v0

    .line 121
    :cond_1
    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 124
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    .line 125
    if-nez v2, :cond_2

    .line 131
    :cond_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 129
    :goto_1
    const/4 v3, 0x6

    :try_start_4
    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 132
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0

    .line 134
    :cond_3
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v1, "Agent cache file doesn\'t exist."

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 131
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 128
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v2, "Deleted persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->b:J

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ew;->c:I

    .line 160
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 162
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ew;->d:Ljava/lang/String;

    const-string v2, "Cannot delete persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
