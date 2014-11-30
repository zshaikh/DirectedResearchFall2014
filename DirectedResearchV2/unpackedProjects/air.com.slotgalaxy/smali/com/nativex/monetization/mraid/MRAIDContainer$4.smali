.class final Lcom/nativex/monetization/mraid/MRAIDContainer$4;
.super Landroid/os/Handler;
.source "MRAIDContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1416
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1419
    const/4 v0, 0x0

    .line 1420
    .local v0, "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_0

    .line 1421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    check-cast v0, Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 1423
    .restart local v0    # "container":Lcom/nativex/monetization/mraid/MRAIDContainer;
    :cond_0
    if-nez v0, :cond_1

    .line 1444
    :goto_0
    return-void

    .line 1427
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1429
    :pswitch_0
    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->bringToFront()V

    goto :goto_0

    .line 1433
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v1, v1, 0x1

    # invokes: Lcom/nativex/monetization/mraid/MRAIDContainer;->attachToCurrentActivity(I)Z
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$500(Lcom/nativex/monetization/mraid/MRAIDContainer;I)Z

    goto :goto_0

    .line 1437
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->loadData(I)V

    goto :goto_0

    .line 1441
    :pswitch_3
    # invokes: Lcom/nativex/monetization/mraid/MRAIDContainer;->onCloseAnimationEnd()V
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->access$400(Lcom/nativex/monetization/mraid/MRAIDContainer;)V

    goto :goto_0

    .line 1427
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
