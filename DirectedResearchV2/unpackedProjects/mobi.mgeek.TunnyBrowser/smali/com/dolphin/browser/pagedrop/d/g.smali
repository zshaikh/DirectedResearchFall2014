.class public Lcom/dolphin/browser/pagedrop/d/g;
.super Ljava/lang/Object;
.source "ShareTabInfoProtocol.java"

# interfaces
.implements Lcom/dolphin/browser/pagedrop/d/a;


# instance fields
.field private a:[B

.field private b:B

.field private c:B

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(BB)V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-byte p1, p0, Lcom/dolphin/browser/pagedrop/d/g;->b:B

    .line 485
    iput-byte p2, p0, Lcom/dolphin/browser/pagedrop/d/g;->c:B

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    .line 487
    return-void
.end method

.method private a([BI)I
    .locals 3

    .prologue
    const/16 v1, 0x1c00

    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->g:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    if-le v0, v1, :cond_1

    .line 571
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput-byte v2, p1, p2

    .line 572
    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    .line 580
    :goto_0
    return v0

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->g:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    if-nez v0, :cond_3

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->i:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;[BII)I

    move-result v0

    goto :goto_0

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->g:[B

    iget v1, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    invoke-static {p1, p2, v0, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->b:B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->d:I

    if-gez v0, :cond_1

    .line 558
    :cond_0
    const/4 v0, 0x0

    .line 560
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/d/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v1

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 590
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 592
    if-eqz v2, :cond_0

    array-length v0, v2

    if-eqz v0, :cond_0

    .line 598
    array-length v4, v2

    .line 599
    if-eqz v3, :cond_3

    .line 600
    array-length v0, v3

    .line 602
    :goto_1
    iget v5, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    iget-object v6, p0, Lcom/dolphin/browser/pagedrop/d/g;->i:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/dolphin/browser/pagedrop/e/c;->a(ILjava/lang/String;)J

    move-result-wide v5

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    .line 603
    iget v5, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    const/16 v6, 0x1c00

    if-le v5, v6, :cond_2

    .line 604
    iput v1, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    .line 605
    const-string v5, ""

    iput-object v5, p0, Lcom/dolphin/browser/pagedrop/d/g;->i:Ljava/lang/String;

    .line 608
    :cond_2
    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/dolphin/browser/pagedrop/d/g;->h:I

    add-int/2addr v0, v4

    .line 609
    const/16 v4, 0x1ff7

    if-gt v0, v4, :cond_0

    .line 615
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->a:[B

    .line 616
    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/d/g;->a:[B

    .line 619
    aput-byte v10, v4, v1

    .line 620
    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->b:B

    aput-byte v0, v4, v10

    .line 621
    invoke-static {v12}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v0

    invoke-static {v4, v9, v0, v9}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI[BI)I

    .line 626
    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->c:B

    aput-byte v0, v4, v11

    .line 629
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(I)[B

    move-result-object v0

    invoke-static {v4, v12, v0, v11}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI[BI)I

    .line 632
    const/16 v0, 0xb

    .line 634
    invoke-static {v4, v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v0

    .line 637
    invoke-static {v4, v0, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v0

    .line 640
    invoke-direct {p0, v4, v0}, Lcom/dolphin/browser/pagedrop/d/g;->a([BI)I

    move-result v0

    .line 643
    const/16 v2, 0x2000

    if-ge v0, v2, :cond_0

    .line 648
    add-int/lit8 v1, v0, -0x4

    sub-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x2

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v1

    .line 649
    const/16 v2, 0x9

    invoke-static {v4, v2, v1, v9}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI[BI)I

    move v1, v0

    .line 651
    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public a(I)Lcom/dolphin/browser/pagedrop/d/g;
    .locals 0

    .prologue
    .line 500
    iput p1, p0, Lcom/dolphin/browser/pagedrop/d/g;->d:I

    .line 501
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/g;->e:Ljava/lang/String;

    .line 506
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/g;->f:Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/g;->a:[B

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/dolphin/browser/pagedrop/d/g;
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/g;->i:Ljava/lang/String;

    .line 525
    return-object p0
.end method
