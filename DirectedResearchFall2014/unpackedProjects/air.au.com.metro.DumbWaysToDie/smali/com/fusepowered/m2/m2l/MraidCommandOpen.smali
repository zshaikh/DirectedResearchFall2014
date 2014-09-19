.class Lcom/fusepowered/m2/m2l/MraidCommandOpen;
.super Lcom/fusepowered/m2/m2l/MraidCommand;
.source "MraidCommand.java"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V
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
    .line 207
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 208
    return-void
.end method


# virtual methods
.method execute()V
    .locals 4

    .prologue
    .line 212
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MraidCommandOpen;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandOpen;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->OPEN:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v3, "Url can not be null."

    invoke-virtual {v1, v2, v3}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandOpen;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getBrowserController()Lcom/fusepowered/m2/m2l/MraidBrowserController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MraidBrowserController;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z
    .locals 1
    .parameter "placementType"

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method
