.class Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;
.super Ljava/lang/Object;
.source "RedBoxOverlay.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/utils/RedBoxOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/utils/RedBoxOverlay;


# direct methods
.method constructor <init>(Lcom/redbox/android/utils/RedBoxOverlay;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 261
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v3, v3, Lcom/redbox/android/utils/RedBoxOverlay;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->cancel()V

    .line 262
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/redbox/android/utils/RedBoxOverlay;->locationUpdate:Z

    .line 264
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-boolean v3, v3, Lcom/redbox/android/utils/RedBoxOverlay;->locationUpdate:Z

    if-eqz v3, :cond_0

    .line 265
    const-string v3, "Showing Route"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "lat":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "lon":Ljava/lang/String;
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://maps.google.com/maps?&daddr="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v5, v5, Lcom/redbox/android/utils/RedBoxOverlay;->rblat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v5, v5, Lcom/redbox/android/utils/RedBoxOverlay;->rblong:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&saddr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/redbox/android/utils/RedBoxOverlay;->uri:Landroid/net/Uri;

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v4, v4, Lcom/redbox/android/utils/RedBoxOverlay;->uri:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v3, v3, Lcom/redbox/android/utils/RedBoxOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "lat":Ljava/lang/String;
    .end local v2    # "lon":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v3, v3, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 281
    iget-object v3, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v3, v3, Lcom/redbox/android/utils/RedBoxOverlay;->locTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 282
    return-void

    .line 278
    :cond_0
    const-string v3, "Location call aborted"

    invoke-static {p0, v3}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string v0, "GPS disabled"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/redbox/android/utils/RedBoxOverlay;->uiListener:Lcom/redbox/android/utils/RBOverlayUiListener;

    invoke-interface {v0}, Lcom/redbox/android/utils/RBOverlayUiListener;->locationsDisabled()V

    .line 248
    iget-object v0, p0, Lcom/redbox/android/utils/RedBoxOverlay$RBLocationListener;->this$0:Lcom/redbox/android/utils/RedBoxOverlay;

    iget-object v0, v0, Lcom/redbox/android/utils/RedBoxOverlay;->mgr:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 249
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 253
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 257
    return-void
.end method
