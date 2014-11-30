.class Lcom/facebook/orca/images/ImageSearchActivity$2;
.super Ljava/lang/Object;
.source "ImageSearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ImageSearchActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/ImageSearchActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/orca/images/ImageSearchActivity$2;->a:Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity$2;->a:Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-static {v0}, Lcom/facebook/orca/images/ImageSearchActivity;->b(Lcom/facebook/orca/images/ImageSearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/images/ImageSearchActivity$2;->a:Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-static {v1}, Lcom/facebook/orca/images/ImageSearchActivity;->a(Lcom/facebook/orca/images/ImageSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/images/ImageSearchActivity$2;->a:Lcom/facebook/orca/images/ImageSearchActivity;

    invoke-static {v0}, Lcom/facebook/orca/images/ImageSearchActivity;->c(Lcom/facebook/orca/images/ImageSearchActivity;)V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
