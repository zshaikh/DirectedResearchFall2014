.class Lam/sunrise/android/calendar/ui/widgets/schedule/l;
.super Lam/sunrise/android/calendar/ui/widgets/ak;
.source "ScheduleView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1045
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    .line 1046
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/widgets/ak;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1047
    invoke-static {p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->d(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->e(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/p;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/p;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->f(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->c:I

    .line 1049
    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1069
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->b:I

    add-int/2addr v1, p2

    .line 1071
    if-gez v1, :cond_0

    move v1, v0

    .line 1081
    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->setScrollY(I)V

    .line 1082
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->g(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->setRegularEventsScrollY(I)V

    .line 1084
    return v0

    .line 1074
    :cond_0
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->c:I

    if-le v1, v2, :cond_1

    .line 1075
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->c:I

    goto :goto_0

    .line 1078
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->c(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->getScrollY()I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->b:I

    .line 1054
    invoke-super {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/ak;->b(II)V

    .line 1055
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->b:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/l;->c:I

    return v0
.end method
