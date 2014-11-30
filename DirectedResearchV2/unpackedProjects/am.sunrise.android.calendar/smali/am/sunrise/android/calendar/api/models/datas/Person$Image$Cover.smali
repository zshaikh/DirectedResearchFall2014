.class public Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;
.super Ljava/lang/Object;
.source "Person.java"


# instance fields
.field public offsetY:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$1:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/api/models/datas/Person$Image;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;->this$1:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
