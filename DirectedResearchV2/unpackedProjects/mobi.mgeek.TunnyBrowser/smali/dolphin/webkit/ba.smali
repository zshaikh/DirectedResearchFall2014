.class Ldolphin/webkit/ba;
.super Ldolphin/util/j;
.source "ColorChooser.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/ColorChooser;


# direct methods
.method constructor <init>(Ldolphin/webkit/ColorChooser;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Ldolphin/webkit/ba;->a:Ldolphin/webkit/ColorChooser;

    invoke-direct {p0}, Ldolphin/util/j;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 68
    iget-object v1, p0, Ldolphin/webkit/ba;->a:Ldolphin/webkit/ColorChooser;

    invoke-static {v1, v0}, Ldolphin/webkit/ColorChooser;->a(Ldolphin/webkit/ColorChooser;I)V

    .line 70
    iget-object v0, p0, Ldolphin/webkit/ba;->a:Ldolphin/webkit/ColorChooser;

    invoke-virtual {v0}, Ldolphin/webkit/ColorChooser;->endChooser()V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/ba;->a:Ldolphin/webkit/ColorChooser;

    invoke-static {v0}, Ldolphin/webkit/ColorChooser;->a(Ldolphin/webkit/ColorChooser;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
