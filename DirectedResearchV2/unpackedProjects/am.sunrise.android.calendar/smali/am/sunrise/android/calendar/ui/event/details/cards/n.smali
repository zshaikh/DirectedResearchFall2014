.class Lam/sunrise/android/calendar/ui/event/details/cards/n;
.super Ljava/lang/Object;
.source "MiniMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/f;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/cards/m;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/cards/m;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/n;->a:Lam/sunrise/android/calendar/ui/event/details/cards/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/n;->a:Lam/sunrise/android/calendar/ui/event/details/cards/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a(Lam/sunrise/android/calendar/ui/event/details/cards/m;)Lam/sunrise/android/calendar/ui/event/details/cards/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/n;->a:Lam/sunrise/android/calendar/ui/event/details/cards/m;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a(Lam/sunrise/android/calendar/ui/event/details/cards/m;)Lam/sunrise/android/calendar/ui/event/details/cards/j;

    move-result-object v0

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/j;->e()V

    .line 129
    :cond_0
    return-void
.end method
