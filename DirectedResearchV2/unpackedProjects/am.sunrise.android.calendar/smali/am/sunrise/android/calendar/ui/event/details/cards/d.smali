.class Lam/sunrise/android/calendar/ui/event/details/cards/d;
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
    .line 128
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/d;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/d;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)Lam/sunrise/android/calendar/ui/event/details/cards/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/d;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;)Lam/sunrise/android/calendar/ui/event/details/cards/e;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/e;->c()V

    .line 134
    :cond_0
    return-void
.end method
