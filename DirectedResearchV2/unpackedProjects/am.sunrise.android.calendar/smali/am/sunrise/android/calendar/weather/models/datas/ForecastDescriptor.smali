.class public Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;
.super Ljava/lang/Object;
.source "ForecastDescriptor.java"


# instance fields
.field public condition:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Condition;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hour:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Hour;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field parsedDate:Ljava/util/Calendar;

.field public temperature:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor$Temperature;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->parsedDate:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->date:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->parsedDate:Ljava/util/Calendar;

    .line 71
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->parsedDate:Ljava/util/Calendar;

    return-object v0
.end method
