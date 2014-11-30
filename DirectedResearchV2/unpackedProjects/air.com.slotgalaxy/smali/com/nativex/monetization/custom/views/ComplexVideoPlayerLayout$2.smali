.class final Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$2;
.super Landroid/os/Handler;
.source "ComplexVideoPlayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "layout":Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    if-eqz v1, :cond_0

    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "layout":Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    check-cast v0, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;

    .line 259
    .restart local v0    # "layout":Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;
    :cond_0
    if-eqz v0, :cond_1

    .line 261
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 296
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 263
    :pswitch_1
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout$2;->removeMessages(I)V

    .line 264
    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->updateProgress()V
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$700(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 268
    :pswitch_2
    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hideControls()V
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$800(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 272
    :pswitch_3
    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->hideControlsHint()V
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$900(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 276
    :pswitch_4
    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->updateBuffer()V
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1000(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 280
    :pswitch_5
    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onHideControlsAnimationEnd()V
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1100(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 292
    :pswitch_6
    # invokes: Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->onHideControlsHintAnimation()V
    invoke-static {v0}, Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;->access$1200(Lcom/nativex/monetization/custom/views/ComplexVideoPlayerLayout;)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
