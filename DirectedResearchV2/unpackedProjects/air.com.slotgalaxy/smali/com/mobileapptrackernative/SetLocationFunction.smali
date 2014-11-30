.class public Lcom/mobileapptrackernative/SetLocationFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final NAME:Ljava/lang/String; = "setLocation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const-string v3, "MobileAppTrackerANE"

    :try_start_0
    const-string v0, "MobileAppTrackerANE"

    const-string v1, "Call setLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/mobileapptrackernative/MATExtensionContext;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v0

    iget-object v2, p1, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v2, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->setLatitude(D)V

    :cond_0
    const/4 v0, 0x1

    aget-object v0, p2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v0

    iget-object v2, p1, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v2, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->setLongitude(D)V

    :cond_1
    const/4 v0, 0x2

    aget-object v0, p2, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v0

    iget-object v2, p1, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v2, v0, v1}, Lcom/mobileapptracker/MobileAppTracker;->setAltitude(D)V

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MobileAppTrackerANE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
