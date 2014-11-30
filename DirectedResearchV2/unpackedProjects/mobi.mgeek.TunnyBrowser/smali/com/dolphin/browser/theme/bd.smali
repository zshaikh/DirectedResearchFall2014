.class Lcom/dolphin/browser/theme/bd;
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
    .line 45
    iput-object p1, p0, Lcom/dolphin/browser/theme/bd;->b:Lcom/dolphin/browser/theme/bc;

    iput-object p2, p0, Lcom/dolphin/browser/theme/bd;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/theme/bd;->b:Lcom/dolphin/browser/theme/bc;

    iget-object v1, p0, Lcom/dolphin/browser/theme/bd;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/theme/bd;->b:Lcom/dolphin/browser/theme/bc;

    iget-object v3, p0, Lcom/dolphin/browser/theme/bd;->a:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/dolphin/browser/theme/bc;->a(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/theme/bc;->a(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/dolphin/browser/theme/bd;->b:Lcom/dolphin/browser/theme/bc;

    iget-object v1, p0, Lcom/dolphin/browser/theme/bd;->a:Landroid/content/Context;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/theme/bc;->a(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;J)V

    .line 52
    return-void
.end method
