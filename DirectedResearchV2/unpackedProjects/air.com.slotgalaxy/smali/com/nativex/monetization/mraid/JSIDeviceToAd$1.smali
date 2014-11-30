.class final Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;
.super Landroid/os/Handler;
.source "JSIDeviceToAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/JSIDeviceToAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    if-eqz v0, :cond_0

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;->removeMessages(I)V

    .line 266
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/nativex/monetization/mraid/JSIDeviceToAd$1;
    check-cast p0, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;

    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/JSIDeviceToAd$DelayedErrors;->executeCommands()V

    .line 268
    :cond_0
    return-void
.end method
