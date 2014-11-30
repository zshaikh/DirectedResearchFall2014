.class Ldolphin/webkit/is;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/in;


# direct methods
.method constructor <init>(Ldolphin/webkit/in;)V
    .locals 0

    .prologue
    .line 9747
    iput-object p1, p0, Ldolphin/webkit/is;->a:Ldolphin/webkit/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 9750
    iget-object v0, p0, Ldolphin/webkit/is;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9751
    iget-object v0, p0, Ldolphin/webkit/is;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/WebViewCore;->sendMessage(III)V

    .line 9754
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/is;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9755
    return-void
.end method
