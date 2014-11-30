.class Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;
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
        "Lcom/facebook/orca/app/OrcaDataManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/app/OrcaDataManager;
    .locals 10

    .prologue
    .line 590
    new-instance v0, Lcom/facebook/orca/app/OrcaDataManager;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/auth/AuthenticationManager;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/images/ImageCache;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/http/OrcaHttpClient;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/cache/ThreadsCache;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {v6, v7}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    iget-object v7, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v8, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v7, v8}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v8, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v9, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v8, v9}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/prefs/UiCounters;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/app/OrcaDataManager;-><init>(Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/database/ThreadsDatabaseSupplier;Lcom/facebook/orca/cache/ThreadsCache;Lcom/facebook/orca/database/UsersDatabaseSupplier;Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/UiCounters;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaDataManagerProvider;->a()Lcom/facebook/orca/app/OrcaDataManager;

    move-result-object v0

    return-object v0
.end method
