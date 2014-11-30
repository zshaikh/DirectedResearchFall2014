.class Lam/sunrise/android/calendar/ui/firstsync/c;
.super Ljava/lang/Object;
.source "FirstRunActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/c;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    const-string v1, "am.sunrise.android.calendar.extra.FIRST_RUN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    new-instance v1, Lam/sunrise/android/calendar/ui/settings/w;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/w;-><init>()V

    .line 222
    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/settings/w;->setArguments(Landroid/os/Bundle;)V

    .line 223
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/c;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Landroid/support/v4/app/Fragment;)V

    .line 225
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/c;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)I

    .line 227
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/c;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->invalidateOptionsMenu()V

    .line 228
    return-void
.end method
