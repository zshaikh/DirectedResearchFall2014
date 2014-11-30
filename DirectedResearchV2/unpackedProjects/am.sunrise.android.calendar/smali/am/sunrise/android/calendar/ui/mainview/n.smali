.class Lam/sunrise/android/calendar/ui/mainview/n;
.super Ljava/lang/Object;
.source "ScheduleFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/l;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/l;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->c(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(II)V

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->d(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(II)V

    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->e(Lam/sunrise/android/calendar/ui/mainview/l;)V

    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->f(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->a(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->a(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->a(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/o;

    .line 133
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getTop()I

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/l;->f(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/p;

    move-result-object v1

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/o;->getDayView()Lam/sunrise/android/calendar/ui/widgets/schedule/w;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/w;->getDay()Ljava/util/Calendar;

    move-result-object v0

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/mainview/p;->b(Ljava/util/Calendar;)V

    .line 142
    :cond_0
    return-void

    .line 130
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->c(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(I)V

    .line 119
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/n;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->d(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(I)V

    .line 120
    return-void
.end method
