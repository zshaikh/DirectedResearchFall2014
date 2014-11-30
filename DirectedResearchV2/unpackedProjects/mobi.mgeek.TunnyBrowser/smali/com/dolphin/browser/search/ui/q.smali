.class Lcom/dolphin/browser/search/ui/q;
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
    .line 420
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/q;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/q;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/search/ui/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 424
    iget-object v1, p0, Lcom/dolphin/browser/search/ui/q;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->c(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/ui/AddressAutoComplete;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 425
    return-void
.end method
