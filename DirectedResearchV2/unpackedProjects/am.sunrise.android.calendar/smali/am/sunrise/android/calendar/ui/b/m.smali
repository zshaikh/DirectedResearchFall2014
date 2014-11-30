.class public Lam/sunrise/android/calendar/ui/b/m;
.super Lam/sunrise/android/calendar/ui/b/d;
.source "SRProgressDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/d;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    .line 35
    const-string v1, "SRProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->b()I

    .line 39
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v1, "am.sunrise.android.calendar.extra.PROGRESS_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lam/sunrise/android/calendar/ui/b/m;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/b/m;-><init>()V

    const/4 v2, 0x0

    const-string v3, "SRProgressDialog"

    invoke-static {p0, v1, v2, v0, v3}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    const v0, 0x7f030048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 50
    const v0, 0x7f0b0096

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/m;->a:Landroid/widget/TextView;

    .line 51
    return-object v1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/m;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/m;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.PROGRESS_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/b/d;->onStart()V

    .line 64
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/m;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/m;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 67
    :cond_0
    return-void
.end method
