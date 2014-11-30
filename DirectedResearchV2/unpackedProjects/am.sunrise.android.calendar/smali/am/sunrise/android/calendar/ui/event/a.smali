.class public Lam/sunrise/android/calendar/ui/event/a;
.super Lam/sunrise/android/calendar/ui/b/b;
.source "AlertSelectionDialog.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/event/b;

.field private b:[Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/b/b;-><init>()V

    .line 58
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;[ZI)V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    const-string v1, "am.sunrise.android.calendar.extra.ENABLED_ALERTS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 48
    const-string v1, "am.sunrise.android.calendar.extra.EDITED_ALERT_INDEX"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    new-instance v1, Lam/sunrise/android/calendar/ui/event/a;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/a;-><init>()V

    const-string v2, "AlertSelectionDialog"

    invoke-static {p0, v1, p1, v0, v2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/b;->a(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0f0030

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/a;->b(I)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/a;->a(Z)V

    .line 73
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a;->c()V

    .line 75
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.ENABLED_ALERTS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a;->b:[Z

    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EDITED_ALERT_INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    .line 83
    :goto_0
    new-instance v0, Lam/sunrise/android/calendar/ui/event/b;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/event/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a;->a:Lam/sunrise/android/calendar/ui/event/b;

    .line 84
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a;->a:Lam/sunrise/android/calendar/ui/event/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a;->b:[Z

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/b;->a([Z)V

    .line 85
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a;->a:Lam/sunrise/android/calendar/ui/event/b;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/b;->a(I)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/a;->a:Lam/sunrise/android/calendar/ui/event/b;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/a;->a(Landroid/widget/ListAdapter;)V

    .line 89
    return-void

    .line 79
    :cond_0
    const-string v0, "saved_enabled_alerts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/a;->b:[Z

    .line 80
    const-string v0, "saved_edited_alert_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    goto :goto_0
.end method

.method public a(Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lam/sunrise/android/calendar/ui/b/b;->a(Landroid/view/View;IJ)V

    .line 99
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/a;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/c;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Lam/sunrise/android/calendar/ui/event/c;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a;->a:Lam/sunrise/android/calendar/ui/event/b;

    invoke-virtual {v1, p2}, Lam/sunrise/android/calendar/ui/event/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/g;

    .line 106
    invoke-virtual {v1}, Lam/sunrise/android/calendar/g;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 108
    iget v3, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 109
    iget v3, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    if-eq v2, v3, :cond_2

    .line 110
    iget v3, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    invoke-interface {v0, v3}, Lam/sunrise/android/calendar/ui/event/c;->b(I)V

    .line 114
    :cond_2
    sget-object v3, Lam/sunrise/android/calendar/g;->a:Lam/sunrise/android/calendar/g;

    if-eq v1, v3, :cond_0

    .line 115
    invoke-interface {v0, v2}, Lam/sunrise/android/calendar/ui/event/c;->a(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/b/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "saved_enabled_alerts"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/a;->b:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 64
    const-string v0, "saved_edited_alert_index"

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/a;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    return-void
.end method
