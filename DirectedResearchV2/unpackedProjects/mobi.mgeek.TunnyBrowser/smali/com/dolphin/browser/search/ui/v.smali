.class Lcom/dolphin/browser/search/ui/v;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Lcom/dolphin/browser/search/p;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/c;->dismiss()V

    .line 593
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->l(Lcom/dolphin/browser/search/ui/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, v2}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Z)Z

    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->m(Lcom/dolphin/browser/search/ui/c;)V

    .line 584
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Z)Z

    .line 588
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 571
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "addressselector"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, p2}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;I)V

    .line 573
    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 555
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0, v4, p3}, Lcom/dolphin/browser/search/ui/c;->a(IZ)Z

    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a;->e()Lcom/dolphin/browser/search/w;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    sget-object v1, Lcom/dolphin/browser/search/y;->d:Lcom/dolphin/browser/search/y;

    invoke-virtual {v1}, Lcom/dolphin/browser/search/y;->ordinal()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/dolphin/browser/search/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/dolphin/browser/search/w;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    const-string v1, "search"

    const-string v2, "searchsuggestion_for_NameSpace"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v4, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/Tracker$Priority;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/v;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0, p2}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;I)V

    .line 565
    return-void
.end method
