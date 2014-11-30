.class Lcom/dolphin/browser/core/ac;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ab;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/ab;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dolphin/browser/core/ac;->a:Lcom/dolphin/browser/core/ab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/core/ac;->a:Lcom/dolphin/browser/core/ab;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/ab;->a(Landroid/content/Context;)V

    .line 67
    :cond_0
    return-void
.end method
