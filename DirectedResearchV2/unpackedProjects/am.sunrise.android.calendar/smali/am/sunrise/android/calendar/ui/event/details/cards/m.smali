.class public Lam/sunrise/android/calendar/ui/event/details/cards/m;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "MiniMapFragment.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

.field private b:Lam/sunrise/android/calendar/ui/event/details/cards/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/m;)Lam/sunrise/android/calendar/ui/event/details/cards/j;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->b:Lam/sunrise/android/calendar/ui/event/details/cards/j;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    .line 82
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->b()Lcom/google/android/gms/maps/c;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    const-string v0, "MiniMapFragment"

    const-string v1, "updateMiniMap: GoogleMap == null"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v3, v3, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v5, v5, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v6, v6, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v1, v8}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 101
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(I)V

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/l;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->a(Z)V

    .line 107
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->b(Z)V

    .line 108
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->d(Z)V

    .line 109
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->f(Z)V

    .line 110
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->e(Z)V

    .line 111
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->g(Z)V

    .line 112
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->c(Z)V

    .line 114
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 115
    const v2, 0x7f02014b

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 116
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 117
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 118
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 119
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v3, v3, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v5, v5, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/i;

    .line 123
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/cards/n;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/n;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/f;)V

    .line 131
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/cards/o;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/o;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/g;)V

    goto/16 :goto_0

    .line 95
    :cond_1
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v2, 0x41700000

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/event/details/cards/j;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->b:Lam/sunrise/android/calendar/ui/event/details/cards/j;

    .line 56
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/event/info/LocationInfo;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 51
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->c()V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "saved_location_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 62
    const-string v0, "saved_location_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 66
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.LOCATION_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/SupportMapFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "saved_location_info"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/m;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/maps/SupportMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/m;->c()V

    .line 79
    return-void
.end method
