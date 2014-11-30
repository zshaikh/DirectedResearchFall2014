.class Lcom/dolphin/browser/extensions/bg;
.super Ljava/lang/Object;
.source "RemoteAddon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/bf;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/bf;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/dolphin/browser/extensions/bg;->a:Lcom/dolphin/browser/extensions/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bg;->a:Lcom/dolphin/browser/extensions/bf;

    iget-object v0, v0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/bd;->f(Lcom/dolphin/browser/extensions/bd;)Lcom/dolphin/browser/addons/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/aj;->b()V

    .line 556
    iget-object v0, p0, Lcom/dolphin/browser/extensions/bg;->a:Lcom/dolphin/browser/extensions/bf;

    iget-object v0, v0, Lcom/dolphin/browser/extensions/bf;->a:Lcom/dolphin/browser/extensions/bd;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/bd;->o()Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string v1, "addon bar"

    const-string v2, "active"

    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
