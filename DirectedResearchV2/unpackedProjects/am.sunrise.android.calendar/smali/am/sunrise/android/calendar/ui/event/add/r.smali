.class Lam/sunrise/android/calendar/ui/event/add/r;
.super Ljava/lang/Object;
.source "AddEventFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->b(Lam/sunrise/android/calendar/ui/event/add/c;)V

    .line 370
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/event/add/aa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 373
    :cond_0
    if-nez p1, :cond_1

    .line 374
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/event/add/aa;

    move-result-object v0

    invoke-interface {v0, v2}, Lam/sunrise/android/calendar/ui/event/add/aa;->a(Z)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 379
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/event/add/aa;

    move-result-object v4

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Lam/sunrise/android/calendar/ui/event/add/aa;->a(Z)V

    .line 380
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    if-nez v3, :cond_3

    :goto_2
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Z)V

    .line 382
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->e(Lam/sunrise/android/calendar/ui/event/add/c;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->d(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 383
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->e(Lam/sunrise/android/calendar/ui/event/add/c;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/r;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->d(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 379
    goto :goto_1

    :cond_3
    move v1, v2

    .line 380
    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method
