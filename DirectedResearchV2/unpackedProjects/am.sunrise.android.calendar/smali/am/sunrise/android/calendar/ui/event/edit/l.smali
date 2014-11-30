.class Lam/sunrise/android/calendar/ui/event/edit/l;
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
    .line 729
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/date/b;III)V
    .locals 3

    .prologue
    .line 732
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->o(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->i(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 734
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->o(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 735
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->o(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 736
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->o(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 738
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->o(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 739
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 741
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->q(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 742
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/l;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->r(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 743
    invoke-virtual {p1}, Lcom/android/datetimepicker/date/b;->dismiss()V

    .line 744
    return-void
.end method
