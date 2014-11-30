.class public Lcom/dolphin/browser/push/ag;
.super Ljava/lang/Object;
.source "PushProcessor.java"

# interfaces
.implements Lcom/dolphin/browser/push/o;


# instance fields
.field private a:Landroid/util/SparseIntArray;

.field private b:Lcom/dolphin/browser/push/n;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/HandlerThread;

.field private e:Lorg/b/b/a;

.field private f:Lorg/b/b/a/a;

.field private g:[Lorg/b/b/a/a;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/push/as;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Lorg/c/a/e/o;

.field private p:Lorg/b/a/a/e;

.field private q:Lcom/dolphin/browser/push/http/a;

.field private r:Lorg/b/a/a/e;

.field private s:Lorg/b/a/a/e;

.field private t:Lorg/b/a/a/e;

.field private u:Lorg/b/a/a/e;

.field private v:Lorg/b/a/a/e;

.field private w:Lorg/b/a/a/e;

.field private x:Lcom/dolphin/browser/push/ax;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->a:Landroid/util/SparseIntArray;

    .line 182
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->l:Ljava/util/Map;

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->m:Ljava/util/Map;

    .line 573
    new-instance v0, Lcom/dolphin/browser/push/ah;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/ah;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->p:Lorg/b/a/a/e;

    .line 661
    new-instance v0, Lcom/dolphin/browser/push/aj;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/aj;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->q:Lcom/dolphin/browser/push/http/a;

    .line 678
    new-instance v0, Lcom/dolphin/browser/push/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/ak;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->r:Lorg/b/a/a/e;

    .line 687
    new-instance v0, Lcom/dolphin/browser/push/al;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/al;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->s:Lorg/b/a/a/e;

    .line 696
    new-instance v0, Lcom/dolphin/browser/push/am;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/am;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->t:Lorg/b/a/a/e;

    .line 705
    new-instance v0, Lcom/dolphin/browser/push/an;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/an;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->u:Lorg/b/a/a/e;

    .line 715
    new-instance v0, Lcom/dolphin/browser/push/ao;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/ao;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->v:Lorg/b/a/a/e;

    .line 737
    new-instance v0, Lcom/dolphin/browser/push/ap;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/ap;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->w:Lorg/b/a/a/e;

    .line 939
    new-instance v0, Lcom/dolphin/browser/push/aq;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/aq;-><init>(Lcom/dolphin/browser/push/ag;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->x:Lcom/dolphin/browser/push/ax;

    .line 190
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->t()V

    .line 191
    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 554
    .line 555
    iget v0, p0, Lcom/dolphin/browser/push/ag;->k:I

    .line 556
    if-gez v0, :cond_0

    .line 557
    const-string v0, "invalid retry count"

    .line 563
    :goto_0
    return-object v0

    .line 558
    :cond_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 559
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_1
    const-string v0, "[10,+\u221e)"

    goto :goto_0
.end method

.method private B()V
    .locals 5

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->A()Ljava/lang/String;

    move-result-object v0

    .line 568
    const-string v1, "DBS Push"

    const-string v2, "connect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trigger_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private C()V
    .locals 5

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->A()Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "DBS Push"

    const-string v2, "connect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "succeed_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 780
    const-string v0, "PushProcessor"

    const-string v1, "Connection to Server Opened"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/push/ag;->j:I

    .line 782
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->r()V

    .line 783
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->q:Lcom/dolphin/browser/push/http/a;

    invoke-static {v0}, Lcom/dolphin/browser/push/http/NetworkStateObserver;->b(Lcom/dolphin/browser/push/http/a;)V

    .line 784
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->b()V

    .line 786
    new-instance v0, Lcom/dolphin/browser/push/data/e;

    invoke-direct {v0}, Lcom/dolphin/browser/push/data/e;-><init>()V

    .line 787
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    const-string v2, "/service/dolphin/device"

    invoke-virtual {v1, v2}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/e;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/b/a/a/c;->a(Ljava/lang/Object;)V

    .line 788
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    .line 789
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->s()V

    .line 793
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 794
    const-string v0, "PushProcessor"

    const-string v1, "Connection to Server Closed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->d()Z

    .line 796
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    .line 797
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->s()V

    .line 801
    const-string v0, "PushProcessor"

    const-string v1, "Connection to Server Broken"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    .line 803
    return-void
.end method

.method private G()V
    .locals 4

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->s()V

    .line 807
    const-string v0, "PushProcessor"

    const-string v1, "Connection to Server failed"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v0, p0, Lcom/dolphin/browser/push/ag;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/push/ag;->j:I

    int-to-long v0, v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 809
    const-string v0, "PushProcessor"

    const-string v1, "max retry count reached, abort"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->e()V

    .line 811
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->q:Lcom/dolphin/browser/push/http/a;

    invoke-static {v0}, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a(Lcom/dolphin/browser/push/http/a;)V

    .line 813
    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 2

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->x()V

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method

.method private a(IJ)V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->x()V

    .line 294
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->x()V

    .line 282
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    return-void
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->x()V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 290
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/ag;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ag;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    new-instance v0, Lcom/dolphin/browser/push/ai;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/ai;-><init>(Lcom/dolphin/browser/push/ag;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 996
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/ag;->a(Ljava/util/List;)V

    .line 997
    invoke-static {}, Lcom/dolphin/browser/push/p;->a()Lcom/dolphin/browser/push/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/push/p;->a(Ljava/util/List;Z)V

    .line 998
    return-void
.end method

.method private a(Lorg/b/b/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 639
    const-string v0, "/service/dolphin/tabpush"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->s:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 640
    const-string v0, "/service/dolphin/device"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->t:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 641
    const-string v0, "/service/dolphin/sync/bookmark"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->u:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 642
    const-string v0, "/service/dolphin/sync/tab"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->v:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 644
    const-string v0, "/service/dolphin/sync/desktop"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->w:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 645
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    .line 263
    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private b(Lorg/b/b/a;)V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 651
    const-string v0, "/service/dolphin/tabpush"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->s:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->b(Lorg/b/a/a/d;)V

    .line 652
    const-string v0, "/service/dolphin/device"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->t:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->b(Lorg/b/a/a/d;)V

    .line 653
    const-string v0, "/service/dolphin/sync/bookmark"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->u:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->b(Lorg/b/a/a/d;)V

    .line 654
    const-string v0, "/service/dolphin/sync/tab"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->v:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->b(Lorg/b/a/a/d;)V

    .line 656
    const-string v0, "/service/dolphin/sync/desktop"

    invoke-virtual {p1, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->w:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->b(Lorg/b/a/a/d;)V

    .line 658
    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    .line 448
    const-string v0, "pushfail"

    .line 449
    if-eqz p1, :cond_0

    .line 450
    const-string v0, "pushsucceed"

    .line 452
    :cond_0
    const-string v1, "DBS Push"

    const-string v2, "stable"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 455
    return-void
.end method

.method private c(I)V
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->x()V

    .line 271
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 272
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1029
    iget-object v2, p0, Lcom/dolphin/browser/push/ag;->m:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1034
    if-eqz v0, :cond_0

    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 1037
    invoke-static {v0, v1}, Lcom/dolphin/browser/util/de;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1038
    const-string v1, "DBS Push"

    const-string v2, "stable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1042
    :cond_0
    return-void
.end method

.method private e(Lorg/b/a/d;)V
    .locals 5

    .prologue
    .line 609
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 611
    :try_start_0
    const-string v0, "failure"

    invoke-interface {p1, v0}, Lorg/b/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 612
    const-string v2, "httpCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 613
    if-eqz v2, :cond_0

    .line 614
    const-string v3, "httpCode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_0
    const-string v2, "exception"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_1

    .line 618
    const-string v2, "exception"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "error"

    invoke-interface {p1, v0}, Lorg/b/a/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_2

    .line 626
    const-string v2, "error"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_2
    const-string v0, "retryCount"

    iget v2, p0, Lcom/dolphin/browser/push/ag;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    :goto_1
    const-string v0, "DBS Push"

    const-string v2, "connect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    const-string v2, "client-failure"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 629
    :catch_1
    move-exception v0

    .line 630
    const-string v2, "client-error"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private t()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/dolphin/browser/push/n;

    invoke-direct {v0}, Lcom/dolphin/browser/push/n;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/push/n;->a(Lcom/dolphin/browser/push/o;)V

    .line 203
    return-void
.end method

.method private u()Lorg/b/b/a;
    .locals 4

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->v()Lorg/b/b/a/a;

    move-result-object v0

    .line 207
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->w()[Lorg/b/b/a/a;

    move-result-object v1

    .line 208
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->w()[Lorg/b/b/a/a;

    .line 209
    iget-object v2, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/n;->c()Lcom/dolphin/browser/push/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/push/data/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 210
    new-instance v3, Lorg/b/b/a;

    invoke-direct {v3, v2, v0, v1}, Lorg/b/b/a;-><init>(Ljava/lang/String;Lorg/b/b/a/a;[Lorg/b/b/a/a;)V

    .line 211
    iput-object v2, p0, Lcom/dolphin/browser/push/ag;->n:Ljava/lang/String;

    .line 212
    const-string v0, "/meta/handshake"

    invoke-virtual {v3, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->p:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 213
    const-string v0, "/meta/connect"

    invoke-virtual {v3, v0}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->r:Lorg/b/a/a/e;

    invoke-interface {v0, v1}, Lorg/b/a/a/c;->a(Lorg/b/a/a/d;)V

    .line 214
    iput-object v3, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 216
    return-object v3
.end method

.method private v()Lorg/b/b/a/a;
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->f:Lorg/b/b/a/a;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lorg/c/a/e/o;

    invoke-direct {v0}, Lorg/c/a/e/o;-><init>()V

    .line 223
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v2, "idleTimeout"

    const-wide/32 v3, 0x61a80

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v2, "maxNetworkDelay"

    const-wide/16 v3, 0x2710

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {v1, v0}, Lorg/b/d/a/a;->a(Ljava/util/Map;Lorg/c/a/e/o;)Lorg/b/d/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/push/ag;->f:Lorg/b/b/a/a;

    .line 229
    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->o:Lorg/c/a/e/o;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->f:Lorg/b/b/a/a;

    return-object v0
.end method

.method private w()[Lorg/b/b/a/a;
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->g:[Lorg/b/b/a/a;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/b/b/a/a;

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->g:[Lorg/b/b/a/a;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v1, "maxNetworkDelay"

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->g:[Lorg/b/b/a/a;

    const/4 v2, 0x0

    invoke-static {v0}, Lorg/b/b/a/f;->a(Ljava/util/Map;)Lorg/b/b/a/f;

    move-result-object v0

    aput-object v0, v1, v2

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->g:[Lorg/b/b/a/a;

    return-object v0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PushProcessor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->d:Landroid/os/HandlerThread;

    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 253
    new-instance v0, Lcom/dolphin/browser/push/at;

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/push/at;-><init>(Lcom/dolphin/browser/push/ag;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/ag;->c:Landroid/os/Handler;

    .line 255
    :cond_0
    return-void
.end method

.method private final y()Z
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->d:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 503
    const-string v0, "PushProcessor"

    const-string v3, "handshake..."

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    .line 506
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/dolphin/browser/push/n;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    const-string v0, "PushProcessor"

    const-string v2, "handshake but mAuthenticator isn\'t authenticated"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    move v0, v1

    .line 550
    :goto_0
    return v0

    .line 512
    :cond_1
    invoke-virtual {v3}, Lcom/dolphin/browser/push/n;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    const-string v0, "PushProcessor"

    const-string v3, "No other devices, cancel handshake"

    invoke-static {v0, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->d()V

    .line 518
    iput-boolean v2, p0, Lcom/dolphin/browser/push/ag;->i:Z

    .line 519
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    move v0, v1

    .line 520
    goto :goto_0

    .line 523
    :cond_2
    iput-boolean v1, p0, Lcom/dolphin/browser/push/ag;->i:Z

    .line 524
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 525
    if-nez v0, :cond_3

    .line 526
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->u()Lorg/b/b/a;

    move-result-object v0

    .line 528
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->r()V

    .line 530
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->B()V

    .line 531
    invoke-virtual {v3}, Lcom/dolphin/browser/push/n;->e()Ljava/util/Map;

    move-result-object v4

    .line 533
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/b/b/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v3}, Lcom/dolphin/browser/push/n;->i()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/push/f;->a(Ljava/util/Collection;)Z

    .line 544
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 545
    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    .line 536
    const-string v2, "DBS Push"

    const-string v3, "connect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 539
    goto :goto_0

    .line 546
    :catch_1
    move-exception v0

    .line 547
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    .line 548
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v1

    .line 550
    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->i()V

    .line 300
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->c()V

    .line 301
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/ad;->a(I)V

    .line 924
    :goto_0
    return-void

    .line 922
    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/push/ag;->a(III)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/e;)V
    .locals 3

    .prologue
    .line 847
    invoke-virtual {p1}, Lcom/dolphin/browser/DolphinService/WebService/e;->a()I

    move-result v0

    .line 848
    const/16 v1, 0x11

    if-eq v1, v0, :cond_0

    const/16 v1, 0x12

    if-ne v1, v0, :cond_1

    .line 850
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 851
    iget-object v2, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v2}, Lcom/dolphin/browser/push/n;->g()V

    .line 852
    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 853
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v2

    .line 854
    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/Account/b;->g()V

    .line 855
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->e()V

    .line 858
    return-void
.end method

.method a(Lcom/dolphin/browser/push/data/h;)V
    .locals 2

    .prologue
    .line 475
    if-eqz p1, :cond_0

    .line 476
    new-instance v0, Lcom/dolphin/browser/push/data/b;

    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/push/data/b;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/b;->c()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->a(Ljava/util/Map;)V

    .line 478
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->o()V

    .line 480
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/as;

    .line 459
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ag;->d(Ljava/lang/String;)V

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lcom/dolphin/browser/push/as;->d()V

    .line 463
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    if-eqz p1, :cond_0

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/h;

    .line 468
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->a(Lcom/dolphin/browser/push/data/h;)V

    goto :goto_0

    .line 471
    :cond_0
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 488
    if-eqz v0, :cond_0

    .line 489
    const-string v1, "/service/dolphin/tabpush"

    invoke-virtual {v0, v1}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/b/a/a/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 492
    :cond_2
    const/16 v0, 0xca

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/push/ag;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Ljava/util/Map;Lcom/dolphin/browser/push/as;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dolphin/browser/push/as;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    :cond_0
    if-eqz p2, :cond_1

    .line 412
    invoke-interface {p2}, Lcom/dolphin/browser/push/as;->b()V

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 418
    if-eqz v0, :cond_3

    .line 419
    const-string v1, "/service/dolphin/tabpush"

    invoke-virtual {v0, v1}, Lorg/b/b/a;->c(Ljava/lang/String;)Lorg/b/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/push/av;

    invoke-direct {v1, p0, p2}, Lcom/dolphin/browser/push/av;-><init>(Lcom/dolphin/browser/push/ag;Lcom/dolphin/browser/push/as;)V

    invoke-interface {v0, p1, v1}, Lorg/b/a/a/c;->a(Ljava/lang/Object;Lorg/b/a/a/e;)V

    goto :goto_0

    .line 421
    :cond_3
    if-eqz p2, :cond_1

    .line 422
    invoke-interface {p2}, Lcom/dolphin/browser/push/as;->b()V

    goto :goto_0

    .line 426
    :cond_4
    const/16 v0, 0xc8

    new-instance v1, Lcom/dolphin/browser/push/au;

    invoke-direct {v1, p1, p2}, Lcom/dolphin/browser/push/au;-><init>(Ljava/util/Map;Lcom/dolphin/browser/push/as;)V

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/push/ag;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lorg/b/a/d;)V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 584
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/b/a/d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 587
    const-string v1, "PushProcessor"

    const-string v2, "handshake successfully"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v1, 0x0

    iput v1, p0, Lcom/dolphin/browser/push/ag;->k:I

    .line 589
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->a(Lorg/b/b/a;)V

    .line 590
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->C()V

    .line 599
    :goto_0
    return-void

    .line 592
    :cond_0
    const-string v0, "PushProcessor"

    const-string v1, "handshakeListener fail"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v0, p0, Lcom/dolphin/browser/push/ag;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dolphin/browser/push/ag;->k:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 594
    const-string v0, "PushProcessor"

    const-string v1, "max handshake retry count reached, abort"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->c()V

    .line 597
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ag;->e(Lorg/b/a/d;)V

    goto :goto_0
.end method

.method protected a(Lorg/b/a/d;Lcom/dolphin/browser/push/as;)V
    .locals 4

    .prologue
    .line 431
    invoke-interface {p1}, Lorg/b/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    if-eqz p2, :cond_0

    .line 433
    invoke-interface {p2}, Lcom/dolphin/browser/push/as;->a()V

    .line 435
    :cond_0
    invoke-interface {p1}, Lorg/b/a/d;->h()Ljava/lang/String;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->l:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->c(Ljava/lang/String;)V

    .line 438
    const/16 v1, 0xcc

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/dolphin/browser/push/ag;->a(ILjava/lang/Object;J)V

    .line 444
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/b/a/d;->g()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->b(Z)V

    .line 445
    return-void

    .line 440
    :cond_2
    if-eqz p2, :cond_1

    .line 441
    invoke-interface {p2}, Lcom/dolphin/browser/push/as;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 838
    if-eqz p1, :cond_0

    .line 839
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/n;->k()Lorg/json/JSONArray;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->x:Lcom/dolphin/browser/push/ax;

    invoke-static {v0, v1}, Lcom/dolphin/browser/push/m;->a(Lorg/json/JSONArray;Lcom/dolphin/browser/push/ax;)V

    .line 841
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->f()V

    .line 843
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 335
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    const-string v0, "PushProcessor"

    const-string v1, "Not logged in, won\'t start."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/n;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/n;->f()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 344
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/b/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :cond_3
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->f()V

    goto :goto_0

    .line 349
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->c(I)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/as;

    .line 1018
    invoke-direct {p0, p1}, Lcom/dolphin/browser/push/ag;->d(Ljava/lang/String;)V

    .line 1019
    if-eqz v0, :cond_0

    .line 1020
    invoke-interface {v0}, Lcom/dolphin/browser/push/as;->c()V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    const/16 v0, 0xcb

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/push/ag;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 929
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/dolphin/browser/push/f;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 930
    const-string v1, "join"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-static {p1}, Lcom/dolphin/browser/push/m;->a(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->x:Lcom/dolphin/browser/push/ax;

    invoke-static {v0, v1}, Lcom/dolphin/browser/push/m;->a(Lorg/json/JSONArray;Lcom/dolphin/browser/push/ax;)V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    const/16 v0, 0x12c

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/push/ag;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Lorg/b/a/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 755
    if-nez v0, :cond_1

    .line 756
    iput-boolean v1, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-virtual {v0}, Lorg/b/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    iput-boolean v1, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 762
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->E()V

    goto :goto_0

    .line 766
    :cond_2
    iget-boolean v0, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 767
    invoke-interface {p1}, Lorg/b/a/d;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 768
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/dolphin/browser/push/ag;->h:Z

    if-eqz v1, :cond_4

    .line 769
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->D()V

    .line 773
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/dolphin/browser/push/ag;->h:Z

    if-nez v0, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->G()V

    goto :goto_0

    .line 770
    :cond_4
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/dolphin/browser/push/ag;->h:Z

    if-nez v0, :cond_3

    .line 771
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->F()V

    goto :goto_1
.end method

.method c()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->e()V

    .line 355
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->b()V

    .line 356
    return-void
.end method

.method c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {p1}, Lcom/dolphin/browser/push/data/h;->a(Ljava/util/Map;)Lcom/dolphin/browser/push/data/h;

    move-result-object v0

    .line 1008
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->a(Lcom/dolphin/browser/push/data/h;)V

    .line 1009
    invoke-static {}, Lcom/dolphin/browser/push/p;->a()Lcom/dolphin/browser/push/p;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/push/p;->a(Lcom/dolphin/browser/push/data/h;Z)V

    .line 1013
    :goto_0
    return-void

    .line 1011
    :cond_0
    const/16 v0, 0xc9

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/push/ag;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected c(Lorg/b/a/d;)V
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 868
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/b/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/b/a/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    const-string v0, "PushProcessor"

    const-string v1, "send message failed, disconnect client"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->g()V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    invoke-interface {p1}, Lorg/b/a/d;->d()Ljava/lang/Object;

    move-result-object v0

    .line 874
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 879
    :try_start_0
    check-cast v0, Ljava/util/Map;

    .line 880
    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 881
    const-string v2, "received"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 883
    const-string v1, "msg_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 884
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 885
    :cond_2
    :try_start_1
    const-string v2, "pub"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->c(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/n;->d()V

    .line 360
    return-void
.end method

.method protected d(Lorg/b/a/d;)V
    .locals 2

    .prologue
    .line 895
    invoke-interface {p1}, Lorg/b/a/d;->d()Ljava/lang/Object;

    move-result-object v0

    .line 896
    if-nez v0, :cond_0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 900
    :goto_0
    return-void

    .line 899
    :cond_0
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->s()V

    .line 365
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Lorg/b/b/a;->i()V

    .line 368
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->b(Lorg/b/b/a;)V

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/push/ag;->h:Z

    .line 371
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->d()V

    .line 372
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->a()V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->c(I)V

    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->z()Z

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->c(I)V

    goto :goto_0
.end method

.method g()V
    .locals 0

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->h()V

    .line 388
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->f()V

    .line 389
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->b(Lorg/b/b/a;)V

    .line 396
    invoke-virtual {v0}, Lorg/b/b/a;->j()V

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->E()V

    .line 399
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->G()V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->c(I)V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    invoke-virtual {v0}, Lorg/b/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 816
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->b:Lcom/dolphin/browser/push/n;

    invoke-virtual {v1}, Lcom/dolphin/browser/push/n;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    :cond_0
    :goto_0
    return v0

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/push/ag;->e:Lorg/b/b/a;

    .line 820
    if-eqz v1, :cond_2

    .line 821
    invoke-virtual {v1}, Lorg/b/b/a;->e()Lorg/b/b/ac;

    move-result-object v1

    .line 822
    sget-object v2, Lorg/b/b/ac;->d:Lorg/b/b/ac;

    if-eq v2, v1, :cond_0

    sget-object v2, Lorg/b/b/ac;->b:Lorg/b/b/ac;

    if-eq v2, v1, :cond_0

    sget-object v2, Lorg/b/b/ac;->c:Lorg/b/b/ac;

    if-eq v2, v1, :cond_0

    sget-object v2, Lorg/b/b/ac;->a:Lorg/b/b/ac;

    if-eq v2, v1, :cond_0

    .line 829
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/dolphin/browser/push/ag;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->e()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->a(I)V

    .line 904
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->a(I)V

    .line 908
    return-void
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/ag;->a(I)V

    .line 916
    return-void
.end method

.method o()V
    .locals 4

    .prologue
    .line 1001
    const-string v0, "DBS Push"

    const-string v1, "stable"

    const-string v2, "recnum"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 1003
    return-void
.end method

.method p()V
    .locals 3

    .prologue
    const/16 v2, 0x320

    .line 1045
    invoke-direct {p0}, Lcom/dolphin/browser/push/ag;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->q()V

    .line 1047
    const-wide/32 v0, 0x493e0

    invoke-direct {p0, v2, v0, v1}, Lcom/dolphin/browser/push/ag;->a(IJ)V

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-direct {p0, v2}, Lcom/dolphin/browser/push/ag;->c(I)V

    goto :goto_0
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method r()V
    .locals 0

    .prologue
    .line 1065
    return-void
.end method

.method s()V
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/dolphin/browser/push/ag;->q()V

    .line 1069
    const/16 v0, 0x320

    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/ag;->b(I)V

    .line 1073
    return-void
.end method
