.class Lam/sunrise/android/calendar/ui/widgets/calendar/b;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;IF)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/b;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/b;->a:I

    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/b;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/b;->c:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)Lam/sunrise/android/calendar/ui/widgets/calendar/d;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/b;->a:I

    int-to-float v1, v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/b;->b:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/calendar/d;->smoothScrollToPositionFromTop(III)V

    .line 336
    return-void
.end method
