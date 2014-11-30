.class public Lam/sunrise/android/calendar/api/models/requests/EventRequest;
.super Ljava/lang/Object;
.source "EventRequest.java"


# instance fields
.field public attendees:[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public iCalUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public place:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Place;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public recurrence:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public reminders:[Lam/sunrise/android/calendar/api/models/requests/EventRequest$Reminder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public skipNotificationEmail:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public updated:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method
