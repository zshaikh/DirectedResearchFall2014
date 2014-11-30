.class Lcom/dolphin/browser/vg/ui/j;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/j;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/j;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->g(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/j;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->f(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/vg/ui/j;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-static {v1}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->a(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    :cond_0
    return-void
.end method
