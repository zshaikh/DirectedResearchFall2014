.class Lcom/facebook/orca/compose/ComposeView$3;
.super Ljava/lang/Object;
.source "ComposeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/compose/ComposeView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeView;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeView$3;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$3;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->c(Lcom/facebook/orca/compose/ComposeView;)Lcom/facebook/orca/compose/ComposeMode;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v1, :cond_1

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$3;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeView;->d(Lcom/facebook/orca/compose/ComposeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 223
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeView$3;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeView;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 225
    iget-object v1, p0, Lcom/facebook/orca/compose/ComposeView$3;->a:Lcom/facebook/orca/compose/ComposeView;

    invoke-static {v1}, Lcom/facebook/orca/compose/ComposeView;->d(Lcom/facebook/orca/compose/ComposeView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    move v0, v3

    .line 229
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
