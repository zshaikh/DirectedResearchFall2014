.class Ldolphin/webkit/ir;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/in;


# direct methods
.method constructor <init>(Ldolphin/webkit/in;)V
    .locals 0

    .prologue
    .line 9723
    iput-object p1, p0, Ldolphin/webkit/ir;->a:Ldolphin/webkit/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 9729
    iget-object v0, p0, Ldolphin/webkit/ir;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    const/16 v1, 0x7c

    long-to-int v2, p4

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    .line 9731
    iget-object v0, p0, Ldolphin/webkit/ir;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->ai(Ldolphin/webkit/WebViewClassic;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9732
    iget-object v0, p0, Ldolphin/webkit/ir;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->ai(Ldolphin/webkit/WebViewClassic;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 9733
    iget-object v0, p0, Ldolphin/webkit/ir;->a:Ldolphin/webkit/in;

    iget-object v0, v0, Ldolphin/webkit/in;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v4}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9735
    :cond_0
    return-void
.end method
