.class Ldolphin/webkit/gd;
.super Landroid/os/Handler;
.source "Prereader.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/Prereader;


# direct methods
.method constructor <init>(Ldolphin/webkit/Prereader;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Ldolphin/webkit/gd;->a:Ldolphin/webkit/Prereader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v1, p0, Ldolphin/webkit/gd;->a:Ldolphin/webkit/Prereader;

    invoke-virtual {v1, v0}, Ldolphin/webkit/Prereader;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Ldolphin/webkit/gd;->a:Ldolphin/webkit/Prereader;

    invoke-static {v0}, Ldolphin/webkit/Prereader;->e(Ldolphin/webkit/Prereader;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
