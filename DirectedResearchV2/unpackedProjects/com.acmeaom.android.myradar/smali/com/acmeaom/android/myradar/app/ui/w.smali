.class Lcom/acmeaom/android/myradar/app/ui/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/acmeaom/android/myradar/app/ui/v;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/ui/v;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/w;->a:Lcom/acmeaom/android/myradar/app/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/w;->a:Lcom/acmeaom/android/myradar/app/ui/v;

    iget-boolean v0, v0, Lcom/acmeaom/android/myradar/app/ui/v;->b:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/w;->a:Lcom/acmeaom/android/myradar/app/ui/v;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/ui/v;->c:Lcom/acmeaom/android/myradar/app/ui/u;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/ui/u;->a(Lcom/acmeaom/android/myradar/app/ui/u;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/w;->a:Lcom/acmeaom/android/myradar/app/ui/v;

    iget-boolean v0, v0, Lcom/acmeaom/android/myradar/app/ui/v;->b:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/w;->a:Lcom/acmeaom/android/myradar/app/ui/v;

    iget-object v0, v0, Lcom/acmeaom/android/myradar/app/ui/v;->c:Lcom/acmeaom/android/myradar/app/ui/u;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/ui/u;->a(Lcom/acmeaom/android/myradar/app/ui/u;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method
