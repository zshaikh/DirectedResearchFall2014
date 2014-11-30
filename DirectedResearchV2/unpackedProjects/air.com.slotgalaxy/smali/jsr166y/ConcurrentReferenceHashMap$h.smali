.class final Ljsr166y/ConcurrentReferenceHashMap$h;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljsr166y/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field volatile transient a:I

.field transient b:I

.field transient c:I

.field volatile transient d:[Ljsr166y/ConcurrentReferenceHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final e:F

.field volatile transient f:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

.field final h:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

.field final i:Z


# direct methods
.method constructor <init>(IFLjsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Z)V
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 510
    iput p2, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->e:F

    .line 511
    iput-object p3, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->g:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .line 512
    iput-object p4, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->h:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    .line 513
    iput-boolean p5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->i:Z

    .line 514
    invoke-static {p1}, Ljsr166y/ConcurrentReferenceHashMap$c;->a(I)[Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap$h;->a([Ljsr166y/ConcurrentReferenceHashMap$c;)V

    .line 515
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->i:Z

    if-eqz v0, :cond_1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static final a(I)[Ljsr166y/ConcurrentReferenceHashMap$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljsr166y/ConcurrentReferenceHashMap$h",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 519
    new-array v0, p0, [Ljsr166y/ConcurrentReferenceHashMap$h;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 694
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 695
    array-length v1, v0

    .line 696
    const/high16 v2, 0x40000000

    if-lt v1, v2, :cond_0

    move v0, v5

    .line 760
    :goto_0
    return v0

    .line 713
    :cond_0
    shl-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljsr166y/ConcurrentReferenceHashMap$c;->a(I)[Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v2

    .line 714
    array-length v3, v2

    int-to-float v3, v3

    iget v4, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->e:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->c:I

    .line 715
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v4, v5

    .line 717
    :goto_1
    if-ge v4, v1, :cond_6

    .line 720
    aget-object v6, v0, v4

    .line 722
    if-eqz v6, :cond_1

    .line 723
    iget-object v7, v6, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 724
    iget v8, v6, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    and-int/2addr v8, v3

    .line 727
    if-nez v7, :cond_2

    .line 728
    aput-object v6, v2, v8

    .line 717
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v6

    .line 735
    :goto_3
    if-eqz v7, :cond_4

    .line 737
    iget v10, v7, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    and-int/2addr v10, v3

    .line 738
    if-eq v10, v8, :cond_3

    move v8, v10

    move-object v9, v7

    .line 736
    :cond_3
    iget-object v7, v7, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_3

    .line 743
    :cond_4
    aput-object v9, v2, v8

    move-object v13, v6

    move v6, v5

    move-object v5, v13

    .line 745
    :goto_4
    if-eq v5, v9, :cond_7

    .line 747
    invoke-virtual {v5}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v7

    .line 748
    if-nez v7, :cond_5

    .line 749
    add-int/lit8 v6, v6, 0x1

    .line 745
    :goto_5
    iget-object v5, v5, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_4

    .line 752
    :cond_5
    iget v8, v5, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    and-int/2addr v8, v3

    .line 753
    aget-object v10, v2, v8

    .line 754
    iget v11, v5, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    invoke-virtual {v5}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {p0, v7, v11, v10, v12}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjsr166y/ConcurrentReferenceHashMap$c;Ljava/lang/Object;)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v7

    aput-object v7, v2, v8

    goto :goto_5

    .line 759
    :cond_6
    iput-object v2, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    move v0, v5

    .line 760
    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_2
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 568
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {p0, p2}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(I)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    .line 570
    :goto_0
    if-eqz v0, :cond_2

    .line 571
    iget v1, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    if-ne v1, p2, :cond_1

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->c:Ljava/lang/Object;

    .line 573
    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0, v1}, Ljsr166y/ConcurrentReferenceHashMap$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    :goto_1
    return-object v0

    .line 576
    :cond_0
    invoke-virtual {p0, v0}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljsr166y/ConcurrentReferenceHashMap$c;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 578
    :cond_1
    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_0

    .line 581
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 640
    :try_start_0
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->b()V

    .line 641
    invoke-virtual {p0, p2}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(I)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    .line 642
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    :cond_0
    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_0

    .line 645
    :cond_1
    const/4 v1, 0x0

    .line 646
    if-eqz v0, :cond_2

    .line 647
    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v1

    .line 648
    iget-object v2, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->h:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    iget-object v3, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p3, v2, v3}, Ljsr166y/ConcurrentReferenceHashMap$c;->c(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 652
    :goto_1
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 658
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 660
    :try_start_0
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->b()V

    .line 661
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    .line 662
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->c:I

    if-le v0, v2, :cond_4

    .line 663
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->a()I

    move-result v0

    .line 664
    if-lez v0, :cond_4

    .line 665
    sub-int v0, v1, v0

    sub-int v1, v0, v3

    iput v1, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    .line 668
    :goto_0
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 669
    array-length v2, v1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    .line 670
    aget-object v3, v1, v2

    move-object v4, v3

    .line 672
    :goto_1
    if-eqz v4, :cond_1

    iget v5, v4, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    if-ne v5, p2, :cond_0

    invoke-virtual {v4}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 673
    :cond_0
    iget-object v4, v4, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_1

    .line 676
    :cond_1
    if-eqz v4, :cond_3

    .line 677
    invoke-virtual {v4}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v0

    .line 678
    if-nez p4, :cond_2

    .line 679
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->h:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    iget-object v2, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4, p3, v1, v2}, Ljsr166y/ConcurrentReferenceHashMap$c;->c(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    return-object v0

    .line 682
    :cond_3
    const/4 v4, 0x0

    .line 683
    :try_start_1
    iget v5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    .line 684
    invoke-virtual {p0, p1, p2, v3, p3}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjsr166y/ConcurrentReferenceHashMap$c;Ljava/lang/Object;)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v3

    aput-object v3, v1, v2

    .line 685
    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_2

    .line 689
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method a(Ljsr166y/ConcurrentReferenceHashMap$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 558
    :try_start_0
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->b()V

    .line 559
    invoke-virtual {p1}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 561
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjsr166y/ConcurrentReferenceHashMap$c;Ljava/lang/Object;)Ljsr166y/ConcurrentReferenceHashMap$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;TV;)",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Ljsr166y/ConcurrentReferenceHashMap$c;

    iget-object v5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->g:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    iget-object v6, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->h:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    iget-object v7, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Ljsr166y/ConcurrentReferenceHashMap$c;-><init>(Ljava/lang/Object;ILjsr166y/ConcurrentReferenceHashMap$c;Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method a([Ljsr166y/ConcurrentReferenceHashMap$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 531
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->e:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->c:I

    .line 532
    iput-object p1, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 533
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    .line 534
    return-void
.end method

.method a(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 597
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 599
    array-length v1, v0

    move v2, v5

    .line 600
    :goto_0
    if-ge v2, v1, :cond_3

    .line 601
    aget-object v3, v0, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 602
    iget-object v4, v3, Ljsr166y/ConcurrentReferenceHashMap$c;->c:Ljava/lang/Object;

    .line 605
    if-nez v4, :cond_0

    .line 606
    invoke-virtual {p0, v3}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljsr166y/ConcurrentReferenceHashMap$c;)Ljava/lang/Object;

    move-result-object v4

    .line 610
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    const/4 v0, 0x1

    .line 615
    :goto_3
    return v0

    .line 608
    :cond_0
    invoke-virtual {v3, v4}, Ljsr166y/ConcurrentReferenceHashMap$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 601
    :cond_1
    iget-object v3, v3, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_1

    .line 600
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v5

    .line 615
    goto :goto_3
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 621
    :try_start_0
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->b()V

    .line 622
    invoke-virtual {p0, p2}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(I)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    .line 623
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 624
    :cond_0
    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_0

    .line 626
    :cond_1
    const/4 v1, 0x0

    .line 627
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    const/4 v1, 0x1

    .line 629
    iget-object v2, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->h:Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;

    iget-object v3, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p4, v2, v3}, Ljsr166y/ConcurrentReferenceHashMap$c;->c(Ljava/lang/Object;Ljsr166y/ConcurrentReferenceHashMap$ReferenceType;Ljava/lang/ref/ReferenceQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v0, v1

    .line 633
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 767
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 769
    if-nez p4, :cond_0

    .line 770
    :try_start_0
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->b()V

    .line 771
    :cond_0
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    sub-int/2addr v0, v3

    .line 772
    iget-object v1, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 773
    array-length v2, v1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    .line 774
    aget-object v3, v1, v2

    move-object v4, v3

    .line 778
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, v4, Ljsr166y/ConcurrentReferenceHashMap$c;->a:Ljava/lang/Object;

    if-eq p1, v5, :cond_2

    if-nez p4, :cond_1

    iget v5, v4, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    if-ne p2, v5, :cond_1

    invoke-virtual {v4}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 779
    :cond_1
    iget-object v4, v4, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_0

    .line 781
    :cond_2
    const/4 v5, 0x0

    .line 782
    if-eqz v4, :cond_6

    .line 783
    invoke-virtual {v4}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v6

    .line 784
    if-eqz p3, :cond_3

    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 789
    :cond_3
    iget v5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    .line 790
    iget-object v5, v4, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    move-object v10, v3

    move-object v3, v5

    move v5, v0

    move-object v0, v10

    .line 791
    :goto_1
    if-eq v0, v4, :cond_5

    .line 792
    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v7

    .line 793
    if-nez v7, :cond_4

    .line 794
    add-int/lit8 v5, v5, -0x1

    .line 791
    :goto_2
    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_1

    .line 798
    :cond_4
    iget v8, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->b()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v3, v9}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;ILjsr166y/ConcurrentReferenceHashMap$c;Ljava/lang/Object;)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v3

    goto :goto_2

    .line 800
    :cond_5
    aput-object v3, v1, v2

    .line 801
    iput v5, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 806
    :goto_3
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    throw v0

    :cond_6
    move-object v0, v5

    goto :goto_3
.end method

.method b(I)Ljsr166y/ConcurrentReferenceHashMap$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljsr166y/ConcurrentReferenceHashMap$c",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 541
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 812
    :goto_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljsr166y/ConcurrentReferenceHashMap$f;

    if-eqz v0, :cond_0

    .line 813
    invoke-interface {v0}, Ljsr166y/ConcurrentReferenceHashMap$f;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljsr166y/ConcurrentReferenceHashMap$f;->a()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    goto :goto_0

    .line 815
    :cond_0
    return-void
.end method

.method b(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    .line 585
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p0, p2}, Ljsr166y/ConcurrentReferenceHashMap$h;->b(I)Ljsr166y/ConcurrentReferenceHashMap$c;

    move-result-object v0

    .line 587
    :goto_0
    if-eqz v0, :cond_1

    .line 588
    iget v1, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->b:I

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Ljsr166y/ConcurrentReferenceHashMap$c;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljsr166y/ConcurrentReferenceHashMap$h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v0, 0x1

    .line 593
    :goto_1
    return v0

    .line 590
    :cond_0
    iget-object v0, v0, Ljsr166y/ConcurrentReferenceHashMap$c;->d:Ljsr166y/ConcurrentReferenceHashMap$c;

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 818
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->lock()V

    .line 821
    :try_start_0
    iget-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->d:[Ljsr166y/ConcurrentReferenceHashMap$c;

    .line 822
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 823
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    :cond_0
    iget v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->b:I

    .line 826
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->f:Ljava/lang/ref/ReferenceQueue;

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Ljsr166y/ConcurrentReferenceHashMap$h;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    .line 832
    :cond_1
    return-void

    .line 829
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljsr166y/ConcurrentReferenceHashMap$h;->unlock()V

    throw v0
.end method
