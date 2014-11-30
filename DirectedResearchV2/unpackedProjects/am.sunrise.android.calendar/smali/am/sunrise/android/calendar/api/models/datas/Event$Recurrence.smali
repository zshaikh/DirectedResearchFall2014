.class public Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public original:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public parent:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence$Parent;
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
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method
