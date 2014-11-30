.class Lam/sunrise/android/calendar/ui/mainview/m;
.super Ljava/lang/Object;
.source "ScheduleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/l;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/l;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/l;->a(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getFirstVisibleDate()Ljava/util/Calendar;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/l;->b(Lam/sunrise/android/calendar/ui/mainview/l;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/l;->b(Lam/sunrise/android/calendar/ui/mainview/l;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->c(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->e()V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->d(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->e()V

    .line 92
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/l;->a(Lam/sunrise/android/calendar/ui/mainview/l;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 94
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->c(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/l;->b(Lam/sunrise/android/calendar/ui/mainview/l;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;)V

    .line 90
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->d(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/m;->a:Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/l;->b(Lam/sunrise/android/calendar/ui/mainview/l;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;)V

    goto :goto_0
.end method
