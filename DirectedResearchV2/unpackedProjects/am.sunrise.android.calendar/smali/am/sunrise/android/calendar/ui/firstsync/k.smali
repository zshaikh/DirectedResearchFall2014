.class Lam/sunrise/android/calendar/ui/firstsync/k;
.super Ljava/lang/Object;
.source "FirstSyncActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;Lam/sunrise/android/calendar/ui/firstsync/h;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/firstsync/k;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    check-cast p2, Lam/sunrise/android/calendar/sync/t;

    invoke-virtual {p2}, Lam/sunrise/android/calendar/sync/t;->a()Lam/sunrise/android/calendar/sync/SyncWorker;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;Lam/sunrise/android/calendar/sync/SyncWorker;)Lam/sunrise/android/calendar/sync/SyncWorker;

    .line 170
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->d(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/sync/SyncWorker;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/SyncWorker;->d()I

    move-result v0

    .line 171
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->b(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b()V

    .line 174
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->setProgress(I)V

    .line 175
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->e(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/k;->a:Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;Lam/sunrise/android/calendar/sync/SyncWorker;)Lam/sunrise/android/calendar/sync/SyncWorker;

    .line 183
    return-void
.end method
