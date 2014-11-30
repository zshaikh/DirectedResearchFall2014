.class Ldolphin/webkit/fy;
.super Landroid/os/Handler;
.source "PopupZoomer.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/fv;


# direct methods
.method constructor <init>(Ldolphin/webkit/fv;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Ldolphin/webkit/fy;->a:Ldolphin/webkit/fv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/fy;->a:Ldolphin/webkit/fv;

    invoke-static {v0}, Ldolphin/webkit/fv;->a(Ldolphin/webkit/fv;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ldolphin/webkit/fy;->a:Ldolphin/webkit/fv;

    invoke-static {v0}, Ldolphin/webkit/fv;->a(Ldolphin/webkit/fv;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
