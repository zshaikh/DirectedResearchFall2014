.class Lcom/dolphin/browser/search/ui/w;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 614
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 616
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, p1, p2, p3}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 652
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 621
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    const/16 v2, 0x42

    if-ne p2, v2, :cond_4

    .line 623
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 625
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->e(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0, v1, v1}, Lcom/dolphin/browser/search/ui/c;->a(IZ)Z

    .line 628
    :cond_2
    const-string v0, "address bar"

    const-string v2, "clickbtn"

    const-string v3, "enter"

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "url"

    .line 631
    :goto_1
    const-string v2, "address bar"

    const-string v3, "input"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/dolphin/browser/util/b/b;->d()V

    move v0, v1

    .line 633
    goto :goto_0

    .line 629
    :cond_3
    const-string v0, "keyword"

    goto :goto_1

    .line 636
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x43

    if-ne p2, v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->n(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 639
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v3}, Lcom/dolphin/browser/search/ui/c;->o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v3}, Lcom/dolphin/browser/search/ui/c;->o(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 641
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2, v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Z)Z

    move v0, v1

    .line 642
    goto/16 :goto_0

    .line 645
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2}, Lcom/dolphin/browser/search/ui/c;->p(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/w;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 647
    goto/16 :goto_0
.end method
