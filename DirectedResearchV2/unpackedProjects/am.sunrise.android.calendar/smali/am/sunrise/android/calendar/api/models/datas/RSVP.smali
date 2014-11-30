.class public Lam/sunrise/android/calendar/api/models/datas/RSVP;
.super Ljava/lang/Object;
.source "RSVP.java"


# instance fields
.field message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/datas/RSVP;->status:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lam/sunrise/android/calendar/api/models/datas/RSVP;->message:Ljava/lang/String;

    .line 22
    return-void
.end method
