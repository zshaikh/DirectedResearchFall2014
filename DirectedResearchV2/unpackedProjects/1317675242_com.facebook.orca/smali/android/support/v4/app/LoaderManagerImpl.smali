.class Landroid/support/v4/app/LoaderManagerImpl;
.super Landroid/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/HCSparseArray",
            "<",
            "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/app/FragmentActivity;

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V

    .line 187
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    .line 193
    new-instance v0, Landroid/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Landroid/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    .line 452
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->d:Landroid/support/v4/app/FragmentActivity;

    .line 453
    iput-boolean p2, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    .line 454
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 671
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

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

    .line 672
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-eqz v0, :cond_2

    .line 673
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 675
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

    .line 686
    :cond_1
    return-void

    .line 679
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    .line 683
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 684
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a()V

    .line 683
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl;->d:Landroid/support/v4/app/FragmentActivity;

    .line 458
    return-void
.end method

.method a(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/HCSparseArray;->b(ILjava/lang/Object;)V

    .line 482
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a()V

    .line 488
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 759
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 761
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 762
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 763
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/HCSparseArray;->e(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 764
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 761
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 769
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 771
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 772
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 773
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/HCSparseArray;->e(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 774
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 771
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 778
    :cond_1
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 689
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

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

    .line 690
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v0, :cond_1

    .line 691
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 693
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

    .line 701
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 698
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d()V

    .line 697
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 700
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    goto :goto_0
.end method

.method c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 704
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

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

    .line 705
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    if-nez v0, :cond_2

    .line 706
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 708
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

    .line 717
    :cond_1
    return-void

    .line 712
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    .line 713
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->e:Z

    .line 714
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 715
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b()V

    .line 714
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    .line 720
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-eqz v0, :cond_1

    .line 721
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

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

    .line 723
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    .line 724
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 725
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c()V

    .line 724
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 728
    :cond_1
    return-void
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 731
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->f:Z

    if-nez v0, :cond_1

    .line 732
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

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

    .line 733
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 734
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e()V

    .line 733
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 738
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->a:Z

    if-eqz v0, :cond_2

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

    .line 739
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->a()I

    move-result v0

    sub-int/2addr v0, v3

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 740
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e()V

    .line 739
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 742
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/app/HCSparseArray;->b()V

    .line 743
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 748
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->d:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 752
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
