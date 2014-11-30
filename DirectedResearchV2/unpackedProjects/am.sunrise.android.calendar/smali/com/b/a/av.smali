.class Lcom/b/a/av;
.super Landroid/os/Handler;
.source "Stats.java"


# instance fields
.field private final a:Lcom/b/a/au;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/b/a/au;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    iput-object p2, p0, Lcom/b/a/av;->a:Lcom/b/a/au;

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 135
    sget-object v0, Lcom/b/a/ae;->a:Landroid/os/Handler;

    new-instance v1, Lcom/b/a/aw;

    invoke-direct {v1, p0, p1}, Lcom/b/a/aw;-><init>(Lcom/b/a/av;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/b/a/av;->a:Lcom/b/a/au;

    invoke-virtual {v0}, Lcom/b/a/au;->d()V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/b/a/av;->a:Lcom/b/a/au;

    invoke-virtual {v0}, Lcom/b/a/au;->e()V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/b/a/av;->a:Lcom/b/a/au;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/au;->a(J)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/b/a/av;->a:Lcom/b/a/au;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/au;->b(J)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
