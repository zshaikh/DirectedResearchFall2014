.class Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;
.super Ljava/lang/Object;
.source "IMNiceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/impl/IMNiceInfo;->processNiceParams(Ljava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    .line 295
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 297
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->removeMessages(I)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->e(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 312
    :cond_0
    :goto_1
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    new-instance v1, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;-><init>(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)V

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;)V

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->a(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->e(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v3}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->c(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 310
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMNiceInfo$2;->a:Lcom/inmobi/androidsdk/impl/IMNiceInfo;

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/IMNiceInfo;->d(Lcom/inmobi/androidsdk/impl/IMNiceInfo;)Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/inmobi/androidsdk/impl/IMNiceInfo$a;->sendEmptyMessage(I)Z

    .line 311
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_1
.end method
