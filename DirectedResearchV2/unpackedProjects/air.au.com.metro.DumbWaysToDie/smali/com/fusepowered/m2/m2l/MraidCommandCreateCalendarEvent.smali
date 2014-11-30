.class Lcom/fusepowered/m2/m2l/MraidCommandCreateCalendarEvent;
.super Lcom/fusepowered/m2/m2l/MraidCommand;
.source "MraidCommand.java"


# direct methods
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
    .line 307
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 308
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandCreateCalendarEvent;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandCreateCalendarEvent;->mParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->createCalendarEvent(Ljava/util/Map;)V

    .line 313
    return-void
.end method

.method protected isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z
    .locals 1
    .param p1, "placementType"    # Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method
