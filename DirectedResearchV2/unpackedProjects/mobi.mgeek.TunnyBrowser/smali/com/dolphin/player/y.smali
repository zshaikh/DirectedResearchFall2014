.class Lcom/dolphin/player/y;
.super Landroid/os/Handler;
.source "ProgressView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/x;


# direct methods
.method constructor <init>(Lcom/dolphin/player/x;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 243
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->a(Lcom/dolphin/player/x;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->b(Lcom/dolphin/player/x;)Lcom/dolphin/player/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->b(Lcom/dolphin/player/x;)Lcom/dolphin/player/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/player/aa;->a()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->c(Lcom/dolphin/player/x;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->d(Lcom/dolphin/player/x;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->e(Lcom/dolphin/player/x;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->d(Lcom/dolphin/player/x;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->a(Lcom/dolphin/player/x;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/dolphin/player/y;->a:Lcom/dolphin/player/x;

    invoke-static {v0}, Lcom/dolphin/player/x;->e(Lcom/dolphin/player/x;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
