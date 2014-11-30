.class Lam/sunrise/android/calendar/ui/maps/b;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/maps/MapsActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/maps/b;->a:Lam/sunrise/android/calendar/ui/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/maps/b;->a:Lam/sunrise/android/calendar/ui/maps/MapsActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->b(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/maps/b;->a:Lam/sunrise/android/calendar/ui/maps/MapsActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->b(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->c()Landroid/location/Location;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/b;->a:Lam/sunrise/android/calendar/ui/maps/MapsActivity;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->b(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lcom/google/android/gms/maps/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v0, 0x41700000

    invoke-static {v2, v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/c;->b(Lcom/google/android/gms/maps/a;)V

    .line 117
    :cond_0
    return-void
.end method
