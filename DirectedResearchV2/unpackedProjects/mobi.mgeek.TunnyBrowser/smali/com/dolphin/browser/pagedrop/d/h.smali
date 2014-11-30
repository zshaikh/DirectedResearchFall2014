.class public Lcom/dolphin/browser/pagedrop/d/h;
.super Ljava/lang/Object;
.source "ShareTabInfoProtocol.java"


# instance fields
.field private a:Ljava/net/DatagramPacket;

.field private b:B

.field private c:B

.field private d:B

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:S

.field private j:S

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    .line 662
    iput-byte v1, p0, Lcom/dolphin/browser/pagedrop/d/h;->b:B

    .line 663
    iput-byte v1, p0, Lcom/dolphin/browser/pagedrop/d/h;->c:B

    .line 672
    iput-short v1, p0, Lcom/dolphin/browser/pagedrop/d/h;->i:S

    .line 673
    iput-short v1, p0, Lcom/dolphin/browser/pagedrop/d/h;->j:S

    .line 675
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->k:Ljava/lang/String;

    .line 681
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    .line 682
    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    .prologue
    .line 724
    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->d:B

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    if-nez v0, :cond_0

    .line 745
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Lcom/dolphin/browser/pagedrop/d/h;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 758
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    if-nez v1, :cond_0

    move-object p0, v0

    .line 838
    :goto_0
    return-object p0

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    .line 762
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 766
    if-eqz v1, :cond_1

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    :cond_1
    move-object p0, v0

    .line 767
    goto :goto_0

    .line 770
    :cond_2
    aget-byte v3, v1, v8

    iput-byte v3, p0, Lcom/dolphin/browser/pagedrop/d/h;->c:B

    .line 771
    const/4 v3, 0x2

    aget-byte v4, v1, v9

    iput-byte v4, p0, Lcom/dolphin/browser/pagedrop/d/h;->b:B

    .line 772
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v3

    .line 773
    add-int/lit8 v4, v3, 0x4

    invoke-static {v1, v4}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v4

    .line 774
    const/4 v5, 0x4

    .line 777
    const/4 v6, 0x5

    aget-byte v5, v1, v5

    iput-byte v5, p0, Lcom/dolphin/browser/pagedrop/d/h;->d:B

    .line 778
    invoke-static {v1, v6}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI)I

    move-result v5

    iput v5, p0, Lcom/dolphin/browser/pagedrop/d/h;->e:I

    .line 782
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    .line 785
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v5

    .line 786
    add-int/lit8 v3, v3, 0x2

    .line 787
    if-eqz v5, :cond_3

    add-int v6, v3, v5

    if-lt v6, v2, :cond_4

    :cond_3
    move-object p0, v0

    .line 788
    goto :goto_0

    .line 789
    :cond_4
    invoke-static {v1, v3, v5, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    .line 790
    add-int/2addr v3, v5

    .line 793
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v6

    .line 794
    add-int/lit8 v3, v3, 0x2

    .line 795
    add-int v7, v3, v6

    if-lt v7, v2, :cond_5

    move-object p0, v0

    .line 796
    goto :goto_0

    .line 797
    :cond_5
    invoke-static {v1, v3, v6, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BIII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/dolphin/browser/pagedrop/d/h;->g:Ljava/lang/String;

    .line 798
    add-int/2addr v3, v6

    .line 801
    invoke-static {v1, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI)S

    move-result v1

    .line 802
    add-int/lit8 v3, v3, 0x2

    .line 803
    add-int v7, v3, v1

    if-le v7, v2, :cond_6

    move-object p0, v0

    .line 804
    goto :goto_0

    .line 806
    :cond_6
    add-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-eq v1, v4, :cond_7

    move-object p0, v0

    .line 807
    goto :goto_0

    .line 809
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v1

    .line 810
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/b;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 811
    iget v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->h:I

    if-gtz v2, :cond_8

    .line 812
    const-string v2, ""

    iput-object v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->k:Ljava/lang/String;

    .line 827
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 828
    const-string v3, "userID"

    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v3, "userName"

    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/d/h;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v3, "imageName"

    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/d/h;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 832
    const-string v0, "user_table"

    const-string v3, "userID=?"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 815
    :cond_8
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->k:Ljava/lang/String;

    .line 816
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/pagedrop/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/d/h;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolphin/browser/pagedrop/d/h;->a:Ljava/net/DatagramPacket;

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    iget v6, p0, Lcom/dolphin/browser/pagedrop/d/h;->h:I

    invoke-static {v4, v5, v3, v6}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;[BII)Z

    move-result v3

    .line 819
    if-eqz v3, :cond_9

    .line 820
    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/e/b;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 823
    :cond_9
    iput-object v2, p0, Lcom/dolphin/browser/pagedrop/d/h;->k:Ljava/lang/String;

    goto :goto_1

    .line 835
    :cond_a
    const-string v3, "user_table"

    invoke-virtual {v1, v3, v0, v2}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto/16 :goto_0
.end method
