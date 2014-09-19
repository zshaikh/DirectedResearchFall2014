.class Lcom/fusepowered/m2/m2l/MraidCommandStorePicture;
.super Lcom/fusepowered/m2/m2l/MraidCommand;
.source "MraidCommand.java"


# static fields
.field public static final MIME_TYPE_HEADER:Ljava/lang/String; = "Content-Type"


# direct methods
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
    .line 128
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 129
    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    .prologue
    .line 133
    const-string v1, "uri"

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MraidCommandStorePicture;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandStorePicture;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserDownloadImageAlert(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandStorePicture;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v3, "Image can\'t be stored with null or empty URL"

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 139
    const-string v1, "MoPub"

    const-string v2, "Invalid URI for Mraid Store Picture."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z
    .locals 1
    .parameter "placementType"

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method
