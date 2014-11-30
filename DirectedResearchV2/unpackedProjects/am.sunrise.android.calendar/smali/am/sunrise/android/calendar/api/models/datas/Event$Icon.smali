.class public Lam/sunrise/android/calendar/api/models/datas/Event$Icon;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public baseColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public overlay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/api/models/datas/Event;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/api/models/datas/Event;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lam/sunrise/android/calendar/api/models/datas/Event$Icon;->this$0:Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
