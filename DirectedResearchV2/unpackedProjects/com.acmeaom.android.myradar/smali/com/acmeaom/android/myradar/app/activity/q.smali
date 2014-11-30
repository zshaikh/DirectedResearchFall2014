.class Lcom/acmeaom/android/myradar/app/activity/q;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/q;->a:Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/q;->a:Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/acmeaom/android/myradar/app/activity/MyRadarPreferencesActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v0, "upgrade"

    invoke-static {}, Lcom/acmeaom/android/myradar/a/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/q;->a:Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/myradar/app/activity/WeatherLayersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    return-void
.end method
