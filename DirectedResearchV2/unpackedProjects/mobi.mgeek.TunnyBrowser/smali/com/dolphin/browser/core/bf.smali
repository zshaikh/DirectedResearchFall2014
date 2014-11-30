.class final Lcom/dolphin/browser/core/bf;
.super Landroid/os/Handler;
.source "UsageManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/core/be;->b()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x5000
        :pswitch_0
    .end packed-switch
.end method
