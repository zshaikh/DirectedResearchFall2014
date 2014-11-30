.class public Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;
.super Ljava/lang/Object;
.source "WeatherForecast.java"


# instance fields
.field public afternoon:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public evening:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public morning:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;->this$0:Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
