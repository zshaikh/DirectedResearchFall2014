.class Lcom/fusepowered/m2/m2l/MraidCommandResize;
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
    .line 229
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidCommand;-><init>(Ljava/util/Map;Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 230
    return-void
.end method


# virtual methods
.method execute()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommandResize;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->RESIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action resize."

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 235
    return-void
.end method
