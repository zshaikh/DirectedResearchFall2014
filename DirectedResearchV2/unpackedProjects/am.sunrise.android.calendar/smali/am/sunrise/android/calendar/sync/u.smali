.class final Lam/sunrise/android/calendar/sync/u;
.super Landroid/os/Handler;
.source "SyncWorker.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/sync/SyncWorker;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/sync/SyncWorker;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/u;->a:Lam/sunrise/android/calendar/sync/SyncWorker;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lam/sunrise/android/calendar/sync/u;->a:Lam/sunrise/android/calendar/sync/SyncWorker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/sync/SyncWorker;->a(Landroid/content/Intent;)V

    .line 194
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/u;->a:Lam/sunrise/android/calendar/sync/SyncWorker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/sync/SyncWorker;->stopSelf(I)V

    .line 195
    return-void
.end method
