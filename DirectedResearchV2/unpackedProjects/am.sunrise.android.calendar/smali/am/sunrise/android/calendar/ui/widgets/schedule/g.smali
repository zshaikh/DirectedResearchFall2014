.class Lam/sunrise/android/calendar/ui/widgets/schedule/g;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Z

.field final synthetic b:Lam/sunrise/android/calendar/ui/widgets/schedule/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)V
    .locals 1

    .prologue
    .line 901
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->a:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 906
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->a:Z

    if-nez v0, :cond_1

    .line 907
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->a:Z

    .line 908
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/aj;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 913
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->a:Z

    .line 914
    return v1

    .line 909
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->a:Z

    if-nez v0, :cond_0

    .line 910
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->a:Z

    .line 911
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/g;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/aj;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method
