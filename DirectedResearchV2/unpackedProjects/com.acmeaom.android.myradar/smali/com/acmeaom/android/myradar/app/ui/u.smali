.class public Lcom/acmeaom/android/myradar/app/ui/u;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/view/animation/Animation;

.field private final c:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/u;->a:Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/u;->b:Landroid/view/animation/Animation;

    .line 25
    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->c:Landroid/view/animation/Animation;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/ui/u;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->a:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->b:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 55
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 29
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->b:Landroid/view/animation/Animation;

    .line 30
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/acmeaom/android/myradar/app/ui/v;

    invoke-direct {v2, p0, v0, p1}, Lcom/acmeaom/android/myradar/app/ui/v;-><init>(Lcom/acmeaom/android/myradar/app/ui/u;Landroid/view/animation/Animation;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->c:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/u;->c:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    return-void
.end method
