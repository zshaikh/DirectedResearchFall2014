.class final Lcom/dolphin/browser/vg/ui/h;
.super Ljava/lang/Object;
.source "VoicePannelView.java"

# interfaces
.implements Lcom/dolphin/browser/voice/command/m;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/VoicePannelView;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;Lcom/dolphin/browser/vg/ui/d;)V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/dolphin/browser/vg/ui/h;-><init>(Lcom/dolphin/browser/vg/ui/VoicePannelView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 572
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/i;)V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->f(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 580
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 591
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->b(I)V

    .line 592
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 593
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/h;->a:Lcom/dolphin/browser/vg/ui/VoicePannelView;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/VoicePannelView;->g(Lcom/dolphin/browser/vg/ui/VoicePannelView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    return-void
.end method
