.class Lcom/fusepowered/m2/m2l/MraidCommandUseCustomClose;
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
    .line 195
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 196
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .prologue
    .line 200
    const-string v1, "shouldUseCustomClose"

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MraidCommandUseCustomClose;->getBooleanFromParamsForKey(Ljava/lang/String;)Z

    move-result v0

    .line 201
    .local v0, "shouldUseCustomClose":Z
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommandUseCustomClose;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getDisplayController()Lcom/fusepowered/m2/m2l/MraidDisplayController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->useCustomClose(Z)V

    .line 202
    return-void
.end method
