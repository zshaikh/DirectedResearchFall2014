.class Lam/sunrise/android/calendar/ui/event/edit/p;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Lcom/android/datetimepicker/time/s;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/p;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/p;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 818
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/p;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->p(Lam/sunrise/android/calendar/ui/event/edit/c;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 820
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/p;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->q(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 821
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/p;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->t(Lam/sunrise/android/calendar/ui/event/edit/c;)V

    .line 822
    return-void
.end method
