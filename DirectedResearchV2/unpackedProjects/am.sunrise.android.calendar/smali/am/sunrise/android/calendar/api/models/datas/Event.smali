.class public Lam/sunrise/android/calendar/api/models/datas/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public attendees:Lam/sunrise/android/calendar/api/models/datas/Attendees;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "calendar"
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

.field public icon:Lam/sunrise/android/calendar/api/models/datas/Event$Icon;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public inviter:Lam/sunrise/android/calendar/api/models/datas/Person;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isEditable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "editable"
    .end annotation
.end field

.field public organizer:Lam/sunrise/android/calendar/api/models/datas/Person;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public place:Lam/sunrise/android/calendar/api/models/datas/Place;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public reminders:[Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public sourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public updated:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userRsvpStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method
