.class Lcom/dolphin/browser/search/ui/k;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/k;->b:Lcom/dolphin/browser/search/ui/c;

    iput-object p2, p0, Lcom/dolphin/browser/search/ui/k;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/k;->b:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->B(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/k;->b:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->B(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/k;->a:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/search/ui/x;->a(Landroid/content/Intent;)V

    .line 1019
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/k;->b:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/k;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
