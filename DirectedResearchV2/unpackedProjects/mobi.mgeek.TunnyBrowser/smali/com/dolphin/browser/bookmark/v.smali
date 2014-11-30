.class Lcom/dolphin/browser/bookmark/v;
.super Ljava/lang/Object;
.source "BookmarkEntranceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/v;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    iput-object p2, p0, Lcom/dolphin/browser/bookmark/v;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/v;->b:Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1127
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/v;->a:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1128
    return-void
.end method
