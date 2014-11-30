.class Lcom/dolphin/browser/ui/launcher/n;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/be;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/be;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/n;->c:Lcom/dolphin/browser/ui/launcher/g;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/n;->a:Lcom/dolphin/browser/launcher/be;

    iput-object p3, p0, Lcom/dolphin/browser/ui/launcher/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/n;->a:Lcom/dolphin/browser/launcher/be;

    if-nez v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/n;->a:Lcom/dolphin/browser/launcher/be;

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "Dolphin Help"

    const-string v1, "Folder"

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/n;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
