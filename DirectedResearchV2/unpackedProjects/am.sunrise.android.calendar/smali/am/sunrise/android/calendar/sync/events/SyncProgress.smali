.class public Lam/sunrise/android/calendar/sync/events/SyncProgress;
.super Ljava/lang/Object;
.source "SyncProgress.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lam/sunrise/android/calendar/sync/events/SyncProgress;->mPercent:I

    .line 17
    return-void
.end method


# virtual methods
.method public getPercent()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lam/sunrise/android/calendar/sync/events/SyncProgress;->mPercent:I

    return v0
.end method
