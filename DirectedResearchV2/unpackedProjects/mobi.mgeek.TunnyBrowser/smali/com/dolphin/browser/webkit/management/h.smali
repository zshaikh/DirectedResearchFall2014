.class Lcom/dolphin/browser/webkit/management/h;
.super Ljava/lang/Object;
.source "EngineStrategyManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/h;->c:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    iput-boolean p2, p0, Lcom/dolphin/browser/webkit/management/h;->a:Z

    iput-object p3, p0, Lcom/dolphin/browser/webkit/management/h;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/h;->a:Z

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/h;->c:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->e()V

    .line 791
    :goto_0
    return-void

    .line 778
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/webkit/management/h;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 783
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 785
    iget-object v1, p0, Lcom/dolphin/browser/webkit/management/h;->c:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-static {v1}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/webkit/management/h;->c:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-static {v2}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->b(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0363

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0
.end method
