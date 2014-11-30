.class Lam/sunrise/android/calendar/ui/locationpicker/d;
.super Ljava/lang/Object;
.source "LocationPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/locationpicker/b;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/b;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 123
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->c(Lam/sunrise/android/calendar/ui/locationpicker/b;)V

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->d(Lam/sunrise/android/calendar/ui/locationpicker/b;)Lam/sunrise/android/calendar/ui/locationpicker/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->d(Lam/sunrise/android/calendar/ui/locationpicker/b;)Lam/sunrise/android/calendar/ui/locationpicker/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a([Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;)V

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->c(Lam/sunrise/android/calendar/ui/locationpicker/b;)V

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->d(Lam/sunrise/android/calendar/ui/locationpicker/b;)Lam/sunrise/android/calendar/ui/locationpicker/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->d(Lam/sunrise/android/calendar/ui/locationpicker/b;)Lam/sunrise/android/calendar/ui/locationpicker/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/a;->a([Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;)V

    goto :goto_0

    .line 137
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->c(Lam/sunrise/android/calendar/ui/locationpicker/b;)V

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->f(Lam/sunrise/android/calendar/ui/locationpicker/b;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->e(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->f(Lam/sunrise/android/calendar/ui/locationpicker/b;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/d;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/locationpicker/b;->e(Lam/sunrise/android/calendar/ui/locationpicker/b;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
