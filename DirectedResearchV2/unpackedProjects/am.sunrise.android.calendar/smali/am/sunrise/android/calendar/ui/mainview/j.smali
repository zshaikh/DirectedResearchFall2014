.class Lam/sunrise/android/calendar/ui/mainview/j;
.super Ljava/lang/Object;
.source "MainViewFragment.java"

# interfaces
.implements Landroid/support/v4/app/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/af",
        "<[",
        "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/f;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/mainview/f;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/j;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/mainview/f;Lam/sunrise/android/calendar/ui/mainview/g;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/j;-><init>(Lam/sunrise/android/calendar/ui/mainview/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/d;[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<[",
            "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
            ">;[",
            "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/j;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/f;->a(Lam/sunrise/android/calendar/ui/mainview/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setWeatherForecast([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    .line 413
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/d",
            "<[",
            "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/j;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/f;->d(Lam/sunrise/android/calendar/ui/mainview/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/j;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/f;->e(Lam/sunrise/android/calendar/ui/mainview/f;)Lcom/google/android/gms/location/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/d;->a()Landroid/location/Location;

    move-result-object v0

    .line 407
    :goto_0
    new-instance v1, Lam/sunrise/android/calendar/weather/c;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/j;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lam/sunrise/android/calendar/weather/c;-><init>(Landroid/content/Context;Landroid/location/Location;)V

    return-object v1

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/d;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p2, [Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    invoke-virtual {p0, p1, p2}, Lam/sunrise/android/calendar/ui/mainview/j;->a(Landroid/support/v4/a/d;[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/d",
            "<[",
            "Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    return-void
.end method
