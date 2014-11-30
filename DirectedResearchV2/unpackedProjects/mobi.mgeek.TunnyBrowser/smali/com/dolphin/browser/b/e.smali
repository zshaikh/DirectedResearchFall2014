.class Lcom/dolphin/browser/b/e;
.super Landroid/os/Handler;
.source "ImageManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/b/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/b/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    .line 550
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v1, v0}, Lcom/dolphin/browser/b/a;->a(Lcom/dolphin/browser/b/a;Z)Z

    .line 553
    iget-object v1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v1}, Lcom/dolphin/browser/b/a;->c(Lcom/dolphin/browser/b/a;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 554
    iget-object v1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v1}, Lcom/dolphin/browser/b/a;->d(Lcom/dolphin/browser/b/a;)[Lcom/dolphin/browser/b/k;

    move-result-object v1

    if-nez v1, :cond_2

    .line 555
    new-array v2, v5, [Lcom/dolphin/browser/b/k;

    move v1, v0

    .line 556
    :goto_1
    if-ge v1, v5, :cond_1

    .line 557
    new-instance v3, Lcom/dolphin/browser/b/k;

    iget-object v4, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-direct {v3, v4}, Lcom/dolphin/browser/b/k;-><init>(Lcom/dolphin/browser/b/a;)V

    aput-object v3, v2, v1

    .line 558
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/dolphin/browser/b/k;->start()V

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v1, v2}, Lcom/dolphin/browser/b/a;->a(Lcom/dolphin/browser/b/a;[Lcom/dolphin/browser/b/k;)[Lcom/dolphin/browser/b/k;

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v1}, Lcom/dolphin/browser/b/a;->d(Lcom/dolphin/browser/b/a;)[Lcom/dolphin/browser/b/k;

    move-result-object v1

    .line 563
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 564
    invoke-static {v3}, Lcom/dolphin/browser/b/k;->b(Lcom/dolphin/browser/b/k;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 565
    invoke-virtual {v3}, Lcom/dolphin/browser/b/k;->a()V

    goto :goto_0

    .line 563
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 573
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v0}, Lcom/dolphin/browser/b/a;->c(Lcom/dolphin/browser/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v1, p0, Lcom/dolphin/browser/b/e;->a:Lcom/dolphin/browser/b/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/b/j;

    invoke-static {v1, v0}, Lcom/dolphin/browser/b/a;->a(Lcom/dolphin/browser/b/a;Lcom/dolphin/browser/b/j;)V

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
