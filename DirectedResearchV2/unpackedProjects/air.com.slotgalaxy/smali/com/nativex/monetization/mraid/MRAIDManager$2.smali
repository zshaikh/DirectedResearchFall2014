.class final Lcom/nativex/monetization/mraid/MRAIDManager$2;
.super Landroid/os/Handler;
.source "MRAIDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 520
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 522
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 532
    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    :goto_0
    return-void

    .line 524
    .restart local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :pswitch_0
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 528
    :pswitch_1
    # invokes: Lcom/nativex/monetization/mraid/MRAIDManager;->expireContainer(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDManager;->access$000(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
