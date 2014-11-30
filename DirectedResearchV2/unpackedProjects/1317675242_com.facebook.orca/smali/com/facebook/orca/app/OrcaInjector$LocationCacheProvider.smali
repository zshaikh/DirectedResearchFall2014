.class Lcom/facebook/orca/app/OrcaInjector$LocationCacheProvider;
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
        "Lcom/facebook/orca/location/LocationCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$LocationCacheProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1943
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$LocationCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/LocationCache;
    .locals 1

    .prologue
    .line 1947
    new-instance v0, Lcom/facebook/orca/location/LocationCache;

    invoke-direct {v0}, Lcom/facebook/orca/location/LocationCache;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$LocationCacheProvider;->a()Lcom/facebook/orca/location/LocationCache;

    move-result-object v0

    return-object v0
.end method
