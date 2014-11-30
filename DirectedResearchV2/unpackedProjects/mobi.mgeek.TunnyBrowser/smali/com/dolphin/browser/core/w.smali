.class final Lcom/dolphin/browser/core/w;
.super Landroid/os/Handler;
.source "NetworkBoost.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 103
    return-void

    .line 89
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/core/t;->f()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/core/y;

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/y;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->a(Ljava/lang/String;)V

    .line 97
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
