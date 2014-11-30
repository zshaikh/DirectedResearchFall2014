.class public Lam/sunrise/android/calendar/api/models/datas/Calendar$Defaults;
.super Ljava/lang/Object;
.source "Calendar.java"


# instance fields
.field public isVisible:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
    .end annotation
.end field

.field public priority:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public reminders:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public timezone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
