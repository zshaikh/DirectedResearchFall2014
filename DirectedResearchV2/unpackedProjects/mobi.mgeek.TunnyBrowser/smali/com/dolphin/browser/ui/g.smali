.class Lcom/dolphin/browser/ui/g;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/AlertController;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/AlertController;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->a(Lcom/dolphin/browser/ui/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->b(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->b(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 134
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->g(Lcom/dolphin/browser/ui/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->i(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v2}, Lcom/dolphin/browser/ui/AlertController;->h(Lcom/dolphin/browser/ui/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 143
    :cond_2
    return-void

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->c(Lcom/dolphin/browser/ui/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->d(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->d(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->e(Lcom/dolphin/browser/ui/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/AlertController;->f(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/ui/g;->a:Lcom/dolphin/browser/ui/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->f(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
