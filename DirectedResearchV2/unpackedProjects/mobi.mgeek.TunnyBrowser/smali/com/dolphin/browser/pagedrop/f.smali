.class public final Lcom/dolphin/browser/pagedrop/f;
.super Landroid/os/Handler;
.source "SendAroundManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/e;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/pagedrop/e;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/f;->a:Lcom/dolphin/browser/pagedrop/e;

    .line 49
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 56
    :pswitch_0
    invoke-static {}, Lcom/dolphin/browser/pagedrop/a;->a()Lcom/dolphin/browser/pagedrop/a;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramPacket;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/pagedrop/a;->i(Ljava/net/DatagramPacket;)Z

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "SendAroundManager"

    const-string v1, "SendAroundManager PAGEDROP_CLOSE_CONNECT disconnect"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/dolphin/browser/pagedrop/c/a;->a()Lcom/dolphin/browser/pagedrop/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/c/a;->c()V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
