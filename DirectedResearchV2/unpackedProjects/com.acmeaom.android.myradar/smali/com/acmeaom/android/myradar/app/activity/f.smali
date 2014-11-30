.class Lcom/acmeaom/android/myradar/app/activity/f;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/c;

.field final synthetic b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;Lcom/acmeaom/android/myradar/app/c;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/f;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/activity/f;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 293
    invoke-static {}, Lcom/acmeaom/android/myradar/app/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/f;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    const v1, 0x10003

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->showDialog(I)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/f;->a:Lcom/acmeaom/android/myradar/app/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/c;->a()Landroid/location/Location;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 303
    new-instance v1, Lcom/acmeaom/android/myradar/app/b/b;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/acmeaom/android/myradar/app/b/b;-><init>(DD)V

    .line 304
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/f;->b:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->e(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/acmeaom/android/myradar/app/e;

    move-result-object v0

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->getController()Lcom/acmeaom/android/a/d/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/d/c;->b(Lcom/acmeaom/android/a/d/a;)V

    goto :goto_0
.end method
