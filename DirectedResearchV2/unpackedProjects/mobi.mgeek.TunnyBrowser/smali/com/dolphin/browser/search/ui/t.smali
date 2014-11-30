.class Lcom/dolphin/browser/search/ui/t;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->f(Lcom/dolphin/browser/search/ui/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->g(Lcom/dolphin/browser/search/ui/c;)Landroid/widget/RelativeLayout;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f0802e5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v4, v4, v2}, Lcom/dolphin/browser/search/ui/b;->a(Landroid/content/Context;Ljava/util/List;Landroid/content/DialogInterface$OnDismissListener;Landroid/view/View;)Lcom/dolphin/browser/search/ui/z;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->h(Lcom/dolphin/browser/search/ui/c;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->h(Lcom/dolphin/browser/search/ui/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->h(Lcom/dolphin/browser/search/ui/c;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->i(Lcom/dolphin/browser/search/ui/c;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 524
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/t;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->h(Lcom/dolphin/browser/search/ui/c;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 526
    :cond_0
    return-void
.end method
