.class Lcom/dolphin/browser/share/facebook/g;
.super Ljava/lang/Object;
.source "FacebookShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/u;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Z)V

    .line 365
    return-void
.end method

.method public a(Lcom/dolphin/browser/q/c/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    const-string v1, "facebook share"

    const-string v2, "getmessage"

    if-nez p1, :cond_1

    const-string v0, "failure"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0, v3}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Z)V

    .line 348
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->h(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    .line 349
    new-instance p1, Lcom/dolphin/browser/q/c/a;

    invoke-direct {p1}, Lcom/dolphin/browser/q/c/a;-><init>()V

    .line 350
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->i(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/q/c/a;->b(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->j(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/q/c/a;->a(Ljava/lang/String;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->g(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->k(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/q/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->l(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/q/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->m(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/q/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->n(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)V

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/g;->a:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0, p1}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Lcom/dolphin/browser/q/c/a;)Lcom/dolphin/browser/q/c/a;

    .line 359
    return-void

    .line 341
    :cond_1
    const-string v0, "success"

    goto :goto_0
.end method
