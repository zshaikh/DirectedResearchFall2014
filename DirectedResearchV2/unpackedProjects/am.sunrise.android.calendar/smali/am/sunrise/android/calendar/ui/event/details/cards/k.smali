.class Lam/sunrise/android/calendar/ui/event/details/cards/k;
.super Ljava/lang/Object;
.source "EventDetailsCardRSVP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/k;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/k;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;)Lam/sunrise/android/calendar/ui/event/details/cards/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/k;->a:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a(Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;)Lam/sunrise/android/calendar/ui/event/details/cards/l;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/l;->d()V

    .line 109
    :cond_0
    return-void
.end method
