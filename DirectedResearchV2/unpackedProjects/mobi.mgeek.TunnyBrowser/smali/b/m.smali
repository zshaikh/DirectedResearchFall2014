.class Lb/m;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lb/m;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lb/f;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lb/m;-><init>()V

    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lb/m;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 640
    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 643
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 644
    iget-object v1, p0, Lb/m;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 645
    return v0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lb/m;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 655
    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 658
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 659
    if-nez v0, :cond_1

    .line 660
    iget-object v1, p0, Lb/m;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 664
    :goto_0
    return v0

    .line 662
    :cond_1
    iget-object v1, p0, Lb/m;->a:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 669
    invoke-direct {p0}, Lb/m;->a()I

    move-result v0

    .line 671
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 672
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :goto_0
    invoke-direct {p0}, Lb/m;->b()I

    .line 679
    return-void

    .line 674
    :cond_0
    :try_start_1
    sget-object v0, Lb/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 677
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lb/m;->b()I

    throw v0
.end method
