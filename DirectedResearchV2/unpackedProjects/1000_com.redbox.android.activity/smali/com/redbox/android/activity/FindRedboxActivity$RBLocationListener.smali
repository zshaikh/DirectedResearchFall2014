.class Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/FindRedboxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-boolean v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->locationUpdate:Z

    if-eqz v2, :cond_0

    .line 1039
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, "latitude":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, "longitude":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current location = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1042
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    # invokes: Lcom/redbox/android/activity/FindRedboxActivity;->loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->access$0(Lcom/redbox/android/activity/FindRedboxActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    .end local v0    # "latitude":Ljava/lang/String;
    .end local v1    # "longitude":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->mgr:Landroid/location/LocationManager;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1052
    iget-object v2, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    iget-object v2, v2, Lcom/redbox/android/activity/FindRedboxActivity;->locTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1053
    return-void

    .line 1045
    :cond_0
    const-string v2, "Location call aborted"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1021
    const-string v0, "GPS disabled"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->removeDialog(I)V

    .line 1023
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$RBLocationListener;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity;->showDialog(I)V

    .line 1025
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1029
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1033
    return-void
.end method
