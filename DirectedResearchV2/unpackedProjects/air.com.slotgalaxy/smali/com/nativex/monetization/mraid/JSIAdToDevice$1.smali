.class final Lcom/nativex/monetization/mraid/JSIAdToDevice$1;
.super Landroid/os/Handler;
.source "JSIAdToDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/JSIAdToDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;

    .line 55
    .local v0, "data":Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 103
    .end local v0    # "data":Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 57
    .restart local v0    # "data":Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;
    :pswitch_1
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->open(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_2
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->close()V

    goto :goto_0

    .line 63
    :pswitch_3
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->expand(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_4
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setExpandProperties(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_5
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setOrientationProperties(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_6
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setResizeProperties(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_7
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->resize()V

    goto :goto_0

    .line 78
    :pswitch_8
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_9
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->loaded()V

    goto :goto_0

    .line 84
    :pswitch_a
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->playVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_b
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->storePicture(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_c
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->createCalendarEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :pswitch_d
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->useCustomClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    :pswitch_e
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->data:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$000(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->setPageSize(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :pswitch_f
    # getter for: Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->dataHandler:Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;->access$100(Lcom/nativex/monetization/mraid/JSIAdToDevice$HandlerData;)Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->adConverted()V

    goto/16 :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
