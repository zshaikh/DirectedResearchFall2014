.class Lcom/fusepowered/m2/m2l/MraidCommandGetCurrentPosition;
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
    .line 262
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 263
    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandGetCurrentPosition;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getCurrentPosition()V

    .line 268
    return-void
.end method
