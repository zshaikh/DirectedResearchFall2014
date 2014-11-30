.class Lcom/dolphin/browser/search/ui/u;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/u;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/u;->a:Lcom/dolphin/browser/search/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 540
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/u;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->j(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/u;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Lcom/dolphin/browser/extensions/ThemeManager;Z)V

    .line 542
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/u;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->k(Lcom/dolphin/browser/search/ui/c;)V

    .line 544
    :cond_0
    return-void
.end method
