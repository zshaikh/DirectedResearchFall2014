.class Lam/sunrise/android/calendar/ui/widgets/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NewNumberPicker.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

.field private b:Z


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V
    .locals 1

    .prologue
    .line 597
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/n;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/n;->b:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/n;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/n;->b:Z

    .line 614
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 602
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/n;->b:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/n;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;I)V

    .line 606
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/n;->b:Z

    .line 607
    return-void
.end method
