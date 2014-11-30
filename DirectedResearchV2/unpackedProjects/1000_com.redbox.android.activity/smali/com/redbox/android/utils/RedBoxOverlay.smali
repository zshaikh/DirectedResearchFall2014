.class public Lcom/redbox/android/utils/RedBoxOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "RedBoxOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;,
        Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;
    }
.end annotation


# static fields
.field static uiListener:Lcom/redbox/android/utils/RBOverlayUiListener;


# instance fields
.field handler:Landroid/os/Handler;

.field locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

.field locTimer:Ljava/util/Timer;

.field public locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

.field locationUpdate:Z

.field m:Lcom/redbox/android/activity/MapViewActivity;

.field mContext:Landroid/content/Context;

.field mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field map:Lcom/google/android/maps/MapView;

.field markerHeight:I

.field mgr:Landroid/location/LocationManager;

.field progressDialog:Landroid/app/ProgressDialog;

.field rblat:Ljava/lang/String;

.field rblong:Ljava/lang/String;

.field src:Lcom/google/android/maps/GeoPoint;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/google/android/maps/OverlayItem;)V
    .locals 2
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 90
    invoke-static {p1}, Lcom/redbox/android/utils/RedBoxOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locationUpdate:Z

    .line 63
    new-instance v0, Lcom/redbox/android/activity/MapViewActivity;

    invoke-direct {v0}, Lcom/redbox/android/activity/MapViewActivity;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->m:Lcom/redbox/android/activity/MapViewActivity;

    .line 218
    new-instance v0, Lcom/redbox/android/utils/RedBoxOverlay$1;

    invoke-direct {v0, p0}, Lcom/redbox/android/utils/RedBoxOverlay$1;-><init>(Lcom/redbox/android/utils/RedBoxOverlay;)V

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .line 91
    iput-object p2, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    .line 92
    check-cast p2, Lcom/google/android/maps/MapActivity;

    .end local p2    # "context":Landroid/content/Context;
    const v0, 0x7f070042

    invoke-virtual {p2, v0}, Lcom/google/android/maps/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->map:Lcom/google/android/maps/MapView;

    .line 93
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->markerHeight:I

    .line 94
    return-void
.end method

.method public static setOverlayListener(Lcom/redbox/android/utils/RBOverlayUiListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/redbox/android/utils/RBOverlayUiListener;

    .prologue
    .line 286
    sput-object p0, Lcom/redbox/android/utils/RedBoxOverlay;->uiListener:Lcom/redbox/android/utils/RBOverlayUiListener;

    .line 287
    return-void
.end method


# virtual methods
.method public addOverlayItem(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .param p1, "overlay"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lcom/redbox/android/utils/RedBoxOverlay;->populate()V

    .line 76
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/redbox/android/utils/RedBoxOverlay;
    check-cast p0, Lcom/google/android/maps/OverlayItem;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 100
    return-void
.end method

.method public getLocation(Landroid/location/LocationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "m"    # Landroid/location/LocationManager;
    .param p2, "redboxlat"    # Ljava/lang/String;
    .param p3, "redboxlong"    # Ljava/lang/String;
    .param p4, "j"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 162
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    .line 163
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/redbox/android/utils/RedBoxOverlay$4;

    invoke-direct {v1, p0}, Lcom/redbox/android/utils/RedBoxOverlay$4;-><init>(Lcom/redbox/android/utils/RedBoxOverlay;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 177
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 178
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 179
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading directions"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 182
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 184
    iput-object p2, p0, Lcom/redbox/android/utils/RedBoxOverlay;->rblat:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/redbox/android/utils/RedBoxOverlay;->rblong:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    .line 191
    :cond_0
    const-string v0, "GETLOCATION"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "Locations disabled"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 197
    sget-object v0, Lcom/redbox/android/utils/RedBoxOverlay;->uiListener:Lcom/redbox/android/utils/RBOverlayUiListener;

    invoke-interface {v0}, Lcom/redbox/android/utils/RBOverlayUiListener;->locationsDisabled()V

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locTimer:Ljava/util/Timer;

    .line 201
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locTimer:Ljava/util/Timer;

    new-instance v1, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;

    invoke-direct {v1, p0}, Lcom/redbox/android/utils/RedBoxOverlay$TimeOut;-><init>(Lcom/redbox/android/utils/RedBoxOverlay;)V

    const-wide/32 v5, 0x9c40

    invoke-virtual {v0, v1, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 202
    new-instance v0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    invoke-direct {v0, p0}, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;-><init>(Lcom/redbox/android/utils/RedBoxOverlay;)V

    iput-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    .line 203
    const-string v0, "Requested Location Updates-----------------"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    const-string v1, "gps"

    .line 206
    iget-object v5, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    move-object v0, p1

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 207
    const-string v0, "GPS listener activated"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 210
    iget-object v5, p0, Lcom/redbox/android/utils/RedBoxOverlay;->locListener:Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 211
    const-string v0, "Network listener activated"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 17
    .param p1, "index"    # I

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mOverlays:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/maps/OverlayItem;

    .line 105
    .local v11, "item":Lcom/google/android/maps/OverlayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->map:Lcom/google/android/maps/MapView;

    move-object v3, v0

    new-instance v4, Lcom/redbox/android/utils/RedBoxOverlay$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/utils/RedBoxOverlay$2;-><init>(Lcom/redbox/android/utils/RedBoxOverlay;)V

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->map:Lcom/google/android/maps/MapView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->map:Lcom/google/android/maps/MapView;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v14

    .line 115
    .local v14, "point":Landroid/graphics/Point;
    const/4 v3, 0x1

    const/high16 v4, 0x41880000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 116
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 114
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v15, v3

    .line 118
    .local v15, "value":I
    const/4 v3, 0x1

    const/high16 v4, 0x42900000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 119
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 117
    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v16, v0

    .line 120
    .local v16, "value1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    move-object v3, v0

    .line 121
    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 120
    check-cast v10, Landroid/view/LayoutInflater;

    .line 122
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 123
    .local v12, "layout":Landroid/view/View;
    const v3, 0x7f07005d

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 124
    .local v9, "directions":Landroid/widget/ImageView;
    const v3, 0x7f07005b

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 125
    .local v13, "name":Landroid/widget/TextView;
    const v3, 0x7f07005c

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 126
    .local v8, "address":Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v11}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "index":I
    check-cast p1, Landroid/location/LocationManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MANAGER"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mOverlays:Ljava/util/ArrayList;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/maps/OverlayItem;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/utils/RedBoxOverlay;->src:Lcom/google/android/maps/GeoPoint;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->src:Lcom/google/android/maps/GeoPoint;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/utils/RedBoxOverlay;->rblat:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->src:Lcom/google/android/maps/GeoPoint;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/utils/RedBoxOverlay;->rblong:Ljava/lang/String;

    .line 135
    new-instance v3, Lcom/redbox/android/utils/RedBoxOverlay$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/utils/RedBoxOverlay$3;-><init>(Lcom/redbox/android/utils/RedBoxOverlay;)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance v2, Lcom/google/android/maps/MapView$LayoutParams;

    const/4 v3, -0x2

    .line 147
    const/4 v4, -0x2

    iget v5, v14, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v15

    iget v6, v14, Landroid/graphics/Point;->y:I

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->markerHeight:I

    move v7, v0

    sub-int/2addr v6, v7

    sub-int v6, v6, v16

    const/4 v7, 0x0

    .line 146
    invoke-direct/range {v2 .. v7}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IIIII)V

    .line 149
    .local v2, "params":Lcom/google/android/maps/MapView$LayoutParams;
    invoke-virtual {v12, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->map:Lcom/google/android/maps/MapView;

    move-object v3, v0

    invoke-virtual {v3, v12}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;)V

    .line 151
    const/4 v3, 0x1

    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 157
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->removeAllViewsInLayout()V

    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
