.class public Lam/sunrise/android/calendar/sync/events/SyncError;
.super Ljava/lang/Object;
.source "SyncError.java"


# instance fields
.field private mError:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

.field private mHttpCode:I

.field private mHttpMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lam/sunrise/android/calendar/sync/events/SyncError$Error;->Unknown:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    iput-object v0, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mError:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    .line 30
    iput p1, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mHttpCode:I

    .line 31
    iput-object p2, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mHttpMessage:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Lam/sunrise/android/calendar/sync/events/SyncError$Error;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mError:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    .line 26
    return-void
.end method


# virtual methods
.method public getError()Lam/sunrise/android/calendar/sync/events/SyncError$Error;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mError:Lam/sunrise/android/calendar/sync/events/SyncError$Error;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mHttpCode:I

    return v0
.end method

.method public getHttpMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/events/SyncError;->mHttpMessage:Ljava/lang/String;

    return-object v0
.end method
