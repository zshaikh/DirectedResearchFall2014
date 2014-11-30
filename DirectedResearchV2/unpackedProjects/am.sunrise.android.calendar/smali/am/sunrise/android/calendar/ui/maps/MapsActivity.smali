.class public Lam/sunrise/android/calendar/ui/maps/MapsActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "MapsActivity.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

.field private b:Lcom/google/android/gms/maps/SupportMapFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->g()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)Lcom/google/android/gms/maps/SupportMapFragment;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->b:Lcom/google/android/gms/maps/SupportMapFragment;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 146
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "q"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 52
    :cond_0
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->setContentView(I)V

    .line 54
    if-eqz p1, :cond_1

    .line 55
    const-string v0, "saved_location_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 95
    :goto_1
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    const v0, 0x7f0b005d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    new-instance v0, Lam/sunrise/android/calendar/ui/maps/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/maps/a;-><init>(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/maps/b;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/maps/b;-><init>(Lam/sunrise/android/calendar/ui/maps/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.LOCATION_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 59
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->b:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 60
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->b:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->b()Lcom/google/android/gms/maps/c;

    move-result-object v0

    .line 62
    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/c;->a(Z)V

    .line 64
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    .line 66
    new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v3, v3, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v5, v5, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v6, v6, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-static {v1, v8}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 77
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()V

    .line 79
    invoke-virtual {v0, v9}, Lcom/google/android/gms/maps/c;->a(I)V

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/l;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->a(Z)V

    .line 83
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/l;->c(Z)V

    .line 85
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 86
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 87
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->b(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 88
    const v2, 0x7f02014b

    invoke-static {v2}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 89
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 90
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v3, v3, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v5, v5, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/i;

    goto/16 :goto_1

    .line 71
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->a:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v4, v4, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 v2, 0x41700000

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 123
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/maps/MapsActivity;->finish()V

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
