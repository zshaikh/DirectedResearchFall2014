.class abstract Lcom/flurry/android/monolithic/sdk/impl/lp;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/ln;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 594
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a()V

    .line 609
    return-void
.end method

.method protected a(ILcom/flurry/android/monolithic/sdk/impl/ll;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 599
    new-array v0, p1, [B

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;[B)[B

    .line 600
    invoke-static {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->a(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 601
    invoke-static {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->c(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 602
    invoke-static {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ll;->b(Lcom/flurry/android/monolithic/sdk/impl/ll;I)I

    .line 603
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ln;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ll;Lcom/flurry/android/monolithic/sdk/impl/lm;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    .line 604
    return-void
.end method

.method protected abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract a([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a([BIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {p1, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 678
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    .line 679
    add-int v0, p3, p4

    array-length v1, p1

    sub-int/2addr v1, p4

    invoke-virtual {p0, p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/lp;->b([BII)I

    move-result v0

    add-int/2addr v0, p4

    .line 681
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b(I)V

    .line 682
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract b([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract b(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v0

    .line 687
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v1

    .line 688
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ln;->d()[B

    move-result-object v2

    .line 689
    sub-int/2addr v0, v1

    .line 690
    if-lt v0, p3, :cond_1

    .line 691
    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 692
    add-int v0, v1, p3

    .line 693
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    move v0, p3

    .line 706
    :cond_0
    :goto_0
    return v0

    .line 697
    :cond_1
    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    add-int/2addr v1, v0

    .line 699
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    .line 701
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/lp;->b([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 703
    if-nez v0, :cond_0

    .line 704
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->c()I

    move-result v0

    .line 714
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ln;->b()I

    move-result v1

    .line 715
    sub-int v2, v0, v1

    .line 716
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    .line 717
    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 718
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    move-wide v0, p1

    .line 724
    :goto_0
    return-wide v0

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/lp;->a:Lcom/flurry/android/monolithic/sdk/impl/ln;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ln;->a(I)V

    .line 723
    int-to-long v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/lp;->b(J)J

    move-result-wide v0

    .line 724
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method
