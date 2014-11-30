.class final Ldolphin/webkit/kt;
.super Ldolphin/util/j;
.source "WebViewInputDispatcher.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/kl;


# direct methods
.method public constructor <init>(Ldolphin/webkit/kl;Ldolphin/util/l;)V
    .locals 0

    .prologue
    .line 1450
    iput-object p1, p0, Ldolphin/webkit/kt;->a:Ldolphin/webkit/kl;

    .line 1451
    invoke-direct {p0, p2}, Ldolphin/util/j;-><init>(Ldolphin/util/l;)V

    .line 1452
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 1460
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1465
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

    .line 1462
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/kt;->a:Ldolphin/webkit/kl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldolphin/webkit/kl;->c(Ldolphin/webkit/kl;Z)V

    .line 1467
    return-void

    .line 1460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
