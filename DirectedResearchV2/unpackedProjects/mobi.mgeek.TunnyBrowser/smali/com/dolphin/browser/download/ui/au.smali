.class Lcom/dolphin/browser/download/ui/au;
.super Ljava/lang/Object;
.source "DownloadPathDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/download/ui/ao;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/ao;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/au;->b:Lcom/dolphin/browser/download/ui/ao;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/au;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/au;->b:Lcom/dolphin/browser/download/ui/ao;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/ao;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/au;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 296
    return-void
.end method
