.class public Lam/sunrise/android/calendar/sync/t;
.super Landroid/os/Binder;
.source "SyncWorker.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/sync/SyncWorker;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/sync/SyncWorker;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/t;->a:Lam/sunrise/android/calendar/sync/SyncWorker;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/sync/SyncWorker;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/t;->a:Lam/sunrise/android/calendar/sync/SyncWorker;

    return-object v0
.end method
