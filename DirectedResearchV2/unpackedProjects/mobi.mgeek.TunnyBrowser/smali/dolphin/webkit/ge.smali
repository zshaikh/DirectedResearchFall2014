.class Ldolphin/webkit/ge;
.super Ldolphin/util/j;
.source "Prereader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/Prereader;


# direct methods
.method constructor <init>(Ldolphin/webkit/Prereader;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Ldolphin/webkit/ge;->a:Ldolphin/webkit/Prereader;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return-void

    .line 213
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/ge;->a:Ldolphin/webkit/Prereader;

    invoke-static {v0}, Ldolphin/webkit/Prereader;->f(Ldolphin/webkit/Prereader;)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v0, p0, Ldolphin/webkit/ge;->a:Ldolphin/webkit/Prereader;

    invoke-static {}, Ldolphin/webkit/gm;->values()[Ldolphin/webkit/gm;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v1, v2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ldolphin/webkit/Prereader;->b(Ldolphin/webkit/Prereader;Ldolphin/webkit/gm;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
