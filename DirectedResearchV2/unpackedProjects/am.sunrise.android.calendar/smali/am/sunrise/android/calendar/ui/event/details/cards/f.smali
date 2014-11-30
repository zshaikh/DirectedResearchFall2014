.class Lam/sunrise/android/calendar/ui/event/details/cards/f;
.super Ljava/lang/Object;
.source "EventDetailsCardDateTimeInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/f;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/f;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;)Lam/sunrise/android/calendar/ui/event/details/cards/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/f;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;)Lam/sunrise/android/calendar/ui/event/details/cards/g;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/g;->f()V

    .line 390
    :cond_0
    return-void
.end method
