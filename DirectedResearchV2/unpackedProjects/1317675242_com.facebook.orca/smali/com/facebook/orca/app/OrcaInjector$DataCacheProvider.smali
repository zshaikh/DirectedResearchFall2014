.class Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;
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
        "Lcom/facebook/orca/cache/DataCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/cache/DataCache;
    .locals 6

    .prologue
    .line 689
    new-instance v3, Lcom/facebook/orca/cache/DataCache;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/cache/ThreadsCache;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/location/LocationCache;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/facebook/orca/cache/DataCache;-><init>(Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/location/LocationCache;Lcom/facebook/orca/cache/AppConfigCache;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$DataCacheProvider;->a()Lcom/facebook/orca/cache/DataCache;

    move-result-object v0

    return-object v0
.end method
