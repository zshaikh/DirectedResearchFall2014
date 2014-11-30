.class Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;
.super Ljava/lang/Object;
.source "ProgressBar.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->a:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->b:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->c:I

    return v0
.end method

.method public setValue(I)V
    .locals 1

    .prologue
    .line 74
    iput p1, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->c:I

    .line 76
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar$ValueAnimator;->a:Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;->a(Lam/sunrise/android/calendar/ui/firstsync/ProgressBar;I)V

    .line 80
    :cond_0
    return-void
.end method
