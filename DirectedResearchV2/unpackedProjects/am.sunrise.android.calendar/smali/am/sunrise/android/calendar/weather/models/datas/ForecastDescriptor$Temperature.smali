.class public Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;
.super Ljava/lang/Object;
.source "ForecastDescriptor.java"


# instance fields
.field public c:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public f:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;->this$0:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
