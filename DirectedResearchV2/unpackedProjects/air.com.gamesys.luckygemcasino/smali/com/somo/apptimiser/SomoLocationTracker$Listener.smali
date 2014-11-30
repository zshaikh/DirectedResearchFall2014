.class Lcom/somo/apptimiser/SomoLocationTracker$Listener;
.super Ljava/lang/Object;
.source "SomoLocationTracker.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoLocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/somo/apptimiser/SomoLocationTracker;


# direct methods
.method private constructor <init>(Lcom/somo/apptimiser/SomoLocationTracker;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/somo/apptimiser/SomoLocationTracker$Listener;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/somo/apptimiser/SomoLocationTracker;Lcom/somo/apptimiser/SomoLocationTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/somo/apptimiser/SomoLocationTracker;
    .param p2, "x1"    # Lcom/somo/apptimiser/SomoLocationTracker$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoLocationTracker$Listener;-><init>(Lcom/somo/apptimiser/SomoLocationTracker;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker$Listener;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    iget-object v1, p0, Lcom/somo/apptimiser/SomoLocationTracker$Listener;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    # getter for: Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/somo/apptimiser/SomoLocationTracker;->access$200(Lcom/somo/apptimiser/SomoLocationTracker;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/somo/apptimiser/SomoLocationTracker;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker$Listener;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    # setter for: Lcom/somo/apptimiser/SomoLocationTracker;->mCurrentLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/somo/apptimiser/SomoLocationTracker;->access$202(Lcom/somo/apptimiser/SomoLocationTracker;Landroid/location/Location;)Landroid/location/Location;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/somo/apptimiser/SomoLocationTracker$Listener;->this$0:Lcom/somo/apptimiser/SomoLocationTracker;

    invoke-virtual {v0}, Lcom/somo/apptimiser/SomoLocationTracker;->stop()V

    .line 175
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 187
    return-void
.end method
