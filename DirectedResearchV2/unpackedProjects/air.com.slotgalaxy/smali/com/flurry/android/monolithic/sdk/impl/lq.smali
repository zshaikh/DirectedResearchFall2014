.class Lcom/flurry/android/monolithic/sdk/impl/lq;
.super Lcom/flurry/android/monolithic/sdk/impl/lp;
.source "SourceFile"


# instance fields
.field protected b:Z

.field private c:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/lp;-><init>()V

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    .line 744
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    .line 745
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/flurry/android/monolithic/sdk/impl/lm;)V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/lq;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 749
    const/4 v0, 0x0

    move-wide v1, p1

    .line 750
    :goto_0
    cmp-long v3, v1, v7

    if-lez v3, :cond_3

    .line 751
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 752
    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 753
    sub-long/2addr v1, v3

    .line 754
    goto :goto_0

    .line 760
    :cond_0
    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    .line 761
    if-eqz v0, :cond_1

    .line 762
    iput-boolean v6, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    .line 763
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v6

    .line 766
    goto :goto_0

    .line 769
    :cond_2
    iput-boolean v6, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    .line 770
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 772
    :cond_3
    return-void
.end method

.method protected a([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    move v0, p3

    move v1, p2

    :goto_0
    if-lez v0, :cond_1

    .line 811
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 812
    if-gez v2, :cond_0

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    .line 814
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 816
    :cond_0
    sub-int/2addr v0, v2

    .line 817
    add-int/2addr v1, v2

    .line 818
    goto :goto_0

    .line 819
    :cond_1
    return-void
.end method

.method protected b([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 823
    move v0, p3

    move v1, p2

    .line 825
    :goto_0
    if-lez v0, :cond_0

    .line 826
    :try_start_0
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 827
    if-gez v2, :cond_1

    .line 828
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :cond_0
    :goto_1
    sub-int v0, p3, v0

    return v0

    .line 831
    :cond_1
    sub-int/2addr v0, v2

    .line 832
    add-int/2addr v1, v2

    .line 833
    goto :goto_0

    .line 834
    :catch_0
    move-exception v1

    .line 835
    iput-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    goto :goto_1
.end method

.method protected b(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 776
    .line 778
    const/4 v0, 0x0

    move-wide v1, p1

    .line 779
    :goto_0
    cmp-long v3, v1, v7

    if-lez v3, :cond_1

    .line 780
    :try_start_0
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 781
    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 782
    sub-long/2addr v1, v3

    .line 783
    goto :goto_0

    .line 789
    :cond_0
    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    .line 790
    if-eqz v0, :cond_2

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    .line 805
    :cond_1
    :goto_1
    sub-long v0, p1, v1

    return-wide v0

    :cond_2
    move v0, v6

    .line 795
    goto :goto_0

    .line 798
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 802
    :catch_0
    move-exception v0

    .line 803
    iput-boolean v6, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->b:Z

    goto :goto_1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 860
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 848
    :goto_0
    return v0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v0

    .line 846
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->d()[B

    move-result-object v1

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    .line 847
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lq;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    move v0, v1

    .line 848
    goto :goto_0
.end method
