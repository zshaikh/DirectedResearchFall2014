.class Lam/sunrise/android/calendar/ui/widgets/calendar/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CalendarView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/calendar/d;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/d;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/e;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 735
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 736
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/e;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->b(Lam/sunrise/android/calendar/ui/widgets/calendar/d;I)I

    .line 737
    return-void
.end method
