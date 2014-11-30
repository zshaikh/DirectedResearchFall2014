.class public Lcom/redbox/android/activity/FindRedboxActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "FindRedboxActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;,
        Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;
    }
.end annotation


# static fields
.field public static final MOVIE_DETAIL_OBJECT:Ljava/lang/String; = "moviedetail.obj"


# instance fields
.field activityTitle:Landroid/widget/TextView;

.field btnLogin:Landroid/widget/ImageView;

.field butSearch:Landroid/widget/ImageView;

.field headerView:Lcom/redbox/android/view/HeaderView;

.field input:Landroid/widget/EditText;

.field inventory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Kiosk;",
            ">;"
        }
    .end annotation
.end field

.field public kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

.field public listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

.field locListener:Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

.field public locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

.field movie:Lcom/redbox/android/model/MovieDetail;

.field movieId:I

.field movieMode:Z

.field movieName:Ljava/lang/String;

.field movieTitle:Landroid/widget/TextView;

.field nearbyKioskList:Landroid/widget/ListView;

.field nearbyKiosks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Kiosk;",
            ">;"
        }
    .end annotation
.end field

.field nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

.field noOfFavs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    .line 483
    new-instance v0, Lcom/redbox/android/activity/FindRedboxActivity$1;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/FindRedboxActivity$1;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 825
    new-instance v0, Lcom/redbox/android/activity/FindRedboxActivity$2;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/FindRedboxActivity$2;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    .line 993
    new-instance v0, Lcom/redbox/android/activity/FindRedboxActivity$3;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/FindRedboxActivity$3;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/FindRedboxActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0, p1, p2}, Lcom/redbox/android/activity/FindRedboxActivity;->loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "latitude"    # Ljava/lang/String;
    .param p2, "longitude"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string v0, "Started Find Kiosk Activity"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 518
    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$10;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$10;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    .line 517
    invoke-virtual {v0, v1, p1, p2}, Lcom/redbox/android/http/ServerCommunicationHandler;->getNearbyKiosks(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    return-void
.end method


# virtual methods
.method findgeocode()V
    .locals 3

    .prologue
    .line 867
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 868
    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$14;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$14;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    .line 963
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 867
    invoke-virtual {v0, v1, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->lookup(Lcom/redbox/android/http/ServerCommunicationListener;Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method protected getFavInventory()V
    .locals 3

    .prologue
    .line 358
    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getAllKioskIds()[I

    move-result-object v0

    .line 359
    .local v0, "kiosks":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getLocation()V

    .line 474
    :goto_0
    return-void

    .line 370
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fav kiosk IDs : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 372
    new-instance v2, Lcom/redbox/android/activity/FindRedboxActivity$9;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/FindRedboxActivity$9;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    .line 371
    invoke-virtual {v1, v2, v0}, Lcom/redbox/android/http/ServerCommunicationHandler;->getKioskInventory(Lcom/redbox/android/http/KioskInventoryCallHandler;[I)V

    goto :goto_0
.end method

.method getLocation()V
    .locals 15

    .prologue
    const-wide/32 v13, 0x493e0

    .line 707
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    invoke-virtual {v9}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v8

    .line 708
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "hasGps":Z
    const/4 v4, 0x0

    .line 709
    .local v4, "hasNetwork":Z
    const/4 v1, 0x0

    .local v1, "gps_enabled":Z
    const/4 v7, 0x0

    .line 710
    .local v7, "network_enabled":Z
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Providers : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v5, v9, :cond_1

    .line 725
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 727
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v10, Lcom/redbox/android/activity/FindRedboxActivity$11;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/FindRedboxActivity$11;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    :cond_0
    if-nez v1, :cond_4

    if-nez v7, :cond_4

    .line 740
    const-string v9, "Locations disabled"

    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v10, Lcom/redbox/android/activity/FindRedboxActivity$12;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/FindRedboxActivity$12;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    :goto_1
    return-void

    .line 713
    :cond_1
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "gps"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 714
    const/4 v3, 0x1

    .line 715
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 716
    const-string v10, "gps"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 719
    :cond_2
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "network"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 720
    const/4 v4, 0x1

    .line 721
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 722
    const-string v10, "network"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    .line 712
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 754
    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 758
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "current time "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    const/4 v6, 0x0

    .local v6, "net_loc":Landroid/location/Location;
    const/4 v2, 0x0

    .line 760
    .local v2, "gps_loc":Landroid/location/Location;
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    const-string v10, "gps"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 761
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 762
    const-string v10, "gps"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 763
    if-eqz v2, :cond_5

    .line 764
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "last location GPS : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 765
    const-string v10, "current time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 766
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 764
    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 768
    sub-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 770
    const-string v9, "GPS last location not too old , using it"

    .line 769
    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    .line 772
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    .line 771
    invoke-direct {p0, v9, v10}, Lcom/redbox/android/activity/FindRedboxActivity;->loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 776
    :cond_5
    const-string v9, "Null last location"

    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    :cond_6
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    const-string v10, "network"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 780
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 781
    const-string v10, "network"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 782
    if-eqz v6, :cond_7

    .line 783
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "last location Network provider : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 783
    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 786
    sub-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-lez v9, :cond_8

    .line 788
    const-string v9, "Network provider last location not too old , using it"

    .line 787
    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    .line 790
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    .line 789
    invoke-direct {p0, v9, v10}, Lcom/redbox/android/activity/FindRedboxActivity;->loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 794
    :cond_7
    const-string v9, "Null last location"

    invoke-static {p0, v9}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    :cond_8
    iget-object v9, p0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    new-instance v10, Lcom/redbox/android/activity/FindRedboxActivity$13;

    invoke-direct {v10, p0}, Lcom/redbox/android/activity/FindRedboxActivity$13;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 135
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    const-string v1, "moviedetail.obj"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/MovieDetail;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    .line 138
    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MOVIE_ID"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieId:I

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    .line 141
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/view/HeaderView;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    .line 143
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    if-eqz v0, :cond_3

    .line 144
    iput-boolean v11, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    .line 145
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v0}, Lcom/redbox/android/model/MovieDetail;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieName:Ljava/lang/String;

    .line 146
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieTitle:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Movie passed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :goto_0
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->activityTitle:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->activityTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "Title View Null"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->activityTitle:Landroid/widget/TextView;

    const v1, 0x7f050022

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->activityTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->listener:Lcom/redbox/android/adapter/FavouriteKioskListener;

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->setDBupdateListener(Lcom/redbox/android/adapter/FavouriteKioskListener;)V

    .line 166
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->setDisbleLocationUpdateListener(Lcom/redbox/android/adapter/DisableLocationUpdateListener;)V

    .line 167
    new-instance v0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locListener:Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

    .line 168
    const-string v0, "Started Find Kiosk Activity"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKioskList:Landroid/widget/ListView;

    .line 171
    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getAllFavKiosks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    .line 172
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    if-nez v0, :cond_1

    .line 173
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->alertBoxMsg:Ljava/lang/String;

    .line 174
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [I

    .line 179
    .local v8, "kiosks":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_4

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    .line 188
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No of Favs = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/redbox/android/adapter/KioskListAdapter;

    invoke-direct {v0, p0}, Lcom/redbox/android/adapter/KioskListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    .line 192
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$5;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$5;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    invoke-virtual {v0, v1}, Lcom/redbox/android/adapter/KioskListAdapter;->setSelectKioskListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKioskList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    const-string v0, "NearByKioskAdapter initalized"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    if-lez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyListAdapter:Lcom/redbox/android/adapter/KioskListAdapter;

    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    iget v2, p0, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/adapter/KioskListAdapter;->update(Ljava/util/List;IILjava/util/HashMap;Z)V

    .line 215
    :cond_2
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->butSearch:Landroid/widget/ImageView;

    .line 216
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->input:Landroid/widget/EditText;

    .line 217
    new-instance v9, Lcom/redbox/android/activity/FindRedboxActivity$6;

    invoke-direct {v9, p0}, Lcom/redbox/android/activity/FindRedboxActivity$6;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    .line 235
    .local v9, "mInputFilter":Landroid/text/InputFilter;
    new-array v6, v11, [Landroid/text/InputFilter;

    aput-object v9, v6, v10

    .line 236
    .local v6, "filters":[Landroid/text/InputFilter;
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->input:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 237
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->butSearch:Landroid/widget/ImageView;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$7;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$7;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {p0, v12}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 262
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f05001c

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    iput-boolean v11, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locationUpdate:Z

    .line 322
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locTimer:Ljava/util/Timer;

    .line 323
    sget-object v0, Lcom/redbox/android/utils/RuntimeCache;->KEY:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 324
    const-string v0, "No Key. Get Key"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$8;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$8;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    .line 325
    invoke-virtual {v0, v1}, Lcom/redbox/android/http/ServerCommunicationHandler;->mobileInitCall(Lcom/redbox/android/http/ServerCommunicationListener;)V

    .line 354
    :goto_2
    return-void

    .line 152
    .end local v6    # "filters":[Landroid/text/InputFilter;
    .end local v7    # "i":I
    .end local v8    # "kiosks":[I
    .end local v9    # "mInputFilter":Landroid/text/InputFilter;
    :cond_3
    const-string v0, "No Movie passed"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbox/android/utils/RBTracker;->setApplication(Landroid/app/Application;)V

    .line 154
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/redbox/android/utils/RBTracker;->trackFindRedbox(Ljava/lang/Object;)V

    .line 155
    iput-boolean v10, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    goto/16 :goto_0

    .line 180
    .restart local v7    # "i":I
    .restart local v8    # "kiosks":[I
    :cond_4
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v8, v7

    .line 185
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    aget v1, v8, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 343
    .restart local v6    # "filters":[Landroid/text/InputFilter;
    .restart local v9    # "mInputFilter":Landroid/text/InputFilter;
    :cond_5
    const-string v0, "Key exists"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locTimer:Ljava/util/Timer;

    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$TimeOut;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 346
    iget-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->movieMode:Z

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getFavInventory()V

    goto :goto_2

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/redbox/android/activity/FindRedboxActivity;->getLocation()V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onPause()V

    .line 124
    const/4 v0, 0x0

    sput-boolean v0, Lcom/redbox/android/utils/RuntimeCache;->isRunning:Z

    .line 125
    invoke-static {}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->getInstance()Lcom/redbox/android/http/AndroidNetworkConnectivityListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbox/android/http/AndroidNetworkConnectivityListener;->stopListening()V

    .line 126
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity;->locationDisableListener:Lcom/redbox/android/adapter/DisableLocationUpdateListener;

    invoke-interface {v0}, Lcom/redbox/android/adapter/DisableLocationUpdateListener;->locationUpdatesDisable()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 87
    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/redbox/android/activity/FindRedboxActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    invoke-virtual {v1}, Lcom/redbox/android/view/HeaderView;->updateButtons()V

    .line 90
    :cond_0
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 91
    .local v0, "toggle":Landroid/widget/ToggleButton;
    if-eqz v0, :cond_1

    .line 92
    new-instance v1, Lcom/redbox/android/activity/FindRedboxActivity$4;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/FindRedboxActivity$4;-><init>(Lcom/redbox/android/activity/FindRedboxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    :cond_1
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity;->kioskSelectedListener:Lcom/redbox/android/adapter/KioskSelectedListener;

    .line 117
    invoke-virtual {v1, v2}, Lcom/redbox/android/model/SelectedKioskManager;->kioskStateChangedListener(Lcom/redbox/android/adapter/KioskSelectedListener;)V

    .line 119
    return-void
.end method
