.class final Lcom/nativex/monetization/communication/ServerRequestManager$1;
.super Landroid/os/Handler;
.source "ServerRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/communication/ServerRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 91
    .end local p0    # "this":Lcom/nativex/monetization/communication/ServerRequestManager$1;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local p0    # "this":Lcom/nativex/monetization/communication/ServerRequestManager$1;
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/nativex/monetization/communication/requests/EndSessionRequest;

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "ServerRequestManager: Executing EndSession"

    invoke-static {v1}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 83
    # getter for: Lcom/nativex/monetization/communication/ServerRequestManager;->instance:Lcom/nativex/monetization/communication/ServerRequestManager;
    invoke-static {}, Lcom/nativex/monetization/communication/ServerRequestManager;->access$000()Lcom/nativex/monetization/communication/ServerRequestManager;

    move-result-object v1

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/nativex/monetization/communication/ServerRequestManager$1;
    check-cast p0, Lcom/nativex/monetization/communication/requests/EndSessionRequest;

    invoke-virtual {v1, p0}, Lcom/nativex/monetization/communication/ServerRequestManager;->handleEndSession(Lcom/nativex/monetization/communication/requests/EndSessionRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ServerRequestManager: Unexpected exception while ending session"

    invoke-static {v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
