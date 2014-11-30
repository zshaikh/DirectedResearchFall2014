.class Ldolphin/webkit/e;
.super Landroid/os/Handler;
.source "AutoCompletePopup.java"


# instance fields
.field final synthetic a:Ldolphin/webkit/d;


# direct methods
.method constructor <init>(Ldolphin/webkit/d;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Ldolphin/webkit/e;->a:Ldolphin/webkit/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Ldolphin/webkit/e;->a:Ldolphin/webkit/d;

    invoke-static {v0}, Ldolphin/webkit/d;->b(Ldolphin/webkit/d;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/e;->a:Ldolphin/webkit/d;

    invoke-static {v1}, Ldolphin/webkit/d;->a(Ldolphin/webkit/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->k(I)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
