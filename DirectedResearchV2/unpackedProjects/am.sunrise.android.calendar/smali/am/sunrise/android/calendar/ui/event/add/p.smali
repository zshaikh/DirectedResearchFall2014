.class Lam/sunrise/android/calendar/ui/event/add/p;
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
    .line 840
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/p;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/p;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 844
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/p;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 846
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/p;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Lam/sunrise/android/calendar/ui/event/add/c;Z)V

    .line 847
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/p;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->v(Lam/sunrise/android/calendar/ui/event/add/c;)V

    .line 848
    return-void
.end method
