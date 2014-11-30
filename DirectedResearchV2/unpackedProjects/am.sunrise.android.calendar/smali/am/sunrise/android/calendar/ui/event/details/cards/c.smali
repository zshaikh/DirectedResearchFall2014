.class Lam/sunrise/android/calendar/ui/event/details/cards/c;
.super Ljava/lang/Object;
.source "EventDetailsCardAttendees.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/c;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/c;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)Lam/sunrise/android/calendar/ui/event/details/cards/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/c;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)Lam/sunrise/android/calendar/ui/event/details/cards/e;

    move-result-object v1

    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/e;->a(Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)V

    .line 109
    :cond_0
    return-void
.end method
