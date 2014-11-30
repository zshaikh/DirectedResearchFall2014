.class Lam/sunrise/android/calendar/ui/widgets/l;
.super Ljava/lang/Object;
.source "NewNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 509
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 512
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00ff

    if-ne v0, v1, :cond_1

    .line 514
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/l;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V

    goto :goto_0
.end method
