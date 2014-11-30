.class public Lam/sunrise/android/calendar/ui/event/i;
.super Lam/sunrise/android/calendar/ui/b/n;
.source "CalendarSelectionDialog.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/event/l;

.field private b:Lam/sunrise/android/calendar/ui/event/e;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/n;-><init>()V

    .line 52
    new-instance v0, Lam/sunrise/android/calendar/ui/event/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/l;-><init>(Lam/sunrise/android/calendar/ui/event/i;Lam/sunrise/android/calendar/ui/event/j;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->a:Lam/sunrise/android/calendar/ui/event/l;

    .line 62
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v1, "am.sunrise.android.calendar.extra.FILTER_CONNECTION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "am.sunrise.android.calendar.extra.SELECTED_CALENDAR"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lam/sunrise/android/calendar/ui/event/i;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/i;-><init>()V

    const-string v2, "CalendarSelectionDialog"

    invoke-static {p0, v1, p1, v0, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/i;)Lam/sunrise/android/calendar/ui/event/e;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->b:Lam/sunrise/android/calendar/ui/event/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/n;->a(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.FILTER_CONNECTION"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->c:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.SELECTED_CALENDAR"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->d:Ljava/lang/String;

    .line 83
    :cond_0
    :goto_0
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/i;->b(I)V

    .line 84
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->c()V

    .line 86
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/event/i;->b(Z)V

    .line 88
    new-instance v0, Lam/sunrise/android/calendar/ui/event/e;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->b:Lam/sunrise/android/calendar/ui/event/e;

    .line 89
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->b:Lam/sunrise/android/calendar/ui/event/e;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/i;->a(Lse/emilsjolander/stickylistheaders/i;)V

    .line 93
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/i;->a:Lam/sunrise/android/calendar/ui/event/l;

    invoke-virtual {v0, v4, v3, v1}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 94
    return-void

    .line 78
    :cond_1
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "saved_filter_connection"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->c:Ljava/lang/String;

    .line 80
    const-string v0, "saved_selected_calendar"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/i;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lam/sunrise/android/calendar/ui/b/n;->a(Landroid/view/View;IJ)V

    .line 100
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/i;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/m;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lam/sunrise/android/calendar/ui/event/m;

    .line 104
    const v1, 0x7f0b0016

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/event/f;

    .line 106
    if-eqz v1, :cond_0

    .line 109
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/event/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "default"

    iget-object v3, v1, Lam/sunrise/android/calendar/ui/event/f;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    iget-object v2, v1, Lam/sunrise/android/calendar/ui/event/f;->h:Ljava/lang/String;

    .line 116
    :goto_0
    iget-object v3, v1, Lam/sunrise/android/calendar/ui/event/f;->d:Ljava/lang/String;

    iget-object v4, v1, Lam/sunrise/android/calendar/ui/event/f;->f:Ljava/lang/String;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/f;->e:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v1, v2}, Lam/sunrise/android/calendar/ui/event/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/n;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "saved_filter_connection"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "saved_selected_calendar"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
