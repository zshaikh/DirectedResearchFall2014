.class Lcom/facebook/orca/common/util/Base64$Encoder;
.super Lcom/facebook/orca/common/util/Base64$Coder;
.source "Base64.java"


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 545
    const-class v0, Lcom/facebook/orca/common/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/orca/common/util/Base64$Encoder;->g:Z

    .line 557
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/orca/common/util/Base64$Encoder;->h:[B

    .line 568
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/orca/common/util/Base64$Encoder;->i:[B

    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 557
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 568
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 584
    invoke-direct {p0}, Lcom/facebook/orca/common/util/Base64$Coder;-><init>()V

    .line 585
    iput-object p2, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->a:[B

    .line 587
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->d:Z

    .line 588
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->e:Z

    .line 589
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->f:Z

    .line 590
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/orca/common/util/Base64$Encoder;->h:[B

    :goto_3
    iput-object v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->l:[B

    .line 592
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    .line 593
    iput v1, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    .line 595
    iget-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->e:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->k:I

    .line 596
    return-void

    :cond_0
    move v0, v1

    .line 587
    goto :goto_0

    :cond_1
    move v0, v1

    .line 588
    goto :goto_1

    :cond_2
    move v0, v1

    .line 589
    goto :goto_2

    .line 590
    :cond_3
    sget-object v0, Lcom/facebook/orca/common/util/Base64$Encoder;->i:[B

    goto :goto_3

    .line 595
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 11

    .prologue
    .line 608
    iget-object v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->l:[B

    .line 609
    iget-object v1, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->a:[B

    .line 610
    const/4 v2, 0x0

    .line 611
    iget v3, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->k:I

    .line 614
    add-int v4, p3, p2

    .line 615
    const/4 v5, -0x1

    .line 621
    iget v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    move v6, p2

    .line 648
    :goto_0
    const/4 v7, -0x1

    if-eq v5, v7, :cond_17

    .line 649
    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v8, v5, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v2

    .line 650
    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 651
    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v2

    .line 652
    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v0, v5

    aput-byte v5, v1, v7

    .line 653
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_17

    .line 654
    iget-boolean v3, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->f:Z

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v2

    move v2, v3

    .line 655
    :cond_1
    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v2

    .line 656
    const/16 v2, 0x13

    move v5, v3

    move v3, v2

    move v2, v6

    .line 665
    :cond_2
    :goto_1
    add-int/lit8 v6, v2, 0x3

    if-gt v6, v4, :cond_3

    .line 666
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    .line 669
    shr-int/lit8 v7, v6, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v5

    .line 670
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 671
    add-int/lit8 v7, v5, 0x2

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v7

    .line 672
    add-int/lit8 v7, v5, 0x3

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v0, v6

    aput-byte v6, v1, v7

    .line 673
    add-int/lit8 v2, v2, 0x3

    .line 674
    add-int/lit8 v5, v5, 0x4

    .line 675
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    .line 676
    iget-boolean v3, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->f:Z

    if-eqz v3, :cond_16

    add-int/lit8 v3, v5, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v5

    .line 677
    :goto_2
    add-int/lit8 v5, v3, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v3

    .line 678
    const/16 v3, 0x13

    goto :goto_1

    :pswitch_0
    move v6, p2

    .line 624
    goto/16 :goto_0

    .line 627
    :pswitch_1
    add-int/lit8 v6, p2, 0x2

    if-gt v6, v4, :cond_0

    .line 630
    iget-object v5, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v6, p2, 0x1

    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 633
    const/4 v6, 0x0

    iput v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    move v6, v7

    goto/16 :goto_0

    .line 638
    :pswitch_2
    add-int/lit8 v6, p2, 0x1

    if-gt v6, v4, :cond_0

    .line 640
    iget-object v5, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    iget-object v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x1

    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 643
    const/4 v7, 0x0

    iput v7, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    goto/16 :goto_0

    .line 682
    :cond_3
    if-eqz p4, :cond_f

    .line 688
    iget v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    sub-int v6, v2, v6

    const/4 v7, 0x1

    sub-int v7, v4, v7

    if-ne v6, v7, :cond_7

    .line 689
    const/4 v6, 0x0

    .line 690
    iget v7, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v7, v6

    move v7, v2

    move v2, v6

    move v6, v8

    :goto_3
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    .line 691
    iget v8, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    sub-int v6, v8, v6

    iput v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    .line 692
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v2, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v0, v8

    aput-byte v8, v1, v5

    .line 693
    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    aput-byte v0, v1, v6

    .line 694
    iget-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->d:Z

    if-eqz v0, :cond_15

    .line 695
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v1, v5

    .line 696
    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0x3d

    aput-byte v5, v1, v0

    move v0, v2

    .line 698
    :goto_4
    iget-boolean v2, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->e:Z

    if-eqz v2, :cond_5

    .line 699
    iget-boolean v2, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->f:Z

    if-eqz v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v0

    move v0, v2

    .line 700
    :cond_4
    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v0

    move v0, v2

    :cond_5
    move v1, v0

    move v0, v7

    .line 722
    :goto_5
    sget-boolean v2, Lcom/facebook/orca/common/util/Base64$Encoder;->g:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    if-eqz v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 690
    :cond_6
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    goto :goto_3

    .line 702
    :cond_7
    iget v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    sub-int v6, v2, v6

    const/4 v7, 0x2

    sub-int v7, v4, v7

    if-ne v6, v7, :cond_c

    .line 703
    const/4 v6, 0x0

    .line 704
    iget v7, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    iget-object v7, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v7, v6

    move v7, v2

    move v2, v6

    move v6, v8

    :goto_6
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    iget v8, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    if-lez v8, :cond_b

    iget-object v8, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v8, v6

    move v8, v7

    move v7, v9

    :goto_7
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v2, v6

    .line 706
    iget v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    .line 707
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v5

    .line 708
    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v0, v7

    aput-byte v7, v1, v6

    .line 709
    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v2, v2, 0x3f

    aget-byte v0, v0, v2

    aput-byte v0, v1, v5

    .line 710
    iget-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->d:Z

    if-eqz v0, :cond_14

    .line 711
    add-int/lit8 v0, v6, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v1, v6

    .line 713
    :goto_8
    iget-boolean v2, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->e:Z

    if-eqz v2, :cond_9

    .line 714
    iget-boolean v2, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->f:Z

    if-eqz v2, :cond_8

    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v0

    move v0, v2

    .line 715
    :cond_8
    add-int/lit8 v2, v0, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v0

    move v0, v2

    :cond_9
    move v1, v0

    move v0, v8

    .line 717
    goto/16 :goto_5

    .line 704
    :cond_a
    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p1, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p1, v7

    move v10, v7

    move v7, v6

    move v6, v10

    goto :goto_7

    .line 717
    :cond_c
    iget-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->e:Z

    if-eqz v0, :cond_d

    if-lez v5, :cond_d

    const/16 v0, 0x13

    if-eq v3, v0, :cond_d

    .line 718
    iget-boolean v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->f:Z

    if-eqz v0, :cond_13

    add-int/lit8 v0, v5, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v5

    .line 719
    :goto_9
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v0

    :cond_d
    move v0, v2

    move v1, v5

    goto/16 :goto_5

    .line 723
    :cond_e
    sget-boolean v2, Lcom/facebook/orca/common/util/Base64$Encoder;->g:Z

    if-nez v2, :cond_12

    if-eq v0, v4, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 728
    :cond_f
    const/4 v0, 0x1

    sub-int v0, v4, v0

    if-ne v2, v0, :cond_10

    .line 729
    iget-object v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    iget v1, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    move v0, v5

    .line 736
    :goto_a
    iput v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->b:I

    .line 737
    iput v3, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->k:I

    .line 739
    const/4 v0, 0x1

    return v0

    .line 730
    :cond_10
    const/4 v0, 0x2

    sub-int v0, v4, v0

    if-ne v2, v0, :cond_11

    .line 731
    iget-object v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    iget v1, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    aget-byte v4, p1, v2

    aput-byte v4, v0, v1

    .line 732
    iget-object v0, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->j:[B

    iget v1, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/facebook/orca/common/util/Base64$Encoder;->c:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    :cond_11
    move v0, v5

    goto :goto_a

    :cond_12
    move v0, v1

    goto :goto_a

    :cond_13
    move v0, v5

    goto :goto_9

    :cond_14
    move v0, v6

    goto/16 :goto_8

    :cond_15
    move v0, v5

    goto/16 :goto_4

    :cond_16
    move v3, v5

    goto/16 :goto_2

    :cond_17
    move v5, v2

    move v2, v6

    goto/16 :goto_1

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
