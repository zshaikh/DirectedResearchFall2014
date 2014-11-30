.class Lam/sunrise/android/calendar/ui/event/edit/m;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/datetimepicker/date/e;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/m;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/date/b;III)V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/m;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 751
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/m;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 752
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/m;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 754
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/m;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->q(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 755
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/m;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->s(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 756
    invoke-virtual {p1}, Lcom/android/datetimepicker/date/b;->dismiss()V

    .line 757
    return-void
.end method
