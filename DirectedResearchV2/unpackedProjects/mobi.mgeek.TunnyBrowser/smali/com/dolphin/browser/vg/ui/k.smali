.class Lcom/dolphin/browser/vg/ui/k;
.super Landroid/os/Handler;
.source "WifiConnectionActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    .line 157
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v1}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->a(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->c(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->finish()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v1}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->d(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->b(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->e(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V

    .line 164
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/k;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->finish()V

    goto :goto_0
.end method
