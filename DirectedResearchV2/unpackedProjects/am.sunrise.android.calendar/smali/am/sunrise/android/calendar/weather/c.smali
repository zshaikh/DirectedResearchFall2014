.class public Lam/sunrise/android/calendar/weather/c;
.super Landroid/support/v4/a/a;
.source "WeatherLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<[",
        "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/location/Location;

.field private g:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lam/sunrise/android/calendar/weather/c;->a:Landroid/location/Location;

    .line 32
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, [Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/weather/c;->b([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    return-void
.end method

.method public a([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iput-object p1, p0, Lam/sunrise/android/calendar/weather/c;->g:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    .line 82
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a()[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 36
    iget-object v0, p0, Lam/sunrise/android/calendar/weather/c;->a:Landroid/location/Location;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 70
    :goto_0
    return-object v0

    .line 42
    :cond_0
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/weather/a;->a()Lam/sunrise/android/calendar/weather/b;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/weather/c;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lam/sunrise/android/calendar/weather/c;->a:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lam/sunrise/android/calendar/weather/a;->a(DD)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/weather/b;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;

    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    const-string v0, "WeatherLoader"

    const-string v1, "null response from backend"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v0, v2

    .line 70
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v1, v1, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    packed-switch v1, :pswitch_data_0

    .line 53
    const-string v1, "WeatherLoader"

    const-string v3, "Error - code=%d errorMessage=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget v6, v6, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->code:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->meta:Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/BaseResponse$Meta;->errorMessage:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 61
    instance-of v0, v1, Lretrofit/RetrofitError;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 62
    check-cast v0, Lretrofit/RetrofitError;

    .line 63
    invoke-virtual {v0}, Lretrofit/RetrofitError;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const-string v0, "WeatherLoader"

    const-string v1, "No network!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 65
    goto :goto_0

    .line 50
    :pswitch_0
    :try_start_1
    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;->data:[Ljava/lang/Object;

    check-cast v0, [Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "WeatherLoader"

    const-string v3, "Exception: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public b([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->a()[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    move-result-object v0

    return-object v0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, [Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/weather/c;->a([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/a/a;->onReset()V

    .line 112
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->onStopLoading()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/weather/c;->g:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    .line 115
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lam/sunrise/android/calendar/weather/c;->g:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lam/sunrise/android/calendar/weather/c;->g:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/weather/c;->a([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/weather/c;->g:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    if-nez v0, :cond_2

    .line 93
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->forceLoad()V

    .line 95
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lam/sunrise/android/calendar/weather/c;->d()Z

    .line 101
    return-void
.end method
