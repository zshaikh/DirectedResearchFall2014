.class Lcom/dolphin/browser/search/ui/i;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Lcom/dolphin/browser/search/r;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/i;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 882
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/i;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/AddressAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 883
    const/4 v0, 0x0

    .line 884
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 888
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/i;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->r(Lcom/dolphin/browser/search/ui/c;)Landroid/text/style/BackgroundColorSpan;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 889
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0
.end method
