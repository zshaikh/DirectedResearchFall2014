.class Lcom/dolphin/browser/ui/fake/b;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/fake/AlertController;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/fake/AlertController;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 136
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->g(Lcom/dolphin/browser/ui/fake/AlertController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->i(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v2}, Lcom/dolphin/browser/ui/fake/AlertController;->h(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_2
    return-void

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->c(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->d(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->d(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->e(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v1}, Lcom/dolphin/browser/ui/fake/AlertController;->f(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/b;->a:Lcom/dolphin/browser/ui/fake/AlertController;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->f(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
