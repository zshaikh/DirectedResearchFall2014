.class Lcom/dolphin/browser/titlebar/c;
.super Landroid/os/Handler;
.source "HorizontalProgressBar.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/c;->a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/c;->a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->a(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/c;->a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->b(Lcom/dolphin/browser/titlebar/HorizontalProgressBar;)I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/titlebar/c;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/c;->a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->invalidate()V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/titlebar/c;->removeMessages(I)V

    .line 148
    const-wide/16 v0, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/dolphin/browser/titlebar/c;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/c;->a:Lcom/dolphin/browser/titlebar/HorizontalProgressBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/HorizontalProgressBar;->invalidate()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
