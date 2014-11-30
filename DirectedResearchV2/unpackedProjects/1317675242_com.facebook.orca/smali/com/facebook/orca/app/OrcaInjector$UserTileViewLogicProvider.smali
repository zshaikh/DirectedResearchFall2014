.class Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/photos/tiles/UserTileViewLogic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/photos/tiles/UserTileViewLogic;
    .locals 6

    .prologue
    .line 1354
    new-instance v3, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;Lcom/facebook/orca/photos/tiles/DefaultTiles;Lcom/facebook/orca/config/OrcaHttpConfig;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$UserTileViewLogicProvider;->a()Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    move-result-object v0

    return-object v0
.end method
