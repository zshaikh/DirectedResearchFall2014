.class public Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence;
.super Ljava/lang/Object;
.source "EventRequest.java"


# instance fields
.field public original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public parent:Lam/sunrise/android/calendar/api/models/requests/EventRequest$Recurrence$Parent;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rules:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method
