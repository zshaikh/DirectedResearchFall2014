.class Lcom/dolphin/browser/b/k;
.super Landroid/os/HandlerThread;
.source "ImageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/b/a;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/dolphin/browser/b/j;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/b/a;)V
    .locals 1

    .prologue
    .line 602
    iput-object p1, p0, Lcom/dolphin/browser/b/k;->a:Lcom/dolphin/browser/b/a;

    .line 603
    const-string v0, "ImageLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/b/k;->c:Z

    .line 604
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/b/k;)Lcom/dolphin/browser/b/j;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/b/k;->d:Lcom/dolphin/browser/b/j;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 628
    .line 629
    iget-object v0, p0, Lcom/dolphin/browser/b/k;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v0}, Lcom/dolphin/browser/b/a;->e(Lcom/dolphin/browser/b/a;)Lcom/dolphin/browser/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/b/n;->a()Lcom/dolphin/browser/b/j;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_1

    .line 631
    iput-object v0, p0, Lcom/dolphin/browser/b/k;->d:Lcom/dolphin/browser/b/j;

    .line 632
    iget-object v1, v0, Lcom/dolphin/browser/b/j;->a:Ljava/lang/String;

    .line 633
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/dolphin/browser/b/k;->a:Lcom/dolphin/browser/b/a;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/b/a;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/b/k;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v1}, Lcom/dolphin/browser/b/a;->f(Lcom/dolphin/browser/b/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 637
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Lcom/dolphin/browser/b/k;->a:Lcom/dolphin/browser/b/a;

    invoke-static {v0}, Lcom/dolphin/browser/b/a;->f(Lcom/dolphin/browser/b/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/b/k;->d:Lcom/dolphin/browser/b/j;

    .line 641
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/b/k;)Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/dolphin/browser/b/k;->c:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/dolphin/browser/b/k;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 611
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/dolphin/browser/b/k;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/dolphin/browser/b/k;->b:Landroid/os/Handler;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/b/k;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 614
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 621
    iput-boolean v1, p0, Lcom/dolphin/browser/b/k;->c:Z

    .line 622
    invoke-direct {p0}, Lcom/dolphin/browser/b/k;->b()V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/b/k;->c:Z

    .line 624
    return v1
.end method
