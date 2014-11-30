.class public Lam/sunrise/android/calendar/sync/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lam/sunrise/android/calendar/sync/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/sync/SyncService;->a:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/sync/SyncService;->b:Lam/sunrise/android/calendar/sync/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lam/sunrise/android/calendar/sync/SyncService;->b:Lam/sunrise/android/calendar/sync/r;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/sync/r;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 21
    sget-object v1, Lam/sunrise/android/calendar/sync/SyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lam/sunrise/android/calendar/sync/SyncService;->b:Lam/sunrise/android/calendar/sync/r;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lam/sunrise/android/calendar/sync/r;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lam/sunrise/android/calendar/sync/r;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lam/sunrise/android/calendar/sync/SyncService;->b:Lam/sunrise/android/calendar/sync/r;

    .line 25
    :cond_0
    monitor-exit v1

    .line 26
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
