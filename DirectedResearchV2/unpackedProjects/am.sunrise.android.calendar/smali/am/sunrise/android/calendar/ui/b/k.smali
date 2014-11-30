.class Lam/sunrise/android/calendar/ui/b/k;
.super Ljava/lang/Object;
.source "SRInputDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/b/j;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/b/j;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/b/k;->a:Lam/sunrise/android/calendar/ui/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/k;->a:Lam/sunrise/android/calendar/ui/b/j;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/b/j;->a:Lam/sunrise/android/calendar/ui/b/i;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/b/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 42
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/b/k;->a:Lam/sunrise/android/calendar/ui/b/j;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/b/j;->a:Lam/sunrise/android/calendar/ui/b/i;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/i;->a(Lam/sunrise/android/calendar/ui/b/i;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 43
    return-void
.end method
