.class Lam/sunrise/android/calendar/ui/event/add/n;
.super Ljava/lang/Object;
.source "AddEventFragment.java"

# interfaces
.implements Lcom/android/datetimepicker/time/s;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->r(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->i(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 829
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->r(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 830
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->r(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 832
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->r(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 833
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 835
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Z)V

    .line 836
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/n;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->t(Lam/sunrise/android/calendar/ui/event/add/c;)V

    .line 837
    return-void
.end method
