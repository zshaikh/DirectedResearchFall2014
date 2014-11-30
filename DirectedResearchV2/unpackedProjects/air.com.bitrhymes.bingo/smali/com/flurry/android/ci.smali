.class final Lcom/flurry/android/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dO:I

.field private eA:Ljava/lang/String;

.field private eB:Ljava/lang/Throwable;

.field private ex:J

.field private ey:Ljava/lang/String;

.field private ez:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/flurry/android/ci;->dO:I

    .line 22
    iput-wide p2, p0, Lcom/flurry/android/ci;->ex:J

    .line 23
    iput-object p4, p0, Lcom/flurry/android/ci;->ey:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/flurry/android/ci;->ez:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/flurry/android/ci;->eA:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/flurry/android/ci;->eB:Ljava/lang/Throwable;

    .line 27
    return-void
.end method


# virtual methods
.method public final am()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/flurry/android/ci;->ey:Ljava/lang/String;

    return-object v0
.end method

.method public final getBytes()[B
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 38
    const/4 v0, 0x0

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    iget v0, p0, Lcom/flurry/android/ci;->dO:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    iget-wide v3, p0, Lcom/flurry/android/ci;->ex:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 46
    iget-object v0, p0, Lcom/flurry/android/ci;->ey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/flurry/android/ci;->ez:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/flurry/android/ci;->eA:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/flurry/android/ci;->eB:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/flurry/android/ci;->ey:Ljava/lang/String;

    const-string v3, "uncaught"

    if-ne v0, v3, :cond_0

    .line 56
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/flurry/android/ci;->eB:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v6, v8

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 68
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 58
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    const/4 v1, 0x0

    :try_start_2
    new-array v1, v1, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    invoke-static {v0}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 108
    :goto_3
    return-object v0

    .line 72
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/flurry/android/ci;->eB:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, "Caused by: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v4, p0, Lcom/flurry/android/ci;->eB:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v6, v8

    :goto_4
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 83
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 85
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 95
    :goto_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 105
    invoke-static {v2}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 91
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 105
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    invoke-static {v1}, Lcom/flurry/android/bd;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_6

    .line 101
    :catch_1
    move-exception v1

    goto :goto_2
.end method
