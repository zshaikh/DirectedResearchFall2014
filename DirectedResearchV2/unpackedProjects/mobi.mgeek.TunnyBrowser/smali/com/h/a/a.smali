.class public Lcom/h/a/a;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field static final b:Ljava/security/MessageDigest;


# instance fields
.field private c:Ljava/util/BitSet;

.field private d:I

.field private e:D

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/h/a/a;->a:Ljava/nio/charset/Charset;

    .line 55
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    sput-object v0, Lcom/h/a/a;->b:Ljava/security/MessageDigest;

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(DI)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L

    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/h/a/a;-><init>(DII)V

    .line 104
    return-void
.end method

.method public constructor <init>(DII)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p3, p0, Lcom/h/a/a;->f:I

    .line 72
    iput p4, p0, Lcom/h/a/a;->h:I

    .line 73
    iput-wide p1, p0, Lcom/h/a/a;->e:D

    .line 74
    int-to-double v0, p3

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/h/a/a;->d:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/h/a/a;->g:I

    .line 76
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/h/a/a;->d:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    .line 77
    return-void
.end method

.method public static a([BI)[I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 161
    new-array v6, p1, [I

    move v2, v1

    move v0, v1

    .line 165
    :goto_0
    if-ge v0, p1, :cond_2

    .line 167
    sget-object v3, Lcom/h/a/a;->b:Ljava/security/MessageDigest;

    monitor-enter v3

    .line 168
    :try_start_0
    sget-object v4, Lcom/h/a/a;->b:Ljava/security/MessageDigest;

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    int-to-byte v5, v2

    .line 170
    sget-object v2, Lcom/h/a/a;->b:Ljava/security/MessageDigest;

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 171
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    move v0, v1

    .line 173
    :goto_1
    array-length v3, v7

    div-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_1

    if-ge v2, p1, :cond_1

    .line 175
    mul-int/lit8 v3, v0, 0x4

    move v4, v1

    :goto_2
    mul-int/lit8 v8, v0, 0x4

    add-int/lit8 v8, v8, 0x4

    if-ge v3, v8, :cond_0

    .line 176
    shl-int/lit8 v4, v4, 0x8

    .line 177
    aget-byte v8, v7, v3

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 179
    :cond_0
    aput v4, v6, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    move v2, v5

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    return-object v6
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/h/a/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/h/a/a;->a([B)V

    .line 299
    return-void
.end method

.method public a([B)V
    .locals 6

    .prologue
    .line 307
    iget v0, p0, Lcom/h/a/a;->h:I

    invoke-static {p1, v0}, Lcom/h/a/a;->a([BI)[I

    move-result-object v1

    .line 308
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 309
    iget-object v4, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    iget v5, p0, Lcom/h/a/a;->d:I

    rem-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget v0, p0, Lcom/h/a/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/h/a/a;->g:I

    .line 311
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/h/a/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/h/a/a;->b([B)Z

    move-result v0

    return v0
.end method

.method public b([B)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 343
    iget v1, p0, Lcom/h/a/a;->h:I

    invoke-static {p1, v1}, Lcom/h/a/a;->a([BI)[I

    move-result-object v2

    .line 344
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v2, v1

    .line 345
    iget-object v5, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    iget v6, p0, Lcom/h/a/a;->d:I

    rem-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 349
    :goto_1
    return v0

    .line 344
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 200
    check-cast p1, Lcom/h/a/a;

    .line 201
    iget v1, p0, Lcom/h/a/a;->f:I

    iget v2, p1, Lcom/h/a/a;->f:I

    if-ne v1, v2, :cond_0

    .line 204
    iget v1, p0, Lcom/h/a/a;->h:I

    iget v2, p1, Lcom/h/a/a;->h:I

    if-ne v1, v2, :cond_0

    .line 207
    iget v1, p0, Lcom/h/a/a;->d:I

    iget v2, p1, Lcom/h/a/a;->d:I

    if-ne v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/h/a/a;->c:Ljava/util/BitSet;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/h/a/a;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 222
    .line 223
    iget-object v0, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/h/a/a;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x1ab

    .line 224
    mul-int/lit8 v0, v0, 0x3d

    iget v1, p0, Lcom/h/a/a;->f:I

    add-int/2addr v0, v1

    .line 225
    mul-int/lit8 v0, v0, 0x3d

    iget v1, p0, Lcom/h/a/a;->d:I

    add-int/2addr v0, v1

    .line 226
    mul-int/lit8 v0, v0, 0x3d

    iget v1, p0, Lcom/h/a/a;->h:I

    add-int/2addr v0, v1

    .line 227
    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
