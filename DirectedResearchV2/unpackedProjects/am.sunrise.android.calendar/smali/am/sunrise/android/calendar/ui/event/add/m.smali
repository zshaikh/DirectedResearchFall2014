.class Lam/sunrise/android/calendar/ui/event/add/m;
.super Ljava/lang/Object;
.source "AddEventFragment.java"

# interfaces
.implements Lcom/android/datetimepicker/date/e;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 773
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/m;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/date/b;III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 776
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/m;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 777
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/m;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 778
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/m;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 780
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/m;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Z)V

    .line 781
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/m;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->u(Lam/sunrise/android/calendar/ui/event/add/c;)V

    .line 782
    invoke-virtual {p1}, Lcom/android/datetimepicker/date/b;->dismiss()V

    .line 783
    return-void
.end method
