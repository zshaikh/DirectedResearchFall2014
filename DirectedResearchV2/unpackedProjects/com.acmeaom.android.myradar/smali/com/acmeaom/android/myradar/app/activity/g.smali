.class Lcom/acmeaom/android/myradar/app/activity/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/activity/g;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/g;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->f(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/acmeaom/android/myradar/app/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/a/e;->a(Landroid/app/Activity;)V

    .line 318
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/ui/n;->a(Landroid/content/Context;)V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->g(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    new-instance v1, Lcom/acmeaom/android/myradar/app/a;

    iget-object v2, p0, Lcom/acmeaom/android/myradar/app/activity/g;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v2}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->h(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/google/ads/AdView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/acmeaom/android/myradar/app/a;-><init>(Lcom/google/ads/AdView;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->a(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Lcom/acmeaom/android/myradar/app/a;)Lcom/acmeaom/android/myradar/app/a;

    .line 324
    :cond_1
    return-void
.end method
