.class public Ldolphin/net/c/c;
.super Ljava/lang/Object;
.source "RequestHandle.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ldolphin/net/e;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldolphin/net/c/e;

.field private f:Ldolphin/net/c/a;

.field private g:Ljava/io/InputStream;

.field private h:I

.field private i:I

.field private j:Ldolphin/net/c/h;


# direct methods
.method public constructor <init>(Ldolphin/net/c/e;Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILdolphin/net/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/net/c/e;",
            "Ljava/lang/String;",
            "Ldolphin/net/e;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Ldolphin/net/c/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/net/c/c;->i:I

    .line 68
    if-nez p5, :cond_0

    .line 69
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 71
    :cond_0
    iput-object p5, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    .line 72
    iput-object p6, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    .line 73
    iput p7, p0, Ldolphin/net/c/c;->h:I

    .line 74
    if-nez p4, :cond_1

    const-string p4, "GET"

    :cond_1
    iput-object p4, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Ldolphin/net/c/c;->b:Ldolphin/net/e;

    .line 79
    iput-object p1, p0, Ldolphin/net/c/c;->e:Ldolphin/net/c/e;

    .line 81
    iput-object p8, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    .line 82
    return-void
.end method

.method public constructor <init>(Ldolphin/net/c/e;Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILdolphin/net/c/a;Ldolphin/net/c/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldolphin/net/c/e;",
            "Ljava/lang/String;",
            "Ldolphin/net/e;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Ldolphin/net/c/a;",
            "Ldolphin/net/c/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct/range {p0 .. p8}, Ldolphin/net/c/c;-><init>(Ldolphin/net/c/e;Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILdolphin/net/c/a;)V

    .line 94
    iput-object p9, p0, Ldolphin/net/c/c;->j:Ldolphin/net/c/h;

    .line 95
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 387
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0, v0}, Ldolphin/net/c/c;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 279
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 285
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    if-nez p4, :cond_0

    .line 364
    invoke-direct {p0, p1}, Ldolphin/net/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Ldolphin/net/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldolphin/net/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 366
    :cond_0
    const-string v0, "auth"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0, p1}, Ldolphin/net/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Ldolphin/net/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldolphin/net/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 309
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 310
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 311
    invoke-static {p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string v5, "00000001"

    .line 318
    invoke-direct {p0}, Ldolphin/net/c/c;->f()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    .line 319
    invoke-direct/range {v0 .. v6}, Ldolphin/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v1, ""

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p4}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    invoke-direct {p0, v2}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    if-eqz p7, :cond_0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p7}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    if-eqz p6, :cond_1

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_1
    if-eqz p5, :cond_2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cnonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v6}, Ldolphin/net/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_2
    return-object v0
.end method

.method private a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 405
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    .line 408
    if-eqz p1, :cond_2

    .line 409
    array-length v2, p1

    .line 410
    if-lez v2, :cond_1

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v2, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 413
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 414
    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 415
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    .line 417
    aget-char v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    aget-char v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_1
    return-object v0

    .line 423
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 427
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 405
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldolphin/net/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    if-nez p0, :cond_0

    .line 348
    const-string v0, "Authorization"

    .line 350
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Proxy-Authorization"

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    invoke-direct {p0}, Ldolphin/net/c/c;->g()V

    .line 265
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 435
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 436
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 438
    :goto_0
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method private g()V
    .locals 9

    .prologue
    .line 457
    iget-object v0, p0, Ldolphin/net/c/c;->j:Ldolphin/net/c/h;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Ldolphin/net/c/c;->e:Ldolphin/net/c/e;

    iget-object v1, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/net/c/c;->b:Ldolphin/net/e;

    iget-object v3, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    iget-object v4, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    iget-object v5, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    iget-object v5, v5, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    iget-object v6, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    iget v7, p0, Ldolphin/net/c/c;->h:I

    invoke-virtual/range {v0 .. v7}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;I)Ldolphin/net/c/c;

    move-result-object v0

    .line 461
    iget-object v1, v0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    iput-object v1, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    .line 462
    iget-object v1, v0, Ldolphin/net/c/c;->j:Ldolphin/net/c/h;

    iput-object v1, p0, Ldolphin/net/c/c;->j:Ldolphin/net/c/h;

    .line 463
    invoke-virtual {v0}, Ldolphin/net/c/c;->d()V

    .line 470
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Ldolphin/net/c/c;->e:Ldolphin/net/c/e;

    iget-object v1, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    iget-object v2, p0, Ldolphin/net/c/c;->b:Ldolphin/net/e;

    iget-object v3, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    iget-object v4, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    iget-object v5, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    iget-object v5, v5, Ldolphin/net/c/a;->a:Ldolphin/net/http/l;

    iget-object v6, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    iget v7, p0, Ldolphin/net/c/c;->h:I

    iget-object v8, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    invoke-virtual {v8}, Ldolphin/net/c/a;->g()Ldolphin/net/c/d;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Ldolphin/net/c/e;->a(Ljava/lang/String;Ldolphin/net/e;Ljava/lang/String;Ljava/util/Map;Ldolphin/net/http/l;Ljava/io/InputStream;ILdolphin/net/c/d;)Ldolphin/net/c/c;

    move-result-object v0

    iget-object v0, v0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    iput-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    invoke-virtual {v0}, Ldolphin/net/c/a;->b()V

    .line 104
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Ldolphin/net/c/c;->i:I

    .line 139
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    invoke-virtual {v0, p1}, Ldolphin/net/c/a;->a(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 227
    invoke-static {p2, p3}, Ldolphin/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    invoke-static {p1}, Ldolphin/net/c/c;->c(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-direct {p0}, Ldolphin/net/c/c;->e()V

    .line 233
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ldolphin/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    invoke-static {p1}, Ldolphin/net/c/c;->c(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Digest "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Ldolphin/net/c/c;->e()V

    .line 254
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v2, "Authorization"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v2, "Proxy-Authorization"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget v1, p0, Ldolphin/net/c/c;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldolphin/net/c/c;->i:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 165
    iget-object v1, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    const/16 v2, -0x9

    sget v3, Ldolphin/webkit/R$string;->httpErrorRedirectLoop:I

    invoke-virtual {v1, v2, v3}, Ldolphin/net/c/a;->a(II)V

    .line 220
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v1, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    const-string v2, "https:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v2, "Referer"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    iput-object p1, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    .line 180
    :try_start_0
    new-instance v1, Ldolphin/net/e;

    iget-object v2, p0, Ldolphin/net/c/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ldolphin/net/e;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ldolphin/net/c/c;->b:Ldolphin/net/e;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v2, "Cookie"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Ldolphin/webkit/CookieManager;->getInstance()Ldolphin/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Ldolphin/net/c/c;->b:Ldolphin/net/e;

    invoke-virtual {v2}, Ldolphin/net/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 189
    iget-object v2, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v3, "Cookie"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_2
    const/16 v1, 0x12e

    if-eq p2, v1, :cond_3

    const/16 v1, 0x12f

    if-ne p2, v1, :cond_4

    :cond_3
    iget-object v1, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    const-string v1, "GET"

    iput-object v1, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v2, "Origin"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    const/16 v1, 0x133

    if-ne p2, v1, :cond_6

    .line 203
    :try_start_1
    iget-object v1, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :cond_5
    :goto_2
    iget-object v0, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 219
    invoke-direct {p0}, Ldolphin/net/c/c;->g()V

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    invoke-virtual {v1}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1

    .line 212
    :cond_6
    iget-object v0, p0, Ldolphin/net/c/c;->d:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/net/c/c;->g:Ljava/io/InputStream;

    goto :goto_2

    .line 204
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Ldolphin/net/c/c;->i:I

    return v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    invoke-virtual {v0, p1}, Ldolphin/net/c/a;->b(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Ldolphin/net/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Ldolphin/net/c/c;->j:Ldolphin/net/c/h;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Ldolphin/net/c/c;->j:Ldolphin/net/c/h;

    iget-object v1, p0, Ldolphin/net/c/c;->f:Ldolphin/net/c/a;

    invoke-virtual {v0, v1}, Ldolphin/net/c/h;->a(Ldolphin/net/c/a;)V

    .line 296
    :cond_0
    return-void
.end method
