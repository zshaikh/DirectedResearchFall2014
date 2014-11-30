.class Ldolphin/webkit/l;
.super Ldolphin/util/j;
.source "BackgroundLoader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/j;


# direct methods
.method constructor <init>(Ldolphin/webkit/j;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Ldolphin/webkit/l;->a:Ldolphin/webkit/j;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    :pswitch_0
    return-void

    .line 268
    :pswitch_1
    const-string v0, "BackgroundLoader"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Ldolphin/webkit/l;->a:Ldolphin/webkit/j;

    invoke-static {v0}, Ldolphin/webkit/j;->g(Ldolphin/webkit/j;)V

    goto :goto_0

    .line 272
    :pswitch_2
    const-string v0, "BackgroundLoader"

    const-string v1, "moveToState:"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Ldolphin/webkit/l;->a:Ldolphin/webkit/j;

    invoke-static {}, Ldolphin/webkit/o;->values()[Ldolphin/webkit/o;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ldolphin/webkit/j;->b(Ldolphin/webkit/j;Ldolphin/webkit/o;Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
