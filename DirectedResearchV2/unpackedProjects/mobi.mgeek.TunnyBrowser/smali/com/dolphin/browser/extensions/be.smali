.class Lcom/dolphin/browser/extensions/be;
.super Ljava/lang/Object;
.source "RemoteAddon.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/bd;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/bd;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/dolphin/browser/extensions/be;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 643
    const-string v0, "RemoteAddon"

    const-string v1, "onServiceConnected from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 645
    :try_start_0
    invoke-static {p2}, Lcom/dolphin/browser/addons/p;->a(Landroid/os/IBinder;)Lcom/dolphin/browser/addons/o;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/dolphin/browser/extensions/be;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v1, v0}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/addons/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 632
    const-string v0, "RemoteAddon"

    const-string v1, "onServiceDisconnected from %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 633
    iget-object v0, p0, Lcom/dolphin/browser/extensions/be;->a:Lcom/dolphin/browser/extensions/bd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/extensions/bd;->a(Lcom/dolphin/browser/extensions/bd;Lcom/dolphin/browser/addons/o;)V

    .line 634
    iget-object v0, p0, Lcom/dolphin/browser/extensions/be;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->j(Lcom/dolphin/browser/extensions/bd;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 635
    const-string v0, "RemoteAddon"

    const-string v1, "Reconnect %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 636
    iget-object v0, p0, Lcom/dolphin/browser/extensions/be;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->k(Lcom/dolphin/browser/extensions/bd;)I

    .line 637
    iget-object v0, p0, Lcom/dolphin/browser/extensions/be;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->l(Lcom/dolphin/browser/extensions/bd;)V

    .line 639
    :cond_0
    return-void
.end method
