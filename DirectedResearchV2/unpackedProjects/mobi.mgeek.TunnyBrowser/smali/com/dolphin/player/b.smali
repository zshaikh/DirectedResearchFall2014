.class Lcom/dolphin/player/b;
.super Landroid/os/Handler;
.source "CameraPlayer.java"


# instance fields
.field final synthetic a:Lcom/dolphin/player/a;


# direct methods
.method constructor <init>(Lcom/dolphin/player/a;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    invoke-static {v0}, Lcom/dolphin/player/a;->a(Lcom/dolphin/player/a;)Lcom/dolphin/player/o;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    invoke-interface {v0, v1}, Lcom/dolphin/player/o;->a(Lcom/dolphin/player/j;)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    invoke-static {v0}, Lcom/dolphin/player/a;->b(Lcom/dolphin/player/a;)Lcom/dolphin/player/n;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    const/16 v2, 0x2bd

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/player/n;->a(Lcom/dolphin/player/j;II)Z

    goto :goto_0

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    invoke-static {v0}, Lcom/dolphin/player/a;->b(Lcom/dolphin/player/a;)Lcom/dolphin/player/n;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/player/b;->a:Lcom/dolphin/player/a;

    const/16 v2, 0x2be

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/player/n;->a(Lcom/dolphin/player/j;II)Z

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
