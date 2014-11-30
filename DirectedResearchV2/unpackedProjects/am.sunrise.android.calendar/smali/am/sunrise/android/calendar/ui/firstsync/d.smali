.class Lam/sunrise/android/calendar/ui/firstsync/d;
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
    .line 239
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/d;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/d;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    new-instance v1, Lam/sunrise/android/calendar/ui/settings/bj;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/settings/bj;-><init>()V

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;Landroid/support/v4/app/Fragment;)V

    .line 244
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/d;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;I)I

    .line 246
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/d;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;->invalidateOptionsMenu()V

    .line 247
    return-void
.end method
