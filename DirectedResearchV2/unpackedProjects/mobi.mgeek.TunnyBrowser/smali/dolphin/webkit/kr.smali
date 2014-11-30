.class final Ldolphin/webkit/kr;
.super Landroid/os/Handler;
.source "WebViewInputDispatcher.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/kl;


# direct methods
.method public constructor <init>(Ldolphin/webkit/kl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1399
    iput-object p1, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    .line 1400
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1401
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1410
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1436
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    invoke-static {v0, v1}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kl;Z)V

    .line 1442
    :goto_0
    return-void

    .line 1418
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    invoke-static {v0}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kl;)V

    goto :goto_0

    .line 1421
    :pswitch_2
    iget-object v0, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    invoke-static {v0}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kl;)V

    goto :goto_0

    .line 1424
    :pswitch_3
    iget-object v0, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    invoke-virtual {v0}, Ldolphin/webkit/kl;->f()V

    goto :goto_0

    .line 1427
    :pswitch_4
    iget-object v0, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    invoke-static {v0, v1}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kl;Z)V

    goto :goto_0

    .line 1430
    :pswitch_5
    iget-object v0, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/kl;->b(Ldolphin/webkit/kl;Z)V

    goto :goto_0

    .line 1433
    :pswitch_6
    iget-object v1, p0, Ldolphin/webkit/kr;->a:Ldolphin/webkit/kl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/h;

    invoke-static {v1, v0}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/kl;Landroid/support/h;)V

    goto :goto_0

    .line 1410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
