.class public Lam/sunrise/android/calendar/api/models/datas/Person$Image;
.super Ljava/lang/Object;
.source "Person.java"


# instance fields
.field public cover:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Cover;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/api/models/datas/Person;

.field public thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/api/models/datas/Person;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->this$0:Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method
