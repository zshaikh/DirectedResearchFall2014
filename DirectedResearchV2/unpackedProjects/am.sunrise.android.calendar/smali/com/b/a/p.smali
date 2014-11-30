.class Lcom/b/a/p;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# instance fields
.field private final a:Lcom/b/a/o;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/b/a/o;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    iput-object p2, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 220
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 260
    :pswitch_0
    sget-object v0, Lcom/b/a/ae;->a:Landroid/os/Handler;

    new-instance v1, Lcom/b/a/q;

    invoke-direct {v1, p0, p1}, Lcom/b/a/q;-><init>(Lcom/b/a/p;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :goto_0
    return-void

    .line 222
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/a;

    .line 223
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->c(Lcom/b/a/a;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/a;

    .line 228
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->d(Lcom/b/a/a;)V

    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d;

    .line 233
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->e(Lcom/b/a/d;)V

    goto :goto_0

    .line 237
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d;

    .line 238
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->d(Lcom/b/a/d;)V

    goto :goto_0

    .line 242
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/d;

    .line 243
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->f(Lcom/b/a/d;)V

    goto :goto_0

    .line 247
    :pswitch_6
    iget-object v0, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v0}, Lcom/b/a/o;->b()V

    goto :goto_0

    .line 251
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 252
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    invoke-virtual {v1, v0}, Lcom/b/a/o;->b(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 256
    :pswitch_8
    iget-object v1, p0, Lcom/b/a/p;->a:Lcom/b/a/o;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/b/a/o;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
