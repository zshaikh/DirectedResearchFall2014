.class Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;
.super Landroid/os/Handler;
.source "IMNiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/IMNiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/androidsdk/impl/IMNiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->a:Ljava/lang/ref/WeakReference;

    .line 247
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 261
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->b(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V

    .line 255
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 256
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
