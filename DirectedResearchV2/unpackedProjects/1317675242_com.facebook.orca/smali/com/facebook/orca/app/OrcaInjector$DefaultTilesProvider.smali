.class Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;
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
        "Lcom/facebook/orca/photos/tiles/DefaultTiles;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1331
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/photos/tiles/DefaultTiles;
    .locals 4

    .prologue
    .line 1335
    new-instance v0, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/photos/tiles/DefaultTiles;-><init>(Landroid/content/Context;Lcom/facebook/orca/photos/tiles/DefaultTilesCache;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$DefaultTilesProvider;->a()Lcom/facebook/orca/photos/tiles/DefaultTiles;

    move-result-object v0

    return-object v0
.end method
