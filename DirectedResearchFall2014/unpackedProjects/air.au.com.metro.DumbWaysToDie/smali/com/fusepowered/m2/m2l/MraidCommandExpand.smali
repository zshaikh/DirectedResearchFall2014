.class Lcom/fusepowered/m2/m2l/MraidCommandExpand;
.super Lcom/fusepowered/m2/m2l/MraidCommand;
.source "MraidCommand.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType()[I
    .locals 3

    .prologue
    .line 160
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType:[I

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
    sput-object v0, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V
    .locals 0
    .param p2, "view"    # Lcom/fusepowered/m2/m2l/MraidView;
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
    .line 162
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 163
    return-void
.end method


# virtual methods
.method execute()V
    .locals 6

    .prologue
    .line 167
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "width":I
    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->getIntFromParamsForKey(Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, "height":I
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "url":Ljava/lang/String;
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v4

    .line 171
    .local v4, "shouldUseCustomClose":Z
    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v5

    .line 173
    .local v5, "shouldLockOrientation":Z
    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    iget v2, v0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenWidth:I

    .line 174
    :cond_0
    if-gtz v3, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    iget v3, v0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenHeight:I

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->expand(Ljava/lang/String;IIZZ)V

    .line 178
    return-void
.end method

.method protected isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z
    .locals 2
    .param p1, "placementType"    # Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .prologue
    .line 182
    invoke-static {}, Lcom/fusepowered/m2/m2l/MraidCommandExpand;->$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    invoke-super {p0, p1}, Lcom/fusepowered/m2/m2l/MraidCommand;->isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
