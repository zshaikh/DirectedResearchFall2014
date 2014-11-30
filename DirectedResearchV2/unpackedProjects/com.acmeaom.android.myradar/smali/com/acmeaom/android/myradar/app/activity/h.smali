.class Lcom/acmeaom/android/myradar/app/activity/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/activity/h;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/h;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->e(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Lcom/acmeaom/android/myradar/app/e;

    move-result-object v0

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/e;->b:Lcom/acmeaom/android/a/d/f;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/f;->getFwMapView()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/activity/h;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v1}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->i(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/activity/h;->a:Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;->j(Lcom/acmeaom/android/myradar/app/activity/MyRadarActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method
