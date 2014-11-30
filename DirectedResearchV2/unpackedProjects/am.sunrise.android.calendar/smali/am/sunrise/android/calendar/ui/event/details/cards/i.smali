.class Lam/sunrise/android/calendar/ui/event/details/cards/i;
.super Ljava/lang/Object;
.source "EventDetailsCardLocation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/i;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/i;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;)Lam/sunrise/android/calendar/ui/event/details/cards/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/i;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;)Lam/sunrise/android/calendar/ui/event/details/cards/j;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/j;->e()V

    .line 153
    :cond_0
    return-void
.end method
