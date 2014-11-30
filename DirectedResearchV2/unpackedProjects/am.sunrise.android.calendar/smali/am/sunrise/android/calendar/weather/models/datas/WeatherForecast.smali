.class public Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;
.super Ljava/lang/Object;
.source "WeatherForecast.java"


# instance fields
.field public date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public forecast:Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rain:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method
