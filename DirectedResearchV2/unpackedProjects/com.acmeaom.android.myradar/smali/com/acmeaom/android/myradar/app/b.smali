.class Lcom/acmeaom/android/myradar/app/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/a;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/a;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/b;->a:Lcom/acmeaom/android/myradar/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/b;->a:Lcom/acmeaom/android/myradar/app/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/a;->a(Lcom/acmeaom/android/myradar/app/a;)Lcom/google/ads/AdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 60
    const-string v0, "present screen"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/b;->a:Lcom/acmeaom/android/myradar/app/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/a;->b(Lcom/acmeaom/android/myradar/app/a;)Lcom/acmeaom/android/myradar/app/ui/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/ui/u;->a(Z)V

    .line 62
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/b;->a:Lcom/acmeaom/android/myradar/app/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/a;->b(Lcom/acmeaom/android/myradar/app/a;)Lcom/acmeaom/android/myradar/app/ui/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/myradar/app/ui/u;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/b;->a:Lcom/acmeaom/android/myradar/app/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/a;->a(Lcom/acmeaom/android/myradar/app/a;)Lcom/google/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 67
    const-string v0, "receive ad"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/b;->a:Lcom/acmeaom/android/myradar/app/a;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/a;->b(Lcom/acmeaom/android/myradar/app/a;)Lcom/acmeaom/android/myradar/app/ui/u;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/myradar/app/ui/u;->a(Z)V

    .line 70
    :cond_0
    return-void
.end method
