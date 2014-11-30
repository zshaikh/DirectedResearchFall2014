.class Lcom/dolphin/browser/search/ui/f;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x21

    .line 712
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->q(Lcom/dolphin/browser/search/ui/c;)Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1, v0}, Lcom/dolphin/browser/search/ui/c;->a(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2, v1}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v2, v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;Ljava/lang/String;)Ljava/lang/String;

    .line 716
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v3, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v3}, Lcom/dolphin/browser/search/ui/c;->r(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 719
    iget-object v3, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v3}, Lcom/dolphin/browser/search/ui/c;->s(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 721
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->setSelection(I)V

    .line 723
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/f;->a:Lcom/dolphin/browser/search/ui/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/search/ui/c;->b(Lcom/dolphin/browser/search/ui/c;Z)Z

    .line 725
    :cond_0
    return-void
.end method
