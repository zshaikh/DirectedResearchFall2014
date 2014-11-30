.class Lcom/dolphin/browser/bookmark/bh;
.super Ljava/lang/Object;
.source "BookmarkMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/bookmark/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/be;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bh;->b:Lcom/dolphin/browser/bookmark/be;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/bh;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bh;->b:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/be;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 299
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bh;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 300
    return-void
.end method
