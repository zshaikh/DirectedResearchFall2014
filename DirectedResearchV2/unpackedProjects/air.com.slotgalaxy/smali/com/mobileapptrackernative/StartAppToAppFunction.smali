.class public Lcom/mobileapptrackernative/StartAppToAppFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final NAME:Ljava/lang/String; = "startAppToAppTracking"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 7

    const/4 v5, 0x0

    const-string v3, ""

    array-length v0, p2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :try_start_0
    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_0
    const/4 v0, 0x1

    aget-object v0, p2, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const/4 v0, 0x2

    aget-object v0, p2, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    const/4 v0, 0x3

    aget-object v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_0
    const/4 v0, 0x4

    aget-object v0, p2, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v0

    move v5, v0

    :cond_1
    const-string v0, "MobileAppTrackerANE"

    const-string v6, "Call startAppToAppTracking"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/mobileapptrackernative/MATExtensionContext;

    iget-object v0, p1, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual/range {v0 .. v5}, Lcom/mobileapptracker/MobileAppTracker;->setTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MobileAppTrackerANE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v1, v3

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_0
.end method
