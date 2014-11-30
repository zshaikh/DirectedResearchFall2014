.class Lcom/redbox/android/activity/FindRedboxActivity$13;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 804
    .line 805
    const-string v0, "Requested Location Updates-----------------"

    .line 804
    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 808
    const-string v1, "network"

    .line 809
    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/FindRedboxActivity;->locListener:Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

    .line 807
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 810
    const-string v0, "Network listener activated"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 820
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 812
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    .line 814
    const-string v1, "gps"

    iget-object v5, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v5, v5, Lcom/redbox/android/activity/FindRedboxActivity;->locListener:Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;

    .line 813
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 815
    const-string v0, "GPS listener activated"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$13;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    goto :goto_0
.end method
