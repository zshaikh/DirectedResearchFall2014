.class public interface abstract Lam/sunrise/android/calendar/weather/b;
.super Ljava/lang/Object;
.source "WeatherClient.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "ll"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/ArrayResponse",
            "<",
            "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/forecast/daily"
    .end annotation
.end method
