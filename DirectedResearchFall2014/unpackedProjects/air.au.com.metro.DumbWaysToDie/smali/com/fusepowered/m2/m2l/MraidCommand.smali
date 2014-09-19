.class abstract Lcom/fusepowered/m2/m2l/MraidCommand;
.super Ljava/lang/Object;
.source "MraidCommand.java"


# static fields
.field protected static final URI_KEY:Ljava/lang/String; = "uri"


# instance fields
.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mView:Lcom/fusepowered/m2/m2l/MraidView;


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
    .line 52
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/MraidCommand;->mParams:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidCommand;->mView:Lcom/fusepowered/m2/m2l/MraidView;

    .line 55
    return-void
.end method


# virtual methods
.method abstract execute()V
.end method

.method protected getBooleanFromParamsForKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 88
    const-string v0, "true"

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getFloatFromParamsForKey(Ljava/lang/String;)F
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, v3

    .line 82
    :goto_0
    return v2

    .line 80
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 82
    goto :goto_0
.end method

.method protected getIntFromParamsForKey(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, -0x1

    .line 60
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, v3

    .line 66
    :goto_0
    return v2

    .line 64
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 66
    goto :goto_0
.end method

.method protected getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected isCommandDependentOnUserClick(Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)Z
    .locals 1
    .parameter "placementType"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
