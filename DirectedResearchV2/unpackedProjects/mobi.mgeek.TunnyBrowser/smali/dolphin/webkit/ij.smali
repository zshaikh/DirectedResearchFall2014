.class Ldolphin/webkit/ij;
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
    .line 2201
    iput-object p1, p0, Ldolphin/webkit/ij;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p2, p0, Ldolphin/webkit/ij;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2204
    iget-object v0, p0, Ldolphin/webkit/ij;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->n(Ldolphin/webkit/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Ldolphin/webkit/ij;->a:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2206
    iget-object v0, p0, Ldolphin/webkit/ij;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    .line 2208
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ij;->b:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2209
    return-void
.end method
