.class Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;
.super Lcom/fusepowered/m2/m2l/MraidCommand;
.source "MraidCommand.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType()[I
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;->$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->values()[Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INLINE:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INTERSTITIAL:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;->$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fusepowered/m2/m2l/MraidView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 99
    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    .prologue
    .line 103
    const-string v1, "uri"

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->showVideo(Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->PLAY_VIDEO:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v3, "Video can\'t be played with null or empty URL"

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z
    .locals 2
    .parameter "placementType"

    .prologue
    .line 113
    invoke-static {}, Lcom/fusepowered/m2/m2l/MraidCommandPlayVideo;->$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/fusepowered/m2/m2l/MraidCommand;->isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z

    move-result v0

    :goto_0
    return v0

    .line 115
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
