.class Landroid/support/v4/app/ac;
.super Landroid/support/v4/app/aa;
.source "LoaderManager.java"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/n",
            "<",
            "Landroid/support/v4/app/ad;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/n",
            "<",
            "Landroid/support/v4/app/ad;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/String;

.field e:Landroid/support/v4/app/FragmentActivity;

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/ac;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 1

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    .line 194
    new-instance v0, Landroid/support/v4/b/n;

    invoke-direct {v0}, Landroid/support/v4/b/n;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    .line 200
    new-instance v0, Landroid/support/v4/b/n;

    invoke-direct {v0}, Landroid/support/v4/b/n;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    .line 478
    iput-object p1, p0, Landroid/support/v4/app/ac;->d:Ljava/lang/String;

    .line 479
    iput-object p2, p0, Landroid/support/v4/app/ac;->e:Landroid/support/v4/app/FragmentActivity;

    .line 480
    iput-boolean p3, p0, Landroid/support/v4/app/ac;->f:Z

    .line 481
    return-void
.end method

.method private b(ILandroid/os/Bundle;Landroid/support/v4/app/ab;)Landroid/support/v4/app/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/ab",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/ad;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Landroid/support/v4/app/ad;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/ad;-><init>(Landroid/support/v4/app/ac;ILandroid/os/Bundle;Landroid/support/v4/app/ab;)V

    .line 490
    invoke-interface {p3, p1, p2}, Landroid/support/v4/app/ab;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/c;

    move-result-object v1

    .line 491
    iput-object v1, v0, Landroid/support/v4/app/ad;->d:Landroid/support/v4/content/c;

    .line 492
    return-object v0
.end method

.method private c(ILandroid/os/Bundle;Landroid/support/v4/app/ab;)Landroid/support/v4/app/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/ab",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/app/ad;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 498
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/ac;->h:Z

    .line 499
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/ac;->b(ILandroid/os/Bundle;Landroid/support/v4/app/ab;)Landroid/support/v4/app/ad;

    move-result-object v0

    .line 500
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ac;->a(Landroid/support/v4/app/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iput-boolean v1, p0, Landroid/support/v4/app/ac;->h:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/support/v4/app/ac;->h:Z

    throw v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroid/support/v4/app/ab;)Landroid/support/v4/content/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/ab",
            "<TD;>;)",
            "Landroid/support/v4/content/c",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->h:Z

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/n;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    .line 549
    sget-boolean v1, Landroid/support/v4/app/ac;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    if-nez v0, :cond_4

    .line 553
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/ac;->c(ILandroid/os/Bundle;Landroid/support/v4/app/ab;)Landroid/support/v4/app/ad;

    move-result-object v0

    .line 554
    sget-boolean v1, Landroid/support/v4/app/ac;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_2
    :goto_0
    iget-boolean v1, v0, Landroid/support/v4/app/ad;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/support/v4/app/ac;->f:Z

    if-eqz v1, :cond_3

    .line 562
    iget-object v1, v0, Landroid/support/v4/app/ad;->d:Landroid/support/v4/content/c;

    iget-object v2, v0, Landroid/support/v4/app/ad;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ad;->b(Landroid/support/v4/content/c;Ljava/lang/Object;)V

    .line 565
    :cond_3
    iget-object v0, v0, Landroid/support/v4/app/ad;->d:Landroid/support/v4/content/c;

    return-object v0

    .line 556
    :cond_4
    sget-boolean v1, Landroid/support/v4/app/ac;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_5
    iput-object p3, v0, Landroid/support/v4/app/ad;->c:Landroid/support/v4/app/ab;

    goto :goto_0
.end method

.method a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Landroid/support/v4/app/ac;->e:Landroid/support/v4/app/FragmentActivity;

    .line 485
    return-void
.end method

.method a(Landroid/support/v4/app/ad;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    iget v1, p1, Landroid/support/v4/app/ad;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/b/n;->b(ILjava/lang/Object;)V

    .line 509
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/support/v4/app/ad;->a()V

    .line 515
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 802
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 804
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 805
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    .line 806
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v4, v1}, Landroid/support/v4/b/n;->d(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 807
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/ad;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 804
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 811
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 812
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 815
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    .line 816
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v3, v2}, Landroid/support/v4/b/n;->d(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/ad;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 825
    .line 826
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v4

    move v2, v1

    move v3, v1

    .line 827
    :goto_0
    if-ge v2, v4, :cond_1

    .line 828
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v2}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    .line 829
    iget-boolean v5, v0, Landroid/support/v4/app/ad;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/ad;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    .line 827
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 829
    goto :goto_1

    .line 831
    :cond_1
    return v3
.end method

.method b()V
    .locals 4

    .prologue
    .line 701
    sget-boolean v0, Landroid/support/v4/app/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    if-eqz v0, :cond_2

    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 705
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStart when already started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    :cond_1
    return-void

    .line 709
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    .line 713
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 714
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->a()V

    .line 713
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    .line 719
    sget-boolean v0, Landroid/support/v4/app/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    if-nez v0, :cond_1

    .line 721
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 723
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doStop when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 728
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->e()V

    .line 727
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 730
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    .line 734
    sget-boolean v0, Landroid/support/v4/app/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    if-nez v0, :cond_2

    .line 736
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 738
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called doRetain when not started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    :cond_1
    return-void

    .line 742
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ac;->g:Z

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ac;->f:Z

    .line 744
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 745
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->b()V

    .line 744
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method e()V
    .locals 3

    .prologue
    .line 750
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->g:Z

    if-eqz v0, :cond_1

    .line 751
    sget-boolean v0, Landroid/support/v4/app/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished Retaining in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ac;->g:Z

    .line 754
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 755
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->c()V

    .line 754
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_1
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 762
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/ad;->k:Z

    .line 761
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 768
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->d()V

    .line 767
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/support/v4/app/ac;->g:Z

    if-nez v0, :cond_2

    .line 774
    sget-boolean v0, Landroid/support/v4/app/ac;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Active in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 776
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->f()V

    .line 775
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 778
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->c()V

    .line 781
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/ac;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying Inactive in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 783
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/n;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;

    invoke-virtual {v0}, Landroid/support/v4/app/ad;->f()V

    .line 782
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 785
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/b/n;

    invoke-virtual {v0}, Landroid/support/v4/b/n;->c()V

    .line 786
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 791
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    iget-object v1, p0, Landroid/support/v4/app/ac;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 795
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
