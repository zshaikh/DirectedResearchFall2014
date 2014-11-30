.class Lcom/dolphin/player/ai;
.super Landroid/os/Handler;
.source "VideoPlayer.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/player/ag;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->a()D

    move-result-wide v0

    double-to-int v1, v0

    .line 240
    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-virtual {v0}, Lcom/dolphin/player/ag;->b()D

    move-result-wide v2

    double-to-int v5, v2

    .line 241
    if-lez v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    iput v1, v0, Lcom/dolphin/player/ag;->a:I

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->d(Lcom/dolphin/player/ag;)Lcom/dolphin/player/w;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->a(Lcom/dolphin/player/ag;)Lcom/dolphin/player/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/player/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-static {v0}, Lcom/dolphin/player/ag;->d(Lcom/dolphin/player/ag;)Lcom/dolphin/player/w;

    move-result-object v0

    int-to-double v1, v1

    iget-object v3, p0, Lcom/dolphin/player/ai;->a:Lcom/dolphin/player/ag;

    invoke-static {v3}, Lcom/dolphin/player/ag;->e(Lcom/dolphin/player/ag;)I

    move-result v3

    int-to-double v3, v3

    int-to-double v5, v5

    invoke-interface/range {v0 .. v6}, Lcom/dolphin/player/w;->a(DDD)V

    .line 248
    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/player/ai;->sendEmptyMessageDelayed(IJ)Z

    .line 250
    :cond_2
    return-void
.end method
