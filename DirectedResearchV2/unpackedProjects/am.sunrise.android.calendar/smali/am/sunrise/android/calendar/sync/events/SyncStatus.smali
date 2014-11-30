.class public Lam/sunrise/android/calendar/sync/events/SyncStatus;
.super Ljava/lang/Object;
.source "SyncStatus.java"


# instance fields
.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/events/SyncStatus;->mStatus:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/events/SyncStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method
