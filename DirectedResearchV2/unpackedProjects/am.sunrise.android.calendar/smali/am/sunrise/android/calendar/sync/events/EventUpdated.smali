.class public Lam/sunrise/android/calendar/sync/events/EventUpdated;
.super Ljava/lang/Object;
.source "EventUpdated.java"


# instance fields
.field private mCalendarId:Ljava/lang/String;

.field private mNewEventId:Ljava/lang/String;

.field private mOldEventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/events/EventUpdated;->mCalendarId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lam/sunrise/android/calendar/sync/events/EventUpdated;->mOldEventId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lam/sunrise/android/calendar/sync/events/EventUpdated;->mNewEventId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/events/EventUpdated;->mCalendarId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/events/EventUpdated;->mNewEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getOldEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/events/EventUpdated;->mOldEventId:Ljava/lang/String;

    return-object v0
.end method
