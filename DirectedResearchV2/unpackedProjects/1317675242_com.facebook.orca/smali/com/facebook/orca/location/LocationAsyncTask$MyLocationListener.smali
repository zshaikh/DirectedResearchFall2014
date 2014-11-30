.class Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;
.super Ljava/lang/Object;
.source "LocationAsyncTask.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocationAsyncTask;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/location/LocationAsyncTask;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/location/LocationAsyncTask;Lcom/facebook/orca/location/LocationAsyncTask$1;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;-><init>(Lcom/facebook/orca/location/LocationAsyncTask;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask$MyLocationListener;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-static {v0, p1}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Lcom/facebook/orca/location/LocationAsyncTask;Landroid/location/Location;)V

    .line 194
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 208
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 198
    const-string v0, "orca:LocationAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method
