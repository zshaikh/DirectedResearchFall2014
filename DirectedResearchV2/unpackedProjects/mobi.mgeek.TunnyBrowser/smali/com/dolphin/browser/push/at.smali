.class final Lcom/dolphin/browser/push/at;
.super Landroid/os/Handler;
.source "PushProcessor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/push/ag;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    .line 126
    sparse-switch v0, :sswitch_data_0

    .line 165
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 168
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->b()V

    goto :goto_0

    .line 131
    :sswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->e()V

    goto :goto_0

    .line 134
    :sswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->f()V

    goto :goto_0

    .line 137
    :sswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->h()V

    goto :goto_0

    .line 140
    :sswitch_4
    iget-object v0, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/ag;->a(I)V

    goto :goto_0

    .line 143
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/push/au;

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget-object v2, v0, Lcom/dolphin/browser/push/au;->a:Ljava/util/Map;

    iget-object v0, v0, Lcom/dolphin/browser/push/au;->b:Lcom/dolphin/browser/push/as;

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/push/ag;->a(Ljava/util/Map;Lcom/dolphin/browser/push/as;)V

    goto :goto_0

    .line 147
    :sswitch_6
    iget-object v1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/ag;->c(Ljava/util/Map;)V

    goto :goto_0

    .line 150
    :sswitch_7
    iget-object v1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/ag;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 153
    :sswitch_8
    iget-object v1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/ag;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :sswitch_9
    iget-object v1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/ag;->b(Ljava/util/Map;)V

    goto :goto_0

    .line 159
    :sswitch_a
    iget-object v1, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/push/ag;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :sswitch_b
    iget-object v0, p0, Lcom/dolphin/browser/push/at;->a:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->p()V

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
        0xcb -> :sswitch_8
        0xcc -> :sswitch_a
        0x12c -> :sswitch_9
        0x320 -> :sswitch_b
    .end sparse-switch
.end method
