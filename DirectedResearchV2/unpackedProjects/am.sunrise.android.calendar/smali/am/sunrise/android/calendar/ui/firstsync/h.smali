.class Lam/sunrise/android/calendar/ui/firstsync/h;
.super Ljava/lang/Object;
.source "FirstSyncActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/h;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/h;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/h;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->b(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/h;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->c(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V

    .line 52
    :cond_0
    return-void
.end method
