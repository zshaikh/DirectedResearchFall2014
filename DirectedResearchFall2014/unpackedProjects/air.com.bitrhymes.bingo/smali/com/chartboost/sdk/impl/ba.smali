.class public Lcom/chartboost/sdk/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/chartboost/sdk/impl/ba;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final g:I


# instance fields
.field final b:I

.field final c:I

.field final d:I

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 45
    const-string v0, "org.bson.ObjectId"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/ba;->a:Ljava/util/logging/Logger;

    .line 346
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 356
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 358
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 368
    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/impl/ba;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "machine piece post: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 375
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 382
    const-class v2, Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 385
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 389
    sget-object v2, Lcom/chartboost/sdk/impl/ba;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "process piece: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 392
    or-int/2addr v0, v1

    sput v0, Lcom/chartboost/sdk/impl/ba;->g:I

    .line 393
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->a:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "machine : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/chartboost/sdk/impl/ba;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    return-void

    .line 359
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 360
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 365
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/impl/ba;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    goto/16 :goto_1

    .line 383
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 395
    :catch_1
    move-exception v0

    .line 396
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    .line 171
    sget v0, Lcom/chartboost/sdk/impl/ba;->g:I

    iput v0, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    .line 172
    sget-object v0, Lcom/chartboost/sdk/impl/ba;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ba;->e:Z

    .line 174
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    .line 162
    iput p2, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    .line 163
    iput p3, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ba;->e:Z

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid ObjectId ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-eqz p2, :cond_2

    .line 131
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ba;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    const/16 v1, 0xc

    new-array v1, v1, [B

    move v2, v5

    .line 134
    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 137
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    .line 139
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    .line 140
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    .line 141
    iput-boolean v5, p0, Lcom/chartboost/sdk/impl/ba;->e:Z

    .line 142
    return-void

    .line 135
    :cond_1
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/ba;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p0, :cond_0

    move-object v0, v2

    .line 99
    :goto_0
    return-object v0

    .line 90
    :cond_0
    instance-of v0, p0, Lcom/chartboost/sdk/impl/ba;

    if-eqz v0, :cond_1

    .line 91
    check-cast p0, Lcom/chartboost/sdk/impl/ba;

    move-object v0, p0

    goto :goto_0

    .line 93
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    new-instance v1, Lcom/chartboost/sdk/impl/ba;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 99
    goto :goto_0
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    if-nez p0, :cond_0

    move v0, v4

    .line 77
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 62
    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    move v0, v4

    .line 63
    goto :goto_0

    :cond_1
    move v1, v4

    .line 65
    :goto_1
    if-lt v1, v0, :cond_2

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 67
    const/16 v3, 0x30

    if-lt v2, v3, :cond_4

    const/16 v3, 0x39

    if-gt v2, v3, :cond_4

    .line 65
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_4
    const/16 v3, 0x61

    if-lt v2, v3, :cond_5

    const/16 v3, 0x66

    if-le v2, v3, :cond_3

    .line 71
    :cond_5
    const/16 v3, 0x41

    if-lt v2, v3, :cond_6

    const/16 v3, 0x46

    if-le v2, v3, :cond_3

    :cond_6
    move v0, v4

    .line 74
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    invoke-static {p0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid object id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    const/4 v1, 0x7

    :goto_0
    if-gez v1, :cond_1

    .line 239
    const/16 v1, 0xb

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    invoke-static {p0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {p0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method a(II)I
    .locals 6

    .prologue
    const-wide v4, 0xffffffffL

    .line 250
    .line 251
    int-to-long v0, p1

    and-long/2addr v0, v4

    .line 253
    int-to-long v2, p2

    and-long/2addr v2, v4

    .line 254
    sub-long/2addr v0, v2

    .line 255
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 256
    const/high16 v0, -0x80000000

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 258
    const v0, 0x7fffffff

    goto :goto_0

    .line 259
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public a(Lcom/chartboost/sdk/impl/ba;)I
    .locals 2

    .prologue
    .line 263
    if-nez p1, :cond_1

    .line 264
    const/4 v0, -0x1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    iget v1, p1, Lcom/chartboost/sdk/impl/ba;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(II)I

    move-result v0

    .line 267
    if-nez v0, :cond_0

    .line 270
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    iget v1, p1, Lcom/chartboost/sdk/impl/ba;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(II)I

    move-result v0

    .line 271
    if-nez v0, :cond_0

    .line 274
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    iget v1, p1, Lcom/chartboost/sdk/impl/ba;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ba;->b()[B

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :cond_0
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 211
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public b()[B
    .locals 3

    .prologue
    .line 219
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 220
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 222
    iget v2, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 223
    iget v2, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 224
    iget v2, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/chartboost/sdk/impl/ba;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    if-ne p0, p1, :cond_0

    move v0, v4

    .line 195
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/ba;

    move-result-object v0

    .line 189
    if-nez v0, :cond_1

    move v0, v3

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    iget v1, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    iget v2, v0, Lcom/chartboost/sdk/impl/ba;->b:I

    if-ne v1, v2, :cond_2

    .line 194
    iget v1, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    iget v2, v0, Lcom/chartboost/sdk/impl/ba;->c:I

    if-ne v1, v2, :cond_2

    .line 195
    iget v1, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    iget v0, v0, Lcom/chartboost/sdk/impl/ba;->d:I

    if-ne v1, v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 192
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/chartboost/sdk/impl/ba;->b:I

    .line 178
    iget v1, p0, Lcom/chartboost/sdk/impl/ba;->c:I

    mul-int/lit8 v1, v1, 0x6f

    add-int/2addr v0, v1

    .line 179
    iget v1, p0, Lcom/chartboost/sdk/impl/ba;->d:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 180
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ba;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
