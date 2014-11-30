.class public Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "FirstSyncActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/firstsync/l;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:Lam/sunrise/android/calendar/sync/SyncWorker;

.field private c:Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

.field private d:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    .line 39
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/firstsync/k;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;Lam/sunrise/android/calendar/ui/firstsync/h;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a:Landroid/content/ServiceConnection;

    .line 46
    new-instance v0, Lam/sunrise/android/calendar/ui/firstsync/h;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/firstsync/h;-><init>(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->e:Ljava/lang/Runnable;

    .line 186
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;Lam/sunrise/android/calendar/sync/SyncWorker;)Lam/sunrise/android/calendar/sync/SyncWorker;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->b:Lam/sunrise/android/calendar/sync/SyncWorker;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->d:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/ui/firstsync/Sunrising;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->c:Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->h()V

    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Lam/sunrise/android/calendar/sync/SyncWorker;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->b:Lam/sunrise/android/calendar/sync/SyncWorker;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->i()V

    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->finish()V

    .line 155
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lam/sunrise/android/calendar/sync/SyncWorker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/SunriseApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 159
    return-void
.end method


# virtual methods
.method protected a(Lam/sunrise/android/calendar/sync/events/SyncError;)V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lam/sunrise/android/calendar/ui/firstsync/i;->a:[I

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncError;->getError()Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 129
    :pswitch_0
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/j;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;I)V

    goto :goto_0

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->b()V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncError;->getHttpCode()I

    move-result v0

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/j;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public g()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->d:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->c:Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    .line 65
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->d:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->c:Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->setOnSunrisingListener(Lam/sunrise/android/calendar/ui/firstsync/l;)V

    .line 69
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lam/sunrise/android/calendar/ui/firstsync/FirstRunActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lam/sunrise/android/calendar/sync/SyncWorker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/SunriseApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->h()V

    goto :goto_0
.end method

.method public onEventMainThread(Lam/sunrise/android/calendar/sync/events/SyncProgress;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncProgress;->getPercent()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->c:Lam/sunrise/android/calendar/ui/firstsync/Sunrising;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/firstsync/Sunrising;->b()V

    .line 115
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->d:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncProgress;->getPercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->setProgress(I)V

    .line 116
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncProgress;->getPercent()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->d:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lam/sunrise/android/calendar/sync/events/SyncStatus;)V
    .locals 3

    .prologue
    .line 122
    const-string v0, "FirstSync"

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/SyncStatus;->getStatus()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onResume()V

    .line 91
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->h()V

    .line 94
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onStart()V

    .line 84
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lam/sunrise/android/calendar/sync/SyncWorker;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/SunriseApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onStop()V

    .line 99
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/SunriseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 100
    return-void
.end method
