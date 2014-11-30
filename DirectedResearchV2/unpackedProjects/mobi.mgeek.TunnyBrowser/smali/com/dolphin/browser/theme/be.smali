.class Lcom/dolphin/browser/theme/be;
.super Ljava/lang/Object;
.source "ThemeUpgradeTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/theme/bc;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/theme/be;->b:Lcom/dolphin/browser/theme/bc;

    iput-object p2, p0, Lcom/dolphin/browser/theme/be;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/theme/be;->b:Lcom/dolphin/browser/theme/bc;

    invoke-static {v0}, Lcom/dolphin/browser/theme/bc;->a(Lcom/dolphin/browser/theme/bc;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/theme/be;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 66
    iget-object v1, p0, Lcom/dolphin/browser/theme/be;->b:Lcom/dolphin/browser/theme/bc;

    invoke-static {v1}, Lcom/dolphin/browser/theme/bc;->a(Lcom/dolphin/browser/theme/bc;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 68
    :cond_0
    return-void
.end method
