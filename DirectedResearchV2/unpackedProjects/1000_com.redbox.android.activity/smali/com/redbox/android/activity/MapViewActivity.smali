.class public Lcom/redbox/android/activity/MapViewActivity;
.super Lcom/google/android/maps/MapActivity;
.source "MapViewActivity.java"


# instance fields
.field private Address:Ljava/lang/String;

.field private Latitude:Ljava/lang/String;

.field private Longitude:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field directions:Landroid/widget/ImageView;

.field drawable:Landroid/graphics/drawable/Drawable;

.field geoPoint:Lcom/google/android/maps/GeoPoint;

.field handler:Landroid/os/Handler;

.field itemizedOverlay:Lcom/redbox/android/utils/RedBoxOverlay;

.field mangr:Landroid/location/LocationManager;

.field mapOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field mapView:Lcom/google/android/maps/MapView;

.field markerHeight:I

.field mc:Lcom/google/android/maps/MapController;

.field overlayListener:Lcom/redbox/android/utils/RBOverlayUiListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 172
    new-instance v0, Lcom/redbox/android/activity/MapViewActivity$1;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/MapViewActivity$1;-><init>(Lcom/redbox/android/activity/MapViewActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/MapViewActivity;->overlayListener:Lcom/redbox/android/utils/RBOverlayUiListener;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/MapViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity;->Latitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/redbox/android/activity/MapViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/redbox/android/activity/MapViewActivity;->Longitude:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f03000c

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/MapViewActivity;->setContentView(I)V

    .line 59
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/MapViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/MapView;

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 60
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mapView:Lcom/google/android/maps/MapView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/redbox/android/activity/MapViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->Name:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/redbox/android/activity/MapViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ADDRESS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->Address:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/redbox/android/activity/MapViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "LATITUDE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->Latitude:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/redbox/android/activity/MapViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "LONGITUDE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->Longitude:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mc:Lcom/google/android/maps/MapController;

    .line 66
    const-string v1, "Showing Map"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mapOverlays:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/redbox/android/activity/MapViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->drawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/redbox/android/activity/MapViewActivity;->markerHeight:I

    .line 70
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/MapViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mangr:Landroid/location/LocationManager;

    .line 71
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity;->Latitude:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 72
    iget-object v3, p0, Lcom/redbox/android/activity/MapViewActivity;->Longitude:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 71
    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->geoPoint:Lcom/google/android/maps/GeoPoint;

    .line 74
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mc:Lcom/google/android/maps/MapController;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity;->geoPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 75
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mc:Lcom/google/android/maps/MapController;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 76
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->geoPoint:Lcom/google/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity;->Name:Ljava/lang/String;

    iget-object v3, p0, Lcom/redbox/android/activity/MapViewActivity;->Address:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v0, "overlayitem":Lcom/google/android/maps/OverlayItem;
    new-instance v1, Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2, p0, v0}, Lcom/redbox/android/utils/RedBoxOverlay;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/google/android/maps/OverlayItem;)V

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->itemizedOverlay:Lcom/redbox/android/utils/RedBoxOverlay;

    .line 78
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->itemizedOverlay:Lcom/redbox/android/utils/RedBoxOverlay;

    invoke-virtual {v1, v0}, Lcom/redbox/android/utils/RedBoxOverlay;->addOverlayItem(Lcom/google/android/maps/OverlayItem;)V

    .line 79
    iget-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->mapOverlays:Ljava/util/List;

    iget-object v2, p0, Lcom/redbox/android/activity/MapViewActivity;->itemizedOverlay:Lcom/redbox/android/utils/RedBoxOverlay;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/redbox/android/activity/MapViewActivity;->handler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 18

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->overlayListener:Lcom/redbox/android/utils/RBOverlayUiListener;

    move-object v3, v0

    invoke-static {v3}, Lcom/redbox/android/utils/RedBoxOverlay;->setOverlayListener(Lcom/redbox/android/utils/RBOverlayUiListener;)V

    .line 87
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v10, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/activity/MapViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    iget v14, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 90
    .local v14, "screen_height":I
    iget v15, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    .local v15, "screen_width":I
    const/4 v3, 0x1

    const/high16 v4, 0x41880000

    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/activity/MapViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 91
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v16, v0

    .line 95
    .local v16, "value":I
    const/4 v3, 0x1

    const/high16 v4, 0x42540000

    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/activity/MapViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 94
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 97
    .local v17, "value1":I
    const-string v3, "MapOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The screen width and height are:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->mc:Lcom/google/android/maps/MapController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->geoPoint:Lcom/google/android/maps/GeoPoint;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 100
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/MapViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 101
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 102
    .local v12, "layout":Landroid/view/View;
    const v3, 0x7f07005b

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 104
    .local v13, "name":Landroid/widget/TextView;
    const v3, 0x7f07005c

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 103
    check-cast v8, Landroid/widget/TextView;

    .line 105
    .local v8, "address":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->Name:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->Address:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v3, 0x7f07005d

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 107
    check-cast v9, Landroid/widget/ImageView;

    .line 109
    .local v9, "directions":Landroid/widget/ImageView;
    new-instance v3, Lcom/redbox/android/activity/MapViewActivity$2;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/MapViewActivity$2;-><init>(Lcom/redbox/android/activity/MapViewActivity;)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v2, Lcom/google/android/maps/MapView$LayoutParams;

    const/4 v3, -0x2

    .line 121
    const/4 v4, -0x2

    div-int/lit8 v5, v15, 0x2

    sub-int v5, v5, v16

    .line 122
    div-int/lit8 v6, v14, 0x3

    sub-int v6, v6, v17

    const/4 v7, 0x0

    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 123
    .local v2, "params":Lcom/google/android/maps/MapView$LayoutParams;
    invoke-virtual {v12, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->removeAllViews()V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/MapViewActivity;->mapView:Lcom/google/android/maps/MapView;

    move-object v3, v0

    invoke-virtual {v3, v12}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;)V

    .line 126
    invoke-super/range {p0 .. p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 128
    return-void
.end method
