.class Ldolphin/webkit/ik;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 2191
    iput-object p1, p0, Ldolphin/webkit/ik;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p2, p0, Ldolphin/webkit/ik;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2194
    iget-object v0, p0, Ldolphin/webkit/ik;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->n(Ldolphin/webkit/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Ldolphin/webkit/ik;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2196
    iget-object v0, p0, Ldolphin/webkit/ik;->b:Ldolphin/webkit/WebViewClassic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    .line 2198
    :cond_0
    return-void
.end method