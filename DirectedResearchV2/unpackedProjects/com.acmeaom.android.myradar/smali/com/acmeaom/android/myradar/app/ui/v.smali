.class Lcom/acmeaom/android/myradar/app/ui/v;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Z

.field final synthetic c:Lcom/acmeaom/android/myradar/app/ui/u;


# direct methods
.method constructor <init>(Lcom/acmeaom/android/myradar/app/ui/u;Landroid/view/animation/Animation;Z)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/v;->c:Lcom/acmeaom/android/myradar/app/ui/u;

    iput-object p2, p0, Lcom/acmeaom/android/myradar/app/ui/v;->a:Landroid/view/animation/Animation;

    iput-boolean p3, p0, Lcom/acmeaom/android/myradar/app/ui/v;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/v;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/acmeaom/android/myradar/app/ui/w;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/ui/w;-><init>(Lcom/acmeaom/android/myradar/app/ui/v;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/v;->c:Lcom/acmeaom/android/myradar/app/ui/u;

    invoke-static {v0}, Lcom/acmeaom/android/myradar/app/ui/u;->a(Lcom/acmeaom/android/myradar/app/ui/u;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/v;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    return-void
.end method
