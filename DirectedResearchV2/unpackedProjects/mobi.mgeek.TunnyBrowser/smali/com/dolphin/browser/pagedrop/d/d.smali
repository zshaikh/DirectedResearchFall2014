.class public Lcom/dolphin/browser/pagedrop/d/d;
.super Ljava/lang/Object;
.source "OnLineProtocol.java"


# static fields
.field private static a:Lcom/dolphin/browser/pagedrop/d/d;


# instance fields
.field private b:Ljava/net/DatagramPacket;

.field private c:B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/pagedrop/d/d;->a:Lcom/dolphin/browser/pagedrop/d/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    .line 208
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->c:B

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    .line 208
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->c:B

    .line 231
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    .line 232
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized c()Lcom/dolphin/browser/pagedrop/d/d;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 277
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 280
    if-eqz v1, :cond_0

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_0

    .line 284
    const/4 v3, 0x1

    .line 285
    const/4 v4, 0x2

    aget-byte v3, v1, v3

    iput-byte v3, p0, Lcom/dolphin/browser/pagedrop/d/d;->c:B

    .line 286
    invoke-static {v1, v4}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v3

    .line 287
    add-int/lit8 v4, v3, 0x4

    invoke-static {v1, v4}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v4

    .line 293
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    .line 296
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v5

    .line 297
    add-int/lit8 v3, v3, 0x2

    .line 298
    if-eqz v5, :cond_0

    add-int v6, v3, v5

    if-ge v6, v2, :cond_0

    .line 300
    invoke-static {v1, v3, v5, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    .line 301
    add-int/2addr v3, v5

    .line 304
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v6

    .line 305
    add-int/lit8 v3, v3, 0x2

    .line 306
    add-int v7, v3, v6

    if-ge v7, v2, :cond_0

    .line 308
    invoke-static {v1, v3, v6, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/dolphin/browser/pagedrop/d/d;->e:Ljava/lang/String;

    .line 309
    add-int/2addr v3, v6

    .line 312
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/pagedrop/d/d;->f:I

    .line 313
    add-int/lit8 v1, v3, 0x2

    .line 314
    iget v3, p0, Lcom/dolphin/browser/pagedrop/d/d;->f:I

    add-int/2addr v3, v1

    if-gt v3, v2, :cond_0

    .line 317
    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/dolphin/browser/pagedrop/d/d;->f:I

    add-int/2addr v2, v3

    if-ne v2, v4, :cond_0

    .line 320
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 321
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->f:I

    if-gtz v0, :cond_2

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->g:Ljava/lang/String;

    .line 339
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    const-string v1, "userID"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "userName"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v1, "imageName"

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 344
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v1

    const-string v2, "user_table"

    const-string v3, "userID=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    :goto_2
    move-object v0, p0

    .line 351
    goto/16 :goto_0

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->g:Ljava/lang/String;

    .line 326
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/pagedrop/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/d;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/d/d;->b:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    iget v4, p0, Lcom/dolphin/browser/pagedrop/d/d;->f:I

    invoke-static {v2, v3, v1, v4}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;[BII)Z

    move-result v1

    .line 329
    if-eqz v1, :cond_3

    .line 330
    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :cond_3
    :try_start_2
    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/d;->g:Ljava/lang/String;

    goto :goto_1

    .line 347
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v1

    const-string v2, "user_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
